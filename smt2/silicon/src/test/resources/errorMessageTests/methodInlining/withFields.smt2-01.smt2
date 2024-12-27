(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:50:15
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
; ---------- main ----------
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
; var a: Ref
(declare-const a@0@01 $Ref)
; [exec]
; var res: Int
(declare-const res@1@01 Int)
; [exec]
; a := new(f)
(declare-const a@2@01 $Ref)
(assert (not (= a@2@01 $Ref.null)))
(declare-const f@3@01 Int)
(assert (not (= a@2@01 a@0@01)))
; [exec]
; a.f := 5
; [exec]
; exhale acc(a.f, wildcard)
(declare-const $k@4@01 $Perm)
(assert ($Perm.isReadVar $k@4@01))
(assert (< $k@4@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@4@01)))
(assert (<= (- $Perm.Write $k@4@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@4@01)) (not (= a@2@01 $Ref.null))))
; [exec]
; res := foo(a, 4)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (- (- $Perm.Write $k@4@01) ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No)
  (< (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No))))
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
  (- (- $Perm.Write $k@4@01) ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No)
  (< (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No))))
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
  (- (- $Perm.Write $k@4@01) ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No)
  (< (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No))))
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
  (- (- $Perm.Write $k@4@01) ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No)
  (< (- $Perm.Write ($Perm.min (- $Perm.Write $k@4@01) $Perm.Write)) $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- foo ----------
(declare-const x@5@01 $Ref)
(declare-const y@6@01 Int)
(declare-const r1@7@01 Int)
(declare-const x@8@01 $Ref)
(declare-const y@9@01 Int)
(declare-const r1@10@01 Int)
(push) ; 1
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (not (= x@8@01 $Ref.null)))
(assert (= ($Snap.second $t@11@01) $Snap.unit))
; [eval] x.f == 5
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@11@01)) 5))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] r1 == y
(assert (= r1@10@01 y@9@01))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(assert (<= $Perm.No $k@13@01))
(assert (<= $k@13@01 $Perm.Write))
(assert (=> (< $Perm.No $k@13@01) (not (= x@8@01 $Ref.null))))
(assert (= ($Snap.second ($Snap.second $t@12@01)) $Snap.unit))
; [eval] x.f == r1
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@13@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@12@01))) r1@10@01))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; r1 := y
; [exec]
; x.f := r1
; [eval] r1 == y
(declare-const $k@14@01 $Perm)
(assert ($Perm.isReadVar $k@14@01))
(assert (< $k@14@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@14@01)))
(assert (<= (- $Perm.Write $k@14@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@14@01)) (not (= x@8@01 $Ref.null))))
; [eval] x.f == r1
(pop) ; 2
(pop) ; 1