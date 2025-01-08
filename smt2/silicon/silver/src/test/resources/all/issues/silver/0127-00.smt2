(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:26:32
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
(declare-fun F2 ($Snap $Ref) Bool)
(declare-fun F2%limited ($Snap $Ref) Bool)
(declare-fun F2%stateless ($Ref) Bool)
(declare-fun F2%precondition ($Snap $Ref) Bool)
(declare-fun idf ($Snap $Ref) $Ref)
(declare-fun idf%limited ($Snap $Ref) $Ref)
(declare-fun idf%stateless ($Ref) Bool)
(declare-fun idf%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun F1%trigger ($Snap $Ref) Bool)
(declare-fun idp%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION F2----------
(declare-fun r@0@00 () $Ref)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (= (F2%limited s@$ r@0@00) (F2 s@$ r@0@00))
  :pattern ((F2 s@$ r@0@00))
  :qid |quant-u-25991|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (F2%stateless r@0@00)
  :pattern ((F2%limited s@$ r@0@00))
  :qid |quant-u-25992|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@1@00 true))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (=> (F2%precondition s@$ r@0@00) (= (F2 s@$ r@0@00) true))
  :pattern ((F2 s@$ r@0@00))
  :qid |quant-u-25995|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  true
  :pattern ((F2 s@$ r@0@00))
  :qid |quant-u-25996|)))
; ---------- FUNCTION idf----------
(declare-fun r@2@00 () $Ref)
(declare-fun result@3@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (= (idf%limited s@$ r@2@00) (idf s@$ r@2@00))
  :pattern ((idf s@$ r@2@00))
  :qid |quant-u-25993|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (idf%stateless r@2@00)
  :pattern ((idf%limited s@$ r@2@00))
  :qid |quant-u-25994|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@3@00 r@2@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  (=> (idf%precondition s@$ r@2@00) (= (idf s@$ r@2@00) r@2@00))
  :pattern ((idf s@$ r@2@00))
  :qid |quant-u-25997|)))
(assert (forall ((s@$ $Snap) (r@2@00 $Ref)) (!
  true
  :pattern ((idf s@$ r@2@00))
  :qid |quant-u-25998|)))
; ---------- F1 ----------
(declare-const r@4@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
(pop) ; 1
; ---------- idp ----------
(declare-const r@6@00 $Ref)
(push) ; 1
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 $Snap.unit))
(pop) ; 1
