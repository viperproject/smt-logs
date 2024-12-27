(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:02:54
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
(declare-sort Huh 0)
(declare-sort WellFoundedOrder<Huh> 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.HuhTo$Snap (Huh) $Snap)
(declare-fun $SortWrappers.$SnapToHuh ($Snap) Huh)
(assert (forall ((x Huh)) (!
    (= x ($SortWrappers.$SnapToHuh($SortWrappers.HuhTo$Snap x)))
    :pattern (($SortWrappers.HuhTo$Snap x))
    :qid |$Snap.$SnapToHuhTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.HuhTo$Snap($SortWrappers.$SnapToHuh x)))
    :pattern (($SortWrappers.$SnapToHuh x))
    :qid |$Snap.HuhTo$SnapToHuh|
    )))
(declare-fun $SortWrappers.WellFoundedOrder<Huh>To$Snap (WellFoundedOrder<Huh>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Huh> ($Snap) WellFoundedOrder<Huh>)
(assert (forall ((x WellFoundedOrder<Huh>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Huh>($SortWrappers.WellFoundedOrder<Huh>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Huh>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Huh>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Huh>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Huh> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Huh> x))
    :qid |$Snap.WellFoundedOrder<Huh>To$SnapToWellFoundedOrder<Huh>|
    )))
; ////////// Symbols
(declare-fun decreasing<Bool> (Huh Huh) Bool)
(declare-fun bounded<Bool> (Huh) Bool)
; Declaring symbols related to program functions (from program analysis)
(declare-fun fac ($Snap Int Huh) Int)
(declare-fun fac%limited ($Snap Int Huh) Int)
(declare-fun fac%stateless (Int Huh) Bool)
(declare-fun fac%precondition ($Snap Int Huh) Bool)
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
(assert (forall ((s@$ $Snap) (i@0@00 Int) (h@1@00 Huh)) (!
  (= (fac%limited s@$ i@0@00 h@1@00) (fac s@$ i@0@00 h@1@00))
  :pattern ((fac s@$ i@0@00 h@1@00))
  :qid |quant-u-26772|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (h@1@00 Huh)) (!
  (fac%stateless i@0@00 h@1@00)
  :pattern ((fac%limited s@$ i@0@00 h@1@00))
  :qid |quant-u-26773|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (h@1@00 Huh)) (!
  (=>
    (fac%precondition s@$ i@0@00 h@1@00)
    (=
      (fac s@$ i@0@00 h@1@00)
      (ite
        (= i@0@00 0)
        1
        (* i@0@00 (fac%limited $Snap.unit (- i@0@00 1) h@1@00)))))
  :pattern ((fac s@$ i@0@00 h@1@00))
  :qid |quant-u-26774|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (h@1@00 Huh)) (!
  (=>
    (fac%precondition s@$ i@0@00 h@1@00)
    (ite (= i@0@00 0) true (fac%precondition $Snap.unit (- i@0@00 1) h@1@00)))
  :pattern ((fac s@$ i@0@00 h@1@00))
  :qid |quant-u-26775|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- fac_termination_proof ----------
(declare-const i@0@01 Int)
(declare-const h@1@01 Huh)
(declare-const i@2@01 Int)
(declare-const h@3@01 Huh)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; [eval] i >= 0
(assert (>= i@2@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(i == 0)
; [eval] i == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= i@2@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= i@2@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@2@01 != 0 | live]
; [else-branch: 0 | i@2@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | i@2@01 != 0]
(assert (not (= i@2@01 0)))
; [exec]
; assert (decreasing(h, old(h)): Bool) && (bounded(old(h)): Bool)
; [eval] (decreasing(h, old(h)): Bool)
; [eval] old(h)
(push) ; 4
(assert (not (decreasing<Bool> h@3@01 h@3@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (decreasing(h, old(h)): Bool)
; [eval] old(h)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> h@3@01 h@3@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (decreasing(h, old(h)): Bool)
; [eval] old(h)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> h@3@01 h@3@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (decreasing(h, old(h)): Bool)
; [eval] old(h)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not (decreasing<Bool> h@3@01 h@3@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1