(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:42:56
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
(declare-sort WellFoundedOrder<Int> 0)
(declare-sort IntWellFoundedOrder 0)
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
(declare-fun $SortWrappers.WellFoundedOrder<Int>To$Snap (WellFoundedOrder<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToWellFoundedOrder<Int> ($Snap) WellFoundedOrder<Int>)
(assert (forall ((x WellFoundedOrder<Int>)) (!
    (= x ($SortWrappers.$SnapToWellFoundedOrder<Int>($SortWrappers.WellFoundedOrder<Int>To$Snap x)))
    :pattern (($SortWrappers.WellFoundedOrder<Int>To$Snap x))
    :qid |$Snap.$SnapToWellFoundedOrder<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.WellFoundedOrder<Int>To$Snap($SortWrappers.$SnapToWellFoundedOrder<Int> x)))
    :pattern (($SortWrappers.$SnapToWellFoundedOrder<Int> x))
    :qid |$Snap.WellFoundedOrder<Int>To$SnapToWellFoundedOrder<Int>|
    )))
(declare-fun $SortWrappers.IntWellFoundedOrderTo$Snap (IntWellFoundedOrder) $Snap)
(declare-fun $SortWrappers.$SnapToIntWellFoundedOrder ($Snap) IntWellFoundedOrder)
(assert (forall ((x IntWellFoundedOrder)) (!
    (= x ($SortWrappers.$SnapToIntWellFoundedOrder($SortWrappers.IntWellFoundedOrderTo$Snap x)))
    :pattern (($SortWrappers.IntWellFoundedOrderTo$Snap x))
    :qid |$Snap.$SnapToIntWellFoundedOrderTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntWellFoundedOrderTo$Snap($SortWrappers.$SnapToIntWellFoundedOrder x)))
    :pattern (($SortWrappers.$SnapToIntWellFoundedOrder x))
    :qid |$Snap.IntWellFoundedOrderTo$SnapToIntWellFoundedOrder|
    )))
; ////////// Symbols
(declare-fun decreasing<Bool> (Int Int) Bool)
(declare-fun bounded<Bool> (Int) Bool)
; Declaring symbols related to program functions (from program analysis)
(declare-fun factorialPure ($Snap Int) Int)
(declare-fun factorialPure%limited ($Snap Int) Int)
(declare-fun factorialPure%stateless (Int) Bool)
(declare-fun factorialPure%precondition ($Snap Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun list%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((int1 Int) (int2 Int)) (!
  (=> (< int1 int2) (decreasing<Bool> int1 int2))
  :pattern ((decreasing<Bool> int1 int2))
  :qid |prog.integer_ax_dec|)))
(assert (forall ((int1 Int)) (!
  (=> (>= int1 0) (bounded<Bool> int1))
  :pattern ((bounded<Bool> int1))
  :qid |prog.integer_ax_bound|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (= (factorialPure%limited s@$ n@0@00) (factorialPure s@$ n@0@00))
  :pattern ((factorialPure s@$ n@0@00))
  :qid |quant-u-26857|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (factorialPure%stateless n@0@00)
  :pattern ((factorialPure%limited s@$ n@0@00))
  :qid |quant-u-26858|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (=>
    (factorialPure%precondition s@$ n@0@00)
    (=
      (factorialPure s@$ n@0@00)
      (ite (= n@0@00 0) 1 (factorialPure%limited $Snap.unit (- n@0@00 1)))))
  :pattern ((factorialPure s@$ n@0@00))
  :qid |quant-u-26859|)))
(assert (forall ((s@$ $Snap) (n@0@00 Int)) (!
  (=>
    (factorialPure%precondition s@$ n@0@00)
    (ite (= n@0@00 0) true (factorialPure%precondition $Snap.unit (- n@0@00 1))))
  :pattern ((factorialPure s@$ n@0@00))
  :qid |quant-u-26860|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- length ----------
(declare-const x@0@01 $Ref)
(declare-const l@1@01 Int)
(declare-const x@2@01 $Ref)
(declare-const l@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@5@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(list(x), write)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (not (= x@2@01 $Ref.null)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
; [eval] self.next != null
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@4@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@4@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:($t@4@01) != Null | live]
; [else-branch: 0 | First:($t@4@01) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:($t@4@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@4@01)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger $t@4@01 x@2@01))
; [eval] x.next == null
; [then-branch: 1 | First:($t@4@01) == Null | dead]
; [else-branch: 1 | First:($t@4@01) != Null | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 1 | First:($t@4@01) != Null]
(pop) ; 4
; [eval] !(x.next == null)
; [eval] x.next == null
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@4@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:($t@4@01) != Null | live]
; [else-branch: 2 | First:($t@4@01) == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | First:($t@4@01) != Null]
; [exec]
; var tmp: Int
(declare-const tmp@6@01 Int)
; [exec]
; assert false
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
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- factorialPure_termination_proof ----------
(declare-const n@7@01 Int)
(declare-const n@8@01 Int)
(push) ; 1
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] n >= 0
(assert (>= n@8@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [eval] !(n == 0)
; [eval] n == 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= n@8@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= n@8@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | n@8@01 != 0 | live]
; [else-branch: 3 | n@8@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | n@8@01 != 0]
(assert (not (= n@8@01 0)))
; [exec]
; assert false
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
(pop) ; 3
(pop) ; 2
(pop) ; 1