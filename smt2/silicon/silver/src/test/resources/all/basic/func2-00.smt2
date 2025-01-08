(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:23:30
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
(declare-fun f4 ($Snap $Ref) Int)
(declare-fun f4%limited ($Snap $Ref) Int)
(declare-fun f4%stateless ($Ref) Bool)
(declare-fun f4%precondition ($Snap $Ref) Bool)
(declare-fun f5 ($Snap $Ref) Int)
(declare-fun f5%limited ($Snap $Ref) Int)
(declare-fun f5%stateless ($Ref) Bool)
(declare-fun f5%precondition ($Snap $Ref) Bool)
(declare-fun f3_b ($Snap $Ref) Int)
(declare-fun f3_b%limited ($Snap $Ref) Int)
(declare-fun f3_b%stateless ($Ref) Bool)
(declare-fun f3_b%precondition ($Snap $Ref) Bool)
(declare-fun f3_a ($Snap $Ref) Int)
(declare-fun f3_a%limited ($Snap $Ref) Int)
(declare-fun f3_a%stateless ($Ref) Bool)
(declare-fun f3_a%precondition ($Snap $Ref) Bool)
(declare-fun f1 ($Snap $Ref) Int)
(declare-fun f1%limited ($Snap $Ref) Int)
(declare-fun f1%stateless ($Ref) Bool)
(declare-fun f1%precondition ($Snap $Ref) Bool)
(declare-fun f6 ($Snap $Ref) Int)
(declare-fun f6%limited ($Snap $Ref) Int)
(declare-fun f6%stateless ($Ref) Bool)
(declare-fun f6%precondition ($Snap $Ref) Bool)
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
; ---------- FUNCTION f4----------
(declare-fun r@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= r@0@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] r.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 2))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (= (f4%limited s@$ r@0@00) (f4 s@$ r@0@00))
  :pattern ((f4 s@$ r@0@00))
  :qid |quant-u-22761|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (f4%stateless r@0@00)
  :pattern ((f4%limited s@$ r@0@00))
  :qid |quant-u-22762|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= r@0@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) 2))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@1@00 2))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (=> (f4%precondition s@$ r@0@00) (= (f4 s@$ r@0@00) 2))
  :pattern ((f4 s@$ r@0@00))
  :qid |quant-u-22773|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  true
  :pattern ((f4 s@$ r@0@00))
  :qid |quant-u-22774|)))
; ---------- FUNCTION f5----------
(declare-fun r@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] r != null
(assert (not (= r@2@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (= (f5%limited s@$ r@2@00) (f5 s@$ r@2@00))
  :pattern ((f5 s@$ r@2@00))
  :qid |quant-u-22763|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (f5%stateless r@2@00)
  :pattern ((f5%limited s@$ r@2@00))
  :qid |quant-u-22764|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (not (= r@2@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
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
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION f3_b----------
(declare-fun r@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] r != null
(assert (not (= r@4@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] r.f == 2
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
(pop) ; 1
; ---------- FUNCTION f3_a----------
(declare-fun r@6@00 () $Ref)
(declare-fun result@7@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] r.f == 2
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
(pop) ; 1
; ---------- FUNCTION f1----------
(declare-fun r@8@00 () $Ref)
(declare-fun result@9@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $k@12@00 $Perm)
(assert ($Perm.isReadVar $k@12@00))
(assert (<= $Perm.No $k@12@00))
(assert (=> (< $Perm.No $k@12@00) (not (= r@8@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (= (f1%limited s@$ r@8@00) (f1 s@$ r@8@00))
  :pattern ((f1 s@$ r@8@00))
  :qid |quant-u-22769|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (f1%stateless r@8@00)
  :pattern ((f1%limited s@$ r@8@00))
  :qid |quant-u-22770|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@12@00))
(assert (<= $Perm.No $k@12@00))
(assert (=> (< $Perm.No $k@12@00) (not (= r@8@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@12@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= result@9@00 ($SortWrappers.$SnapToInt s@$)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@12@00)
    (=>
      (f1%precondition s@$ r@8@00)
      (= (f1 s@$ r@8@00) ($SortWrappers.$SnapToInt s@$))))
  :pattern ((f1 s@$ r@8@00))
  :qid |quant-u-22775|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  true
  :pattern ((f1 s@$ r@8@00))
  :qid |quant-u-22776|)))
; ---------- FUNCTION f6----------
(declare-fun r@10@00 () $Ref)
(declare-fun result@11@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] r != null
(assert (not (= r@10@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (= (f6%limited s@$ r@10@00) (f6 s@$ r@10@00))
  :pattern ((f6 s@$ r@10@00))
  :qid |quant-u-22771|)))
(assert (forall ((s@$ $Snap) (r@10@00 $Ref)) (!
  (f6%stateless r@10@00)
  :pattern ((f6%limited s@$ r@10@00))
  :qid |quant-u-22772|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (not (= r@10@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] f4(r)
(set-option :timeout 0)
(push) ; 2
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
