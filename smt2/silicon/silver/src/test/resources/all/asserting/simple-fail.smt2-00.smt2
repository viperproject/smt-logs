(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 10:06:56
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
(declare-fun fun2 ($Snap $Ref) Int)
(declare-fun fun2%limited ($Snap $Ref) Int)
(declare-fun fun2%stateless ($Ref) Bool)
(declare-fun fun2%precondition ($Snap $Ref) Bool)
(declare-fun fun ($Snap) Int)
(declare-fun fun%limited ($Snap) Int)
(declare-const fun%stateless Bool)
(declare-fun fun%precondition ($Snap) Bool)
(declare-fun fun4 ($Snap $Ref) Int)
(declare-fun fun4%limited ($Snap $Ref) Int)
(declare-fun fun4%stateless ($Ref) Bool)
(declare-fun fun4%precondition ($Snap $Ref) Bool)
(declare-fun fun3 ($Snap $Ref) Int)
(declare-fun fun3%limited ($Snap $Ref) Int)
(declare-fun fun3%stateless ($Ref) Bool)
(declare-fun fun3%precondition ($Snap $Ref) Bool)
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
; ---------- FUNCTION fun2----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (fun2%limited s@$ x@0@00) (fun2 s@$ x@0@00))
  :pattern ((fun2 s@$ x@0@00))
  :qid |quant-u-22159|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (fun2%stateless x@0@00)
  :pattern ((fun2%limited s@$ x@0@00))
  :qid |quant-u-22160|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (acc(x.f, write) && x.f > 0) in 0)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
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
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
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
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 1
; ---------- FUNCTION fun----------
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (fun%limited s@$) (fun s@$))
  :pattern ((fun s@$))
  :qid |quant-u-22161|)))
(assert (forall ((s@$ $Snap)) (!
  (as fun%stateless  Bool)
  :pattern ((fun%limited s@$))
  :qid |quant-u-22162|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (false) in 0)
(set-option :timeout 0)
(push) ; 2
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- FUNCTION fun4----------
(declare-fun x@3@00 () $Ref)
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@3@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] x.f > 8
(assert (> ($SortWrappers.$SnapToInt ($Snap.first s@$)) 8))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (= (fun4%limited s@$ x@3@00) (fun4 s@$ x@3@00))
  :pattern ((fun4 s@$ x@3@00))
  :qid |quant-u-22163|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (fun4%stateless x@3@00)
  :pattern ((fun4%limited s@$ x@3@00))
  :qid |quant-u-22164|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@3@00 $Ref.null)))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (> ($SortWrappers.$SnapToInt ($Snap.first s@$)) 8))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (acc(x.f, write) && x.f > 0) in 0)
; [eval] x.f > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (> ($SortWrappers.$SnapToInt ($Snap.first s@$)) 0))
(assert (= result@4@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (=> (fun4%precondition s@$ x@3@00) (= (fun4 s@$ x@3@00) 0))
  :pattern ((fun4 s@$ x@3@00))
  :qid |quant-u-22167|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  true
  :pattern ((fun4 s@$ x@3@00))
  :qid |quant-u-22168|)))
; ---------- FUNCTION fun3----------
(declare-fun x@5@00 () $Ref)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (not (= x@5@00 $Ref.null)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (= (fun3%limited s@$ x@5@00) (fun3 s@$ x@5@00))
  :pattern ((fun3 s@$ x@5@00))
  :qid |quant-u-22165|)))
(assert (forall ((s@$ $Snap) (x@5@00 $Ref)) (!
  (fun3%stateless x@5@00)
  :pattern ((fun3%limited s@$ x@5@00))
  :qid |quant-u-22166|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (not (= x@5@00 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (asserting (acc(x.f, write) && x.f > 0) in 0)
; [eval] x.f > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> ($SortWrappers.$SnapToInt s@$) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> ($SortWrappers.$SnapToInt s@$) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> ($SortWrappers.$SnapToInt s@$) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f > 0
(set-option :timeout 0)
(push) ; 2
(assert (not (> ($SortWrappers.$SnapToInt s@$) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
