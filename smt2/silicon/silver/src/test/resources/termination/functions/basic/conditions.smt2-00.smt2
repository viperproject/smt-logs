(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 15:02:12
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
(declare-fun f7 ($Snap Int) Bool)
(declare-fun f7%limited ($Snap Int) Bool)
(declare-fun f7%stateless (Int) Bool)
(declare-fun f7%precondition ($Snap Int) Bool)
(declare-fun f4 ($Snap Int) Int)
(declare-fun f4%limited ($Snap Int) Int)
(declare-fun f4%stateless (Int) Bool)
(declare-fun f4%precondition ($Snap Int) Bool)
(declare-fun f6 ($Snap $Ref Int) Int)
(declare-fun f6%limited ($Snap $Ref Int) Int)
(declare-fun f6%stateless ($Ref Int) Bool)
(declare-fun f6%precondition ($Snap $Ref Int) Bool)
(declare-fun f3 ($Snap Int) Int)
(declare-fun f3%limited ($Snap Int) Int)
(declare-fun f3%stateless (Int) Bool)
(declare-fun f3%precondition ($Snap Int) Bool)
(declare-fun f1 ($Snap Int) Int)
(declare-fun f1%limited ($Snap Int) Int)
(declare-fun f1%stateless (Int) Bool)
(declare-fun f1%precondition ($Snap Int) Bool)
(declare-fun f5 ($Snap Int) Int)
(declare-fun f5%limited ($Snap Int) Int)
(declare-fun f5%stateless (Int) Bool)
(declare-fun f5%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION f7----------
(declare-fun y@0@00 () Int)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@13@00 $Snap)
(assert (= $t@13@00 $Snap.unit))
; [eval] result == true
(assert (= result@1@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (y@0@00 Int)) (!
  (= (f7%limited s@$ y@0@00) (f7 s@$ y@0@00))
  :pattern ((f7 s@$ y@0@00))
  :qid |quant-u-26804|)))
(assert (forall ((s@$ $Snap) (y@0@00 Int)) (!
  (f7%stateless y@0@00)
  :pattern ((f7%limited s@$ y@0@00))
  :qid |quant-u-26805|)))
(assert (forall ((s@$ $Snap) (y@0@00 Int)) (!
  (let ((result@1@00 (f7%limited s@$ y@0@00))) (=>
    (f7%precondition s@$ y@0@00)
    (= result@1@00 true)))
  :pattern ((f7%limited s@$ y@0@00))
  :qid |quant-u-26816|)))
(assert (forall ((s@$ $Snap) (y@0@00 Int)) (!
  (let ((result@1@00 (f7%limited s@$ y@0@00))) true)
  :pattern ((f7%limited s@$ y@0@00))
  :qid |quant-u-26817|)))
; ---------- FUNCTION f4----------
(declare-fun i@2@00 () Int)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@2@00 Int)) (!
  (= (f4%limited s@$ i@2@00) (f4 s@$ i@2@00))
  :pattern ((f4 s@$ i@2@00))
  :qid |quant-u-26806|)))
(assert (forall ((s@$ $Snap) (i@2@00 Int)) (!
  (f4%stateless i@2@00)
  :pattern ((f4%limited s@$ i@2@00))
  :qid |quant-u-26807|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (false && f4(i) != 1 ? f4(i) : 1)
; [eval] false && f4(i) != 1
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | False | dead]
; [else-branch: 0 | True | live]
(push) ; 3
; [else-branch: 0 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (= result@3@00 1))
(pop) ; 1
(declare-const $unresolved@14@00 $Snap)
(declare-const $unresolved@15@00 $Snap)
(assert (forall ((s@$ $Snap) (i@2@00 Int)) (!
  (=> (f4%precondition s@$ i@2@00) (= (f4 s@$ i@2@00) 1))
  :pattern ((f4 s@$ i@2@00))
  :qid |quant-u-26818|)))
(assert (forall ((s@$ $Snap) (i@2@00 Int)) (!
  true
  :pattern ((f4 s@$ i@2@00))
  :qid |quant-u-26819|)))
; ---------- FUNCTION f6----------
(declare-fun xs@4@00 () $Ref)
(declare-fun x@5@00 () Int)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] x >= 0
(assert (>= x@5@00 0))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] f7(x)
(push) ; 2
(assert (f7%precondition $Snap.unit x@5@00))
(pop) ; 2
; Joined path conditions
(assert (f7%precondition $Snap.unit x@5@00))
(assert (f7 $Snap.unit x@5@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref) (x@5@00 Int)) (!
  (= (f6%limited s@$ xs@4@00 x@5@00) (f6 s@$ xs@4@00 x@5@00))
  :pattern ((f6 s@$ xs@4@00 x@5@00))
  :qid |quant-u-26808|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref) (x@5@00 Int)) (!
  (f6%stateless xs@4@00 x@5@00)
  :pattern ((f6%limited s@$ xs@4@00 x@5@00))
  :qid |quant-u-26809|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (>= x@5@00 0))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(assert (f7%precondition $Snap.unit x@5@00))
(assert (f7 $Snap.unit x@5@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (x != 0 ? f6(xs, x - 1) : x)
; [eval] x != 0
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@5@00 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= x@5@00 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | x@5@00 != 0 | live]
; [else-branch: 1 | x@5@00 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | x@5@00 != 0]
(assert (not (= x@5@00 0)))
; [eval] f6(xs, x - 1)
; [eval] x - 1
(push) ; 4
; [eval] x >= 0
(push) ; 5
(assert (not (>= (- x@5@00 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- x@5@00 1) 0))
; [eval] f7(x)
(push) ; 5
(assert (f7%precondition $Snap.unit (- x@5@00 1)))
(pop) ; 5
; Joined path conditions
(assert (f7%precondition $Snap.unit (- x@5@00 1)))
(push) ; 5
(assert (not (f7 $Snap.unit (- x@5@00 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (f7 $Snap.unit (- x@5@00 1)))
(assert (f6%precondition ($Snap.combine
  ($Snap.first s@$)
  ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (- x@5@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and
  (>= (- x@5@00 1) 0)
  (f7%precondition $Snap.unit (- x@5@00 1))
  (f7 $Snap.unit (- x@5@00 1))
  (f6%precondition ($Snap.combine
    ($Snap.first s@$)
    ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (- x@5@00 1))))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | x@5@00 == 0]
(assert (= x@5@00 0))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (= x@5@00 0))
  (and
    (not (= x@5@00 0))
    (>= (- x@5@00 1) 0)
    (f7%precondition $Snap.unit (- x@5@00 1))
    (f7 $Snap.unit (- x@5@00 1))
    (f6%precondition ($Snap.combine
      ($Snap.first s@$)
      ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (- x@5@00 1)))))
; Joined path conditions
(assert (or (= x@5@00 0) (not (= x@5@00 0))))
(assert (=
  result@6@00
  (ite
    (not (= x@5@00 0))
    (f6 ($Snap.combine ($Snap.first s@$) ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (-
      x@5@00
      1))
    x@5@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref) (x@5@00 Int)) (!
  (=>
    (f6%precondition s@$ xs@4@00 x@5@00)
    (=
      (f6 s@$ xs@4@00 x@5@00)
      (ite
        (not (= x@5@00 0))
        (f6%limited ($Snap.combine
          ($Snap.first s@$)
          ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (- x@5@00 1))
        x@5@00)))
  :pattern ((f6 s@$ xs@4@00 x@5@00))
  :qid |quant-u-26820|)))
(assert (forall ((s@$ $Snap) (xs@4@00 $Ref) (x@5@00 Int)) (!
  (=>
    (f6%precondition s@$ xs@4@00 x@5@00)
    (ite
      (not (= x@5@00 0))
      (f6%precondition ($Snap.combine
        ($Snap.first s@$)
        ($Snap.combine $Snap.unit $Snap.unit)) xs@4@00 (- x@5@00 1))
      true))
  :pattern ((f6 s@$ xs@4@00 x@5@00))
  :qid |quant-u-26821|)))
; ---------- FUNCTION f3----------
(declare-fun i@7@00 () Int)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (= (f3%limited s@$ i@7@00) (f3 s@$ i@7@00))
  :pattern ((f3 s@$ i@7@00))
  :qid |quant-u-26810|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (f3%stateless i@7@00)
  :pattern ((f3%limited s@$ i@7@00))
  :qid |quant-u-26811|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (true || f3(i) != 1 ? 1 : f3(i))
; [eval] true || f3(i) != 1
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | True | live]
; [else-branch: 2 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (= result@8@00 1))
(pop) ; 1
(declare-const $unresolved@16@00 $Snap)
(declare-const $unresolved@17@00 $Snap)
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  (=> (f3%precondition s@$ i@7@00) (= (f3 s@$ i@7@00) 1))
  :pattern ((f3 s@$ i@7@00))
  :qid |quant-u-26822|)))
(assert (forall ((s@$ $Snap) (i@7@00 Int)) (!
  true
  :pattern ((f3 s@$ i@7@00))
  :qid |quant-u-26823|)))
; ---------- FUNCTION f1----------
(declare-fun i@9@00 () Int)
(declare-fun result@10@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] i >= 0
(assert (>= i@9@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@9@00 Int)) (!
  (= (f1%limited s@$ i@9@00) (f1 s@$ i@9@00))
  :pattern ((f1 s@$ i@9@00))
  :qid |quant-u-26812|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int)) (!
  (f1%stateless i@9@00)
  :pattern ((f1%limited s@$ i@9@00))
  :qid |quant-u-26813|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (>= i@9@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (i < 10 ? 1 : (f1(i - 1) < 4 || f1(i - 3) < 6 ? 1 : f1(i - 1)))
; [eval] i < 10
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@9@00 10))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@9@00 10)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | i@9@00 < 10 | live]
; [else-branch: 3 | !(i@9@00 < 10) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | i@9@00 < 10]
(assert (< i@9@00 10))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(i@9@00 < 10)]
(assert (not (< i@9@00 10)))
; [eval] (f1(i - 1) < 4 || f1(i - 3) < 6 ? 1 : f1(i - 1))
; [eval] f1(i - 1) < 4 || f1(i - 3) < 6
; [eval] f1(i - 1) < 4
; [eval] f1(i - 1)
; [eval] i - 1
(push) ; 4
; [eval] i >= 0
(push) ; 5
(assert (not (>= (- i@9@00 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= (- i@9@00 1) 0))
(assert (f1%precondition $Snap.unit (- i@9@00 1)))
(pop) ; 4
; Joined path conditions
(assert (and (>= (- i@9@00 1) 0) (f1%precondition $Snap.unit (- i@9@00 1))))
(push) ; 4
; [then-branch: 4 | f1(_, i@9@00 - 1) < 4 | live]
; [else-branch: 4 | !(f1(_, i@9@00 - 1) < 4) | live]
(push) ; 5
; [then-branch: 4 | f1(_, i@9@00 - 1) < 4]
(assert (< (f1 $Snap.unit (- i@9@00 1)) 4))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(f1(_, i@9@00 - 1) < 4)]
(assert (not (< (f1 $Snap.unit (- i@9@00 1)) 4)))
; [eval] f1(i - 3) < 6
; [eval] f1(i - 3)
; [eval] i - 3
(push) ; 6
; [eval] i >= 0
(push) ; 7
(assert (not (>= (- i@9@00 3) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (>= (- i@9@00 3) 0))
(assert (f1%precondition $Snap.unit (- i@9@00 3)))
(pop) ; 6
; Joined path conditions
(assert (and (>= (- i@9@00 3) 0) (f1%precondition $Snap.unit (- i@9@00 3))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (< (f1 $Snap.unit (- i@9@00 1)) 4))
  (and
    (not (< (f1 $Snap.unit (- i@9@00 1)) 4))
    (>= (- i@9@00 3) 0)
    (f1%precondition $Snap.unit (- i@9@00 3)))))
(assert (or (not (< (f1 $Snap.unit (- i@9@00 1)) 4)) (< (f1 $Snap.unit (- i@9@00 1)) 4)))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | f1(_, i@9@00 - 1) < 4 || f1(_, i@9@00 - 3) < 6 | live]
; [else-branch: 5 | !(f1(_, i@9@00 - 1) < 4 || f1(_, i@9@00 - 3) < 6) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | f1(_, i@9@00 - 1) < 4 || f1(_, i@9@00 - 3) < 6]
(assert (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(f1(_, i@9@00 - 1) < 4 || f1(_, i@9@00 - 3) < 6)]
(assert (not (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6))))
; [eval] f1(i - 1)
; [eval] i - 1
(push) ; 6
; [eval] i >= 0
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6)))
  (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (< i@9@00 10))
  (and
    (not (< i@9@00 10))
    (>= (- i@9@00 1) 0)
    (f1%precondition $Snap.unit (- i@9@00 1))
    (=>
      (not (< (f1 $Snap.unit (- i@9@00 1)) 4))
      (and
        (not (< (f1 $Snap.unit (- i@9@00 1)) 4))
        (>= (- i@9@00 3) 0)
        (f1%precondition $Snap.unit (- i@9@00 3))))
    (or
      (not (< (f1 $Snap.unit (- i@9@00 1)) 4))
      (< (f1 $Snap.unit (- i@9@00 1)) 4))
    (or
      (not
        (or
          (< (f1 $Snap.unit (- i@9@00 1)) 4)
          (< (f1 $Snap.unit (- i@9@00 3)) 6)))
      (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6))))))
(assert (or (not (< i@9@00 10)) (< i@9@00 10)))
(assert (=
  result@10@00
  (ite
    (< i@9@00 10)
    1
    (ite
      (or (< (f1 $Snap.unit (- i@9@00 1)) 4) (< (f1 $Snap.unit (- i@9@00 3)) 6))
      1
      (f1 $Snap.unit (- i@9@00 1))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@9@00 Int)) (!
  (=>
    (f1%precondition s@$ i@9@00)
    (=
      (f1 s@$ i@9@00)
      (ite
        (< i@9@00 10)
        1
        (ite
          (or
            (< (f1%limited $Snap.unit (- i@9@00 1)) 4)
            (< (f1%limited $Snap.unit (- i@9@00 3)) 6))
          1
          (f1%limited $Snap.unit (- i@9@00 1))))))
  :pattern ((f1 s@$ i@9@00))
  :qid |quant-u-26824|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int)) (!
  (=>
    (f1%precondition s@$ i@9@00)
    (ite
      (< i@9@00 10)
      true
      (and
        (and
          (f1%precondition $Snap.unit (- i@9@00 1))
          (=>
            (not (< (f1%limited $Snap.unit (- i@9@00 1)) 4))
            (f1%precondition $Snap.unit (- i@9@00 3))))
        (ite
          (or
            (< (f1%limited $Snap.unit (- i@9@00 1)) 4)
            (< (f1%limited $Snap.unit (- i@9@00 3)) 6))
          true
          (f1%precondition $Snap.unit (- i@9@00 1))))))
  :pattern ((f1 s@$ i@9@00))
  :qid |quant-u-26825|)))
; ---------- FUNCTION f5----------
(declare-fun i@11@00 () Int)
(declare-fun result@12@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@11@00 Int)) (!
  (= (f5%limited s@$ i@11@00) (f5 s@$ i@11@00))
  :pattern ((f5 s@$ i@11@00))
  :qid |quant-u-26814|)))
(assert (forall ((s@$ $Snap) (i@11@00 Int)) (!
  (f5%stateless i@11@00)
  :pattern ((f5%limited s@$ i@11@00))
  :qid |quant-u-26815|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (false ==> f5(i) > 6 ? 7 : f5(i))
; [eval] false ==> f5(i) > 6
(set-option :timeout 0)
(push) ; 2
; [then-branch: 6 | False | dead]
; [else-branch: 6 | True | live]
(push) ; 3
; [else-branch: 6 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | True | live]
; [else-branch: 7 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | True]
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (= result@12@00 7))
(pop) ; 1
(declare-const $unresolved@18@00 $Snap)
(declare-const $unresolved@19@00 $Snap)
(assert (forall ((s@$ $Snap) (i@11@00 Int)) (!
  (=> (f5%precondition s@$ i@11@00) (= (f5 s@$ i@11@00) 7))
  :pattern ((f5 s@$ i@11@00))
  :qid |quant-u-26826|)))
(assert (forall ((s@$ $Snap) (i@11@00 Int)) (!
  true
  :pattern ((f5 s@$ i@11@00))
  :qid |quant-u-26827|)))
; ---------- list ----------
(declare-const xs@20@00 $Ref)
(push) ; 1
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 ($Snap.combine ($Snap.first $t@21@00) ($Snap.second $t@21@00))))
(assert (not (= xs@20@00 $Ref.null)))
; [eval] xs.next != null
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@21@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@21@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | First:($t@21@00) != Null | live]
; [else-branch: 8 | First:($t@21@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 8 | First:($t@21@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@21@00)) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 8 | First:($t@21@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@21@00)) $Ref.null))
(assert (= ($Snap.second $t@21@00) $Snap.unit))
(pop) ; 2
(pop) ; 1
