(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:31:09
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
(declare-fun get ($Snap $Ref $Perm) Int)
(declare-fun get%limited ($Snap $Ref $Perm) Int)
(declare-fun get%stateless ($Ref $Perm) Bool)
(declare-fun get%precondition ($Snap $Ref $Perm) Bool)
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
(assert (forall ((s@$ $Snap) (self@0@00 $Ref) (p@1@00 $Perm)) (!
  (= (get%limited s@$ self@0@00 p@1@00) (get s@$ self@0@00 p@1@00))
  :pattern ((get s@$ self@0@00 p@1@00))
  :qid |quant-u-5141|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref) (p@1@00 $Perm)) (!
  (get%stateless self@0@00 p@1@00)
  :pattern ((get%limited s@$ self@0@00 p@1@00))
  :qid |quant-u-5142|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_fields ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const x@2@01 $Ref)
(declare-const y@3@01 $Ref)
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
; inhale acc(y.val, 1 / 2)
(declare-const $t@4@01 Int)
(assert (not (= y@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(x.val, 1 / 2)
(declare-const $t@5@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@3@01 x@2@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= x@2@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale y == x
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 $Snap.unit))
; [eval] y == x
(assert (= y@3@01 x@2@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 5 < y.val
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 $Snap.unit))
; [eval] 5 < y.val
(assert (< 5 $t@4@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert 5 < x.val
; [eval] 5 < x.val
(set-option :timeout 0)
(push) ; 3
(assert (not (< 5 $t@5@01)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= $t@5@01 $t@4@01))
; [eval] 5 < x.val
(set-option :timeout 0)
(push) ; 3
(assert (not (< 5 $t@5@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< 5 $t@5@01))
; [exec]
; exhale acc(y.val, 2 / 3)
(push) ; 3
(assert (not false))
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
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
; assert 5 < y.val
; [eval] 5 < y.val
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert 5 < x.val
; [eval] 5 < x.val
(pop) ; 2
(pop) ; 1
; ---------- test_fields2 ----------
(declare-const x@8@01 $Ref)
(declare-const y@9@01 $Ref)
(declare-const z@10@01 $Ref)
(declare-const x@11@01 $Ref)
(declare-const y@12@01 $Ref)
(declare-const z@13@01 $Ref)
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
; inhale acc(z.val, 1 / 3)
(declare-const $t@14@01 Int)
(assert (not (= z@13@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(y.val, 1 / 3)
(declare-const $t@15@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= z@13@01 y@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@12@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(x.val, 1 / 3)
(declare-const $t@16@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= z@13@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= x@11@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale x == y
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; [eval] x == y
(assert (= x@11@01 y@12@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 5 < y.val
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; [eval] 5 < y.val
(assert (< 5 $t@15@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale y == z
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] y == z
(assert (= y@12@01 z@13@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; exhale acc(x.val, 1 / 3)
; [exec]
; assert 5 < z.val
; [eval] 5 < z.val
(set-option :timeout 0)
(push) ; 3
(assert (not (< 5 $t@14@01)))
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
(assert (= $t@15@01 $t@14@01))
; [eval] 5 < z.val
(pop) ; 2
(pop) ; 1
; ---------- test_predicates ----------
(declare-const x@20@01 $Ref)
(declare-const y@21@01 $Ref)
(declare-const x@22@01 $Ref)
(declare-const y@23@01 $Ref)
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
; inhale acc(usize(y), 1 / 2)
(declare-const $t@24@01 Int)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(usize(x), 1 / 2)
(declare-const $t@25@01 Int)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@23@01 x@22@01)))
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
; inhale y == x
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; [eval] y == x
(assert (= y@23@01 x@22@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale 5 < get(y, 1 / 100)
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] 5 < get(y, 1 / 100)
; [eval] get(y, 1 / 100)
(set-option :timeout 0)
(push) ; 3
; [eval] none < p
(assert (get%precondition ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@24@01)) y@23@01 (/
  (to_real 1)
  (to_real 100))))
(pop) ; 3
; Joined path conditions
(assert (get%precondition ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@24@01)) y@23@01 (/
  (to_real 1)
  (to_real 100))))
(assert (<
  5
  (get ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@24@01)) y@23@01 (/
    (to_real 1)
    (to_real 100)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 5 < get(x, 1 / 100)
; [eval] 5 < get(x, 1 / 100)
; [eval] get(x, 1 / 100)
(set-option :timeout 0)
(push) ; 3
; [eval] none < p
(assert (get%precondition ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@25@01)) x@22@01 (/
  (to_real 1)
  (to_real 100))))
(pop) ; 3
; Joined path conditions
(assert (get%precondition ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@25@01)) x@22@01 (/
  (to_real 1)
  (to_real 100))))
(push) ; 3
(assert (not (<
  5
  (get ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@25@01)) x@22@01 (/
    (to_real 1)
    (to_real 100))))))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@22@01 y@23@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.IntTo$Snap $t@25@01) ($SortWrappers.IntTo$Snap $t@24@01)))
; [eval] 5 < get(x, 1 / 100)
; [eval] get(x, 1 / 100)
(set-option :timeout 0)
(push) ; 3
; [eval] none < p
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (<
  5
  (get ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@25@01)) x@22@01 (/
    (to_real 1)
    (to_real 100))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<
  5
  (get ($Snap.combine $Snap.unit ($SortWrappers.IntTo$Snap $t@25@01)) x@22@01 (/
    (to_real 1)
    (to_real 100)))))
(pop) ; 2
(pop) ; 1
