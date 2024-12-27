(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:59:26
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
(declare-fun t ($Snap Int) Bool)
(declare-fun t%limited ($Snap Int) Bool)
(declare-fun t%stateless (Int) Bool)
(declare-fun t%precondition ($Snap Int) Bool)
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
; ---------- FUNCTION t----------
(declare-fun r@0@00 () Int)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] r > 0
(assert (> r@0@00 0))
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 $Snap.unit))
; [eval] r > 0
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  (= (t%limited s@$ r@0@00) (t s@$ r@0@00))
  :pattern ((t s@$ r@0@00))
  :qid |quant-u-23224|)))
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  (t%stateless r@0@00)
  :pattern ((t%limited s@$ r@0@00))
  :qid |quant-u-23225|)))
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  (let ((result@1@00 (t%limited s@$ r@0@00))) (=>
    (t%precondition s@$ r@0@00)
    (> r@0@00 0)))
  :pattern ((t%limited s@$ r@0@00))
  :qid |quant-u-23226|)))
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  (let ((result@1@00 (t%limited s@$ r@0@00))) true)
  :pattern ((t%limited s@$ r@0@00))
  :qid |quant-u-23227|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (> r@0@00 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] r > 0
(assert (= result@1@00 (> r@0@00 0)))
; [eval] r > 0
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  (=> (t%precondition s@$ r@0@00) (= (t s@$ r@0@00) (> r@0@00 0)))
  :pattern ((t s@$ r@0@00))
  :qid |quant-u-23228|)))
(assert (forall ((s@$ $Snap) (r@0@00 Int)) (!
  true
  :pattern ((t s@$ r@0@00))
  :qid |quant-u-23229|)))