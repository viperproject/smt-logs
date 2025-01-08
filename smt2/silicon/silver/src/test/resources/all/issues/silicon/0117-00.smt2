(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:24:51
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
(declare-fun fun1 ($Snap $Ref) Bool)
(declare-fun fun1%limited ($Snap $Ref) Bool)
(declare-fun fun1%stateless ($Ref) Bool)
(declare-fun fun1%precondition ($Snap $Ref) Bool)
(declare-fun fun2 ($Snap $Ref) Bool)
(declare-fun fun2%limited ($Snap $Ref) Bool)
(declare-fun fun2%stateless ($Ref) Bool)
(declare-fun fun2%precondition ($Snap $Ref) Bool)
(declare-fun fun ($Snap $Ref) Bool)
(declare-fun fun%limited ($Snap $Ref) Bool)
(declare-fun fun%stateless ($Ref) Bool)
(declare-fun fun%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p%trigger ($Snap $Ref) Bool)
(declare-fun p1%trigger ($Snap $Ref) Bool)
(declare-fun p2%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION fun1----------
(declare-fun this@0@00 () $Ref)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (fun1%limited s@$ this@0@00) (fun1 s@$ this@0@00))
  :pattern ((fun1 s@$ this@0@00))
  :qid |quant-u-24328|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (fun1%stateless this@0@00)
  :pattern ((fun1%limited s@$ this@0@00))
  :qid |quant-u-24329|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@1@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=> (fun1%precondition s@$ this@0@00) (= (fun1 s@$ this@0@00) true))
  :pattern ((fun1 s@$ this@0@00))
  :qid |quant-u-24334|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((fun1 s@$ this@0@00))
  :qid |quant-u-24335|)))
; ---------- FUNCTION fun2----------
(declare-fun this@2@00 () $Ref)
(declare-fun result@3@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  (= (fun2%limited s@$ this@2@00) (fun2 s@$ this@2@00))
  :pattern ((fun2 s@$ this@2@00))
  :qid |quant-u-24330|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  (fun2%stateless this@2@00)
  :pattern ((fun2%limited s@$ this@2@00))
  :qid |quant-u-24331|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@3@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  (=> (fun2%precondition s@$ this@2@00) (= (fun2 s@$ this@2@00) true))
  :pattern ((fun2 s@$ this@2@00))
  :qid |quant-u-24336|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  true
  :pattern ((fun2 s@$ this@2@00))
  :qid |quant-u-24337|)))
; ---------- FUNCTION fun----------
(declare-fun this@4@00 () $Ref)
(declare-fun result@5@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@4@00 $Ref)) (!
  (= (fun%limited s@$ this@4@00) (fun s@$ this@4@00))
  :pattern ((fun s@$ this@4@00))
  :qid |quant-u-24332|)))
(assert (forall ((s@$ $Snap) (this@4@00 $Ref)) (!
  (fun%stateless this@4@00)
  :pattern ((fun%limited s@$ this@4@00))
  :qid |quant-u-24333|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@5@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@4@00 $Ref)) (!
  (=> (fun%precondition s@$ this@4@00) (= (fun s@$ this@4@00) true))
  :pattern ((fun s@$ this@4@00))
  :qid |quant-u-24338|)))
(assert (forall ((s@$ $Snap) (this@4@00 $Ref)) (!
  true
  :pattern ((fun s@$ this@4@00))
  :qid |quant-u-24339|)))
; ---------- p ----------
(declare-const this@6@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@7@00 $Snap)
(pop) ; 1
; ---------- p1 ----------
(declare-const this@8@00 $Ref)
(push) ; 1
(declare-const $t@9@00 $Snap)
(pop) ; 1
; ---------- p2 ----------
(declare-const this@10@00 $Ref)
(push) ; 1
(declare-const $t@11@00 $Snap)
(pop) ; 1
