(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:35:58
; Silicon.version: 1.1-SNAPSHOT (457c6eca@(detached))
; Input file: <unknown>
; Verifier id: 00
; ------------------------------------------------------------
; Begin preamble
; ////////// Static preamble
; 
; ; /z3config.smt2
(set-option :print-success true) ; Boogie: false
(set-option :global-decls true) ; Necessary for push pop mode
(set-option :auto_config false)
(set-option :smt.case_split 3)
(set-option :smt.delay_units true)
(set-option :type_check true)
(set-option :smt.mbqi false)
(set-option :pp.bv_literals false)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.arith.solver 2)
(set-option :model.v2 true)
(set-option :smt.qi.max_multi_patterns 1000)
; 
; ; /preamble.smt2
(declare-datatypes (($Snap 0)) ((
    ($Snap.unit)
    ($Snap.combine ($Snap.first $Snap) ($Snap.second $Snap)))))
(declare-sort $Ref 0)
(declare-const $Ref.null $Ref)
(declare-sort $FPM 0)
(declare-sort $PPM 0)
(define-sort $Perm () Real)
(define-const $Perm.Write $Perm 1.0)
(define-const $Perm.No $Perm 0.0)
(define-fun $Perm.isValidVar ((p $Perm)) Bool
	(<= $Perm.No p))
(define-fun $Perm.isReadVar ((p $Perm)) Bool
    (and ($Perm.isValidVar p)
         (not (= p $Perm.No))))
(define-fun $Perm.min ((p1 $Perm) (p2 $Perm)) Real
    (ite (<= p1 p2) p1 p2))
(define-fun $Math.min ((a Int) (b Int)) Int
    (ite (<= a b) a b))
(define-fun $Math.clip ((a Int)) Int
    (ite (< a 0) 0 a))
; ////////// Sorts
; ////////// Sort wrappers
; Declaring additional sort wrappers
(declare-fun $SortWrappers.IntTo$Snap (Int) $Snap)
(declare-fun $SortWrappers.$SnapToInt ($Snap) Int)
(assert (forall ((x Int)) (!
    (= x ($SortWrappers.$SnapToInt($SortWrappers.IntTo$Snap x)))
    :pattern (($SortWrappers.IntTo$Snap x))
    :qid |$Snap.$SnapToIntTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntTo$Snap($SortWrappers.$SnapToInt x)))
    :pattern (($SortWrappers.$SnapToInt x))
    :qid |$Snap.IntTo$SnapToInt|
    )))
(declare-fun $SortWrappers.BoolTo$Snap (Bool) $Snap)
(declare-fun $SortWrappers.$SnapToBool ($Snap) Bool)
(assert (forall ((x Bool)) (!
    (= x ($SortWrappers.$SnapToBool($SortWrappers.BoolTo$Snap x)))
    :pattern (($SortWrappers.BoolTo$Snap x))
    :qid |$Snap.$SnapToBoolTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BoolTo$Snap($SortWrappers.$SnapToBool x)))
    :pattern (($SortWrappers.$SnapToBool x))
    :qid |$Snap.BoolTo$SnapToBool|
    )))
(declare-fun $SortWrappers.$RefTo$Snap ($Ref) $Snap)
(declare-fun $SortWrappers.$SnapTo$Ref ($Snap) $Ref)
(assert (forall ((x $Ref)) (!
    (= x ($SortWrappers.$SnapTo$Ref($SortWrappers.$RefTo$Snap x)))
    :pattern (($SortWrappers.$RefTo$Snap x))
    :qid |$Snap.$SnapTo$RefTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$RefTo$Snap($SortWrappers.$SnapTo$Ref x)))
    :pattern (($SortWrappers.$SnapTo$Ref x))
    :qid |$Snap.$RefTo$SnapTo$Ref|
    )))
(declare-fun $SortWrappers.$PermTo$Snap ($Perm) $Snap)
(declare-fun $SortWrappers.$SnapTo$Perm ($Snap) $Perm)
(assert (forall ((x $Perm)) (!
    (= x ($SortWrappers.$SnapTo$Perm($SortWrappers.$PermTo$Snap x)))
    :pattern (($SortWrappers.$PermTo$Snap x))
    :qid |$Snap.$SnapTo$PermTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PermTo$Snap($SortWrappers.$SnapTo$Perm x)))
    :pattern (($SortWrappers.$SnapTo$Perm x))
    :qid |$Snap.$PermTo$SnapTo$Perm|
    )))
; ////////// Symbols
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun usize%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test ----------
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var _1: Ref
(declare-const _1@0@01 $Ref)
; [exec]
; var _preserve: Ref
(declare-const _preserve@1@01 $Ref)
; [exec]
; var read: Perm
(declare-const read@2@01 $Perm)
; [exec]
; read := 1 / 8
(declare-const read@3@01 $Perm)
(assert (= read@3@01 (/ (to_real 1) (to_real 8))))
; [exec]
; inhale acc(usize(_preserve), write - read)
; [eval] write - read
(push) ; 3
(assert (not (or
  (= (- $Perm.Write read@3@01) $Perm.No)
  (< $Perm.No (- $Perm.Write read@3@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@4@01 Int)
(assert (<= $Perm.No (- $Perm.Write read@3@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_1.val_ref, read) && acc(usize(_1.val_ref), read)
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 ($Snap.combine ($Snap.first $t@5@01) ($Snap.second $t@5@01))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or (= read@3@01 $Perm.No) (< $Perm.No read@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No read@3@01))
(assert (<= read@3@01 $Perm.Write))
(assert (=> (< $Perm.No read@3@01) (not (= _1@0@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or (= read@3@01 $Perm.No) (< $Perm.No read@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= _preserve@1@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale _preserve == _1.val_ref
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
; [eval] _preserve == _1.val_ref
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= _preserve@1@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert acc(usize(_1.val_ref), write)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (- read@3@01 ($Perm.min read@3@01 $Perm.Write)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write ($Perm.min read@3@01 $Perm.Write)) $Perm.No)
  (< (- $Perm.Write ($Perm.min read@3@01 $Perm.Write)) $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) _preserve@1@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@7@01 $Snap)
(assert (and
  (=> (< $Perm.No read@3@01) (= $t@7@01 ($Snap.second $t@5@01)))
  (=>
    (< $Perm.No (- $Perm.Write read@3@01))
    (= $t@7@01 ($SortWrappers.IntTo$Snap $t@4@01)))))
; [exec]
; inhale 5 < (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] 5 < (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
; [eval] (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= read@3@01 $Perm.No) (< $Perm.No read@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (usize%trigger ($Snap.second $t@5@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01))))
(assert (=>
  (< $Perm.No read@3@01)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert (and
  (usize%trigger ($Snap.second $t@5@01) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)))
  (=>
    (< $Perm.No read@3@01)
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $Ref.null)))))
(assert (< 5 ($SortWrappers.$SnapToInt ($Snap.second $t@5@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 5 < (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
; [eval] 5 < (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
; [eval] (unfolding acc(usize(_1.val_ref), read) in _1.val_ref.val_int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= read@3@01 $Perm.No) (< $Perm.No read@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
; [exec]
; exhale acc(usize(_1.val_ref), 2 / 8)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (- read@3@01 ($Perm.min read@3@01 (/ (to_real 1) (to_real 4)))) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (/ (to_real 1) (to_real 4))
      ($Perm.min read@3@01 (/ (to_real 1) (to_real 4))))
    $Perm.No)
  (<
    (-
      (/ (to_real 1) (to_real 4))
      ($Perm.min read@3@01 (/ (to_real 1) (to_real 4))))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) _preserve@1@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@9@01 $Snap)
(assert (and
  (=> (< $Perm.No read@3@01) (= $t@9@01 ($Snap.second $t@5@01)))
  (=>
    (< $Perm.No (- $Perm.Write read@3@01))
    (= $t@9@01 ($SortWrappers.IntTo$Snap $t@4@01)))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert 5 < (unfolding acc(usize(_1.val_ref), 3 / 8) in _1.val_ref.val_int)
; [eval] 5 < (unfolding acc(usize(_1.val_ref), 3 / 8) in _1.val_ref.val_int)
; [eval] (unfolding acc(usize(_1.val_ref), 3 / 8) in _1.val_ref.val_int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (usize%trigger $t@9@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01))))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $Ref.null)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert (and
  (usize%trigger $t@9@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)))
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@01)) $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (< 5 ($SortWrappers.$SnapToInt $t@9@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< 5 ($SortWrappers.$SnapToInt $t@9@01)))
; [exec]
; assert acc(usize(_1.val_ref), 6 / 8)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No read@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
