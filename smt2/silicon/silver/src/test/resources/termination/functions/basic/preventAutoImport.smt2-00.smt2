(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:02:56
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
; ////////// Symbols
(declare-fun decreasing<Bool> (Int Int) Bool)
(declare-fun bounded<Bool> (Int) Bool)
; Declaring symbols related to program functions (from program analysis)
(declare-fun fact ($Snap Int) Int)
(declare-fun fact%limited ($Snap Int) Int)
(declare-fun fact%stateless (Int) Bool)
(declare-fun fact%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION fact----------
(declare-fun x@0@00 () Int)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] x >= 0
(assert (>= x@0@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (= (fact%limited s@$ x@0@00) (fact s@$ x@0@00))
  :pattern ((fact s@$ x@0@00))
  :qid |quant-u-26817|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (fact%stateless x@0@00)
  :pattern ((fact%limited s@$ x@0@00))
  :qid |quant-u-26818|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (>= x@0@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (x == 0 ? 1 : x * fact(x - 1))
; [eval] x == 0
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@0@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@0@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | x@0@00 == 0 | live]
; [else-branch: 0 | x@0@00 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | x@0@00 == 0]
(assert (= x@0@00 0))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | x@0@00 != 0]
(assert (not (= x@0@00 0)))
; [eval] x * fact(x - 1)
; [eval] fact(x - 1)
; [eval] x - 1
(push) ; 4
; [eval] x >= 0
(push) ; 5
(assert (not (>= (- x@0@00 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- x@0@00 1) 0))
(assert (fact%precondition $Snap.unit (- x@0@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- x@0@00 1) 0) (fact%precondition $Snap.unit (- x@0@00 1))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= x@0@00 0))
  (and
    (not (= x@0@00 0))
    (>= (- x@0@00 1) 0)
    (fact%precondition $Snap.unit (- x@0@00 1)))))
(assert (or (not (= x@0@00 0)) (= x@0@00 0)))
(assert (= result@1@00 (ite (= x@0@00 0) 1 (* x@0@00 (fact $Snap.unit (- x@0@00 1))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (=>
    (fact%precondition s@$ x@0@00)
    (=
      (fact s@$ x@0@00)
      (ite (= x@0@00 0) 1 (* x@0@00 (fact%limited $Snap.unit (- x@0@00 1))))))
  :pattern ((fact s@$ x@0@00))
  :qid |quant-u-26819|)))
(assert (forall ((s@$ $Snap) (x@0@00 Int)) (!
  (=>
    (fact%precondition s@$ x@0@00)
    (ite (= x@0@00 0) true (fact%precondition $Snap.unit (- x@0@00 1))))
  :pattern ((fact s@$ x@0@00))
  :qid |quant-u-26820|)))