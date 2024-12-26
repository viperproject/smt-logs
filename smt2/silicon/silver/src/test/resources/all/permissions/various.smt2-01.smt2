(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:39:14
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
; ---------- t1 ----------
(declare-const r@0@01 $Ref)
(declare-const r@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 Int)
(assert (not (= r@1@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; t1(r)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t1b ----------
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
; t1(null)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t1c ----------
(declare-const r@3@01 $Ref)
(declare-const r@4@01 $Ref)
(push) ; 1
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; [eval] r != null
(assert (not (= r@4@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; t1(r)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t2 ----------
(declare-const r@6@01 $Ref)
(declare-const p@7@01 $Perm)
(declare-const r@8@01 $Ref)
(declare-const p@9@01 $Perm)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] p >= none
(assert (>= p@9@01 $Perm.No))
(push) ; 2
(assert (not (or (= p@9@01 $Perm.No) (< $Perm.No p@9@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No p@9@01))
(assert (<= p@9@01 $Perm.Write))
(assert (=> (< $Perm.No p@9@01) (not (= r@8@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; t2(r, none)
; [eval] p >= none
(push) ; 3
(set-option :timeout 10)
(assert (not (= (- p@9@01 ($Perm.min p@9@01 $Perm.No)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (- p@9@01 ($Perm.min p@9@01 $Perm.No))))
(assert (<= (- p@9@01 ($Perm.min p@9@01 $Perm.No)) $Perm.Write))
(assert (=>
  (< $Perm.No (- p@9@01 ($Perm.min p@9@01 $Perm.No)))
  (not (= r@8@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.No ($Perm.min p@9@01 $Perm.No)) $Perm.No)
  (< (- $Perm.No ($Perm.min p@9@01 $Perm.No)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t3 ----------
(declare-const r@11@01 $Ref)
(declare-const r@12@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(declare-const $t@14@01 Int)
(assert (<= $Perm.No $k@13@01))
(assert (<= $k@13@01 $Perm.Write))
(assert (=> (< $Perm.No $k@13@01) (not (= r@12@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; t3(r)
(declare-const $k@15@01 $Perm)
(assert ($Perm.isReadVar $k@15@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@13@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@15@01 $k@13@01))
(assert (<= $Perm.No (- $k@13@01 $k@15@01)))
(assert (<= (- $k@13@01 $k@15@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@13@01 $k@15@01)) (not (= r@12@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; t3(r)
(declare-const $k@16@01 $Perm)
(assert ($Perm.isReadVar $k@16@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (- $k@13@01 $k@15@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@16@01 (- $k@13@01 $k@15@01)))
(assert (<= $Perm.No (- (- $k@13@01 $k@15@01) $k@16@01)))
(assert (<= (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
(assert (=> (< $Perm.No (- (- $k@13@01 $k@15@01) $k@16@01)) (not (= r@12@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; t2(r, write)
; [eval] p >= none
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (-
    (- (- $k@13@01 $k@15@01) $k@16@01)
    ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
    $Perm.No)
  (<
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
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
(assert (not (=
  (-
    (- (- $k@13@01 $k@15@01) $k@16@01)
    ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
    $Perm.No)
  (<
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
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
(assert (not (=
  (-
    (- (- $k@13@01 $k@15@01) $k@16@01)
    ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
    $Perm.No)
  (<
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
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
(assert (not (=
  (-
    (- (- $k@13@01 $k@15@01) $k@16@01)
    ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
    $Perm.No)
  (<
    (- $Perm.Write ($Perm.min (- (- $k@13@01 $k@15@01) $k@16@01) $Perm.Write))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t4 ----------
(declare-const r@17@01 $Ref)
(declare-const r@18@01 $Ref)
(push) ; 1
(declare-const $t@19@01 Int)
(assert (not (= r@18@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert acc(r.f, write)
; [exec]
; assert acc(r.f, write)
; [exec]
; assert acc(r.f, write)
; [exec]
; exhale acc(r.f, write)
; [exec]
; assert perm(r.f) == none
; [eval] perm(r.f) == none
; [eval] perm(r.f)
; [exec]
; assert acc(r.f, write)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t5 ----------
(declare-const r@20@01 $Ref)
(declare-const r@21@01 $Ref)
(push) ; 1
(declare-const $t@22@01 Int)
(assert (not (= r@21@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale acc(r.f, 1 / 3)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert perm(r.f) == 2 / 3
; [eval] perm(r.f) == 2 / 3
; [eval] perm(r.f)
; [exec]
; assert acc(r.f, wildcard)
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(assert (< $k@23@01 (/ (to_real 2) (to_real 3))))
(assert (<= $Perm.No (- (/ (to_real 2) (to_real 3)) $k@23@01)))
(assert (<= (- (/ (to_real 2) (to_real 3)) $k@23@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 2) (to_real 3)) $k@23@01))
  (not (= r@21@01 $Ref.null))))
; [exec]
; assert acc(r.f, wildcard)
(declare-const $k@24@01 $Perm)
(assert ($Perm.isReadVar $k@24@01))
(assert (< $k@24@01 (/ (to_real 2) (to_real 3))))
(assert (<= $Perm.No (- (/ (to_real 2) (to_real 3)) $k@24@01)))
(assert (<= (- (/ (to_real 2) (to_real 3)) $k@24@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 2) (to_real 3)) $k@24@01))
  (not (= r@21@01 $Ref.null))))
; [exec]
; exhale acc(r.f, perm(r.f))
; [eval] perm(r.f)
; [exec]
; assert acc(r.f, wildcard)
(declare-const $k@25@01 $Perm)
(assert ($Perm.isReadVar $k@25@01))
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $k@26@01 $Perm)
(assert ($Perm.isReadVar $k@26@01))
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- t6 ----------
(declare-const r@27@01 $Ref)
(declare-const r@28@01 $Ref)
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
; assert none == none
; [eval] none == none
; [exec]
; assert none != write
; [eval] none != write
(pop) ; 2
(pop) ; 1
; ---------- t7 ----------
(declare-const r@29@01 $Ref)
(declare-const r@30@01 $Ref)
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
; assert 1 / 3 == (2 - 1) / 3
; [eval] 1 / 3 == (2 - 1) / 3
; [eval] 2 - 1
; [exec]
; assert write > 1 / 10000
; [eval] write > 1 / 10000
; [exec]
; assert write < 1 / 10000
; [eval] write < 1 / 10000
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] write < 1 / 10000
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] write < 1 / 10000
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] write < 1 / 10000
(set-option :timeout 0)
(push) ; 3
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1