(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:23:34
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
(declare-fun f1 ($Snap) Int)
(declare-fun f1%limited ($Snap) Int)
(declare-const f1%stateless Bool)
(declare-fun f1%precondition ($Snap) Bool)
(declare-fun f3 ($Snap Int) Int)
(declare-fun f3%limited ($Snap Int) Int)
(declare-fun f3%stateless (Int) Bool)
(declare-fun f3%precondition ($Snap Int) Bool)
(declare-fun f2 ($Snap) Int)
(declare-fun f2%limited ($Snap) Int)
(declare-const f2%stateless Bool)
(declare-fun f2%precondition ($Snap) Bool)
(declare-fun f8 ($Snap) Int)
(declare-fun f8%limited ($Snap) Int)
(declare-const f8%stateless Bool)
(declare-fun f8%precondition ($Snap) Bool)
(declare-fun f4 ($Snap) Int)
(declare-fun f4%limited ($Snap) Int)
(declare-const f4%stateless Bool)
(declare-fun f4%precondition ($Snap) Bool)
(declare-fun f7 ($Snap) Int)
(declare-fun f7%limited ($Snap) Int)
(declare-const f7%stateless Bool)
(declare-fun f7%precondition ($Snap) Bool)
(declare-fun f6 ($Snap) Int)
(declare-fun f6%limited ($Snap) Int)
(declare-const f6%stateless Bool)
(declare-fun f6%precondition ($Snap) Bool)
(declare-fun f5 ($Snap Int Bool) Int)
(declare-fun f5%limited ($Snap Int Bool) Int)
(declare-fun f5%stateless (Int Bool) Bool)
(declare-fun f5%precondition ($Snap Int Bool) Bool)
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
(assert (forall ((s@$ $Snap)) (!
  (= (f1%limited s@$) (f1 s@$))
  :pattern ((f1 s@$))
  :qid |quant-u-22777|)))
(assert (forall ((s@$ $Snap)) (!
  (as f1%stateless  Bool)
  :pattern ((f1%limited s@$))
  :qid |quant-u-22778|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f1%precondition s@$) (= (f1 s@$) 1))
  :pattern ((f1 s@$))
  :qid |quant-u-22793|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((f1 s@$))
  :qid |quant-u-22794|)))
(assert (forall ((s@$ $Snap) (i@1@00 Int)) (!
  (= (f3%limited s@$ i@1@00) (f3 s@$ i@1@00))
  :pattern ((f3 s@$ i@1@00))
  :qid |quant-u-22779|)))
(assert (forall ((s@$ $Snap) (i@1@00 Int)) (!
  (f3%stateless i@1@00)
  :pattern ((f3%limited s@$ i@1@00))
  :qid |quant-u-22780|)))
(assert (forall ((s@$ $Snap) (i@1@00 Int)) (!
  (=> (f3%precondition s@$ i@1@00) (= (f3 s@$ i@1@00) i@1@00))
  :pattern ((f3 s@$ i@1@00))
  :qid |quant-u-22795|)))
(assert (forall ((s@$ $Snap) (i@1@00 Int)) (!
  true
  :pattern ((f3 s@$ i@1@00))
  :qid |quant-u-22796|)))
(assert (forall ((s@$ $Snap)) (!
  (= (f2%limited s@$) (f2 s@$))
  :pattern ((f2 s@$))
  :qid |quant-u-22781|)))
(assert (forall ((s@$ $Snap)) (!
  (as f2%stateless  Bool)
  :pattern ((f2%limited s@$))
  :qid |quant-u-22782|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f2%precondition s@$) (= (f2 s@$) 2))
  :pattern ((f2 s@$))
  :qid |quant-u-22797|)))
(assert (forall ((s@$ $Snap)) (!
  true
  :pattern ((f2 s@$))
  :qid |quant-u-22798|)))
(assert (forall ((s@$ $Snap)) (!
  (= (f8%limited s@$) (f8 s@$))
  :pattern ((f8 s@$))
  :qid |quant-u-22783|)))
(assert (forall ((s@$ $Snap)) (!
  (as f8%stateless  Bool)
  :pattern ((f8%limited s@$))
  :qid |quant-u-22784|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f8%precondition s@$) (= (f8 s@$) (f3 $Snap.unit (f1 $Snap.unit))))
  :pattern ((f8 s@$))
  :qid |quant-u-22799|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (f8%precondition s@$)
    (and
      (f1%precondition $Snap.unit)
      (f3%precondition $Snap.unit (f1 $Snap.unit))))
  :pattern ((f8 s@$))
  :qid |quant-u-22800|)))
(assert (forall ((s@$ $Snap)) (!
  (= (f4%limited s@$) (f4 s@$))
  :pattern ((f4 s@$))
  :qid |quant-u-22785|)))
(assert (forall ((s@$ $Snap)) (!
  (as f4%stateless  Bool)
  :pattern ((f4%limited s@$))
  :qid |quant-u-22786|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f4%precondition s@$) (= (f4 s@$) (+ (f1 $Snap.unit) (f2 $Snap.unit))))
  :pattern ((f4 s@$))
  :qid |quant-u-22801|)))
(assert (forall ((s@$ $Snap)) (!
  (=>
    (f4%precondition s@$)
    (and (f1%precondition $Snap.unit) (f2%precondition $Snap.unit)))
  :pattern ((f4 s@$))
  :qid |quant-u-22802|)))
(assert (forall ((s@$ $Snap)) (!
  (= (f7%limited s@$) (f7 s@$))
  :pattern ((f7 s@$))
  :qid |quant-u-22787|)))
(assert (forall ((s@$ $Snap)) (!
  (as f7%stateless  Bool)
  :pattern ((f7%limited s@$))
  :qid |quant-u-22788|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f7%precondition s@$) (= (f7 s@$) (f6%limited $Snap.unit)))
  :pattern ((f7 s@$))
  :qid |quant-u-22803|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f7%precondition s@$) (f6%precondition $Snap.unit))
  :pattern ((f7 s@$))
  :qid |quant-u-22804|)))
(assert (forall ((s@$ $Snap)) (!
  (= (f6%limited s@$) (f6 s@$))
  :pattern ((f6 s@$))
  :qid |quant-u-22789|)))
(assert (forall ((s@$ $Snap)) (!
  (as f6%stateless  Bool)
  :pattern ((f6%limited s@$))
  :qid |quant-u-22790|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f6%precondition s@$) (= (f6 s@$) (f7%limited $Snap.unit)))
  :pattern ((f6 s@$))
  :qid |quant-u-22805|)))
(assert (forall ((s@$ $Snap)) (!
  (=> (f6%precondition s@$) (f7%precondition $Snap.unit))
  :pattern ((f6 s@$))
  :qid |quant-u-22806|)))
(assert (forall ((s@$ $Snap) (i@8@00 Int) (b@9@00 Bool)) (!
  (= (f5%limited s@$ i@8@00 b@9@00) (f5 s@$ i@8@00 b@9@00))
  :pattern ((f5 s@$ i@8@00 b@9@00))
  :qid |quant-u-22791|)))
(assert (forall ((s@$ $Snap) (i@8@00 Int) (b@9@00 Bool)) (!
  (f5%stateless i@8@00 b@9@00)
  :pattern ((f5%limited s@$ i@8@00 b@9@00))
  :qid |quant-u-22792|)))
(assert (forall ((s@$ $Snap) (i@8@00 Int) (b@9@00 Bool)) (!
  (=>
    (f5%precondition s@$ i@8@00 b@9@00)
    (=
      (f5 s@$ i@8@00 b@9@00)
      (ite b@9@00 (f5%limited $Snap.unit (* 2 i@8@00) false) i@8@00)))
  :pattern ((f5 s@$ i@8@00 b@9@00))
  :qid |quant-u-22807|)))
(assert (forall ((s@$ $Snap) (i@8@00 Int) (b@9@00 Bool)) (!
  (=>
    (f5%precondition s@$ i@8@00 b@9@00)
    (ite b@9@00 (f5%precondition $Snap.unit (* 2 i@8@00) false) true))
  :pattern ((f5 s@$ i@8@00 b@9@00))
  :qid |quant-u-22808|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- t1 ----------
(declare-const b@0@01 Bool)
(declare-const d@1@01 Int)
(declare-const r@2@01 $Ref)
(declare-const b@3@01 Bool)
(declare-const d@4@01 Int)
(declare-const r@5@01 $Ref)
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
; assert f1() == 1
; [eval] f1() == 1
; [eval] f1()
(push) ; 3
(assert (f1%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (f1%precondition $Snap.unit))
(push) ; 3
(assert (not (= (f1 $Snap.unit) 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= (f1 $Snap.unit) 1))
(pop) ; 2
(pop) ; 1
