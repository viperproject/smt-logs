(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:37:30
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
(declare-fun main ($Snap) Bool)
(declare-fun main%limited ($Snap) Bool)
(declare-const main%stateless Bool)
(declare-fun main%precondition ($Snap) Bool)
(declare-fun libb ($Snap) Bool)
(declare-fun libb%limited ($Snap) Bool)
(declare-const libb%stateless Bool)
(declare-fun libb%precondition ($Snap) Bool)
(declare-fun liba ($Snap) Bool)
(declare-fun liba%limited ($Snap) Bool)
(declare-const liba%stateless Bool)
(declare-fun liba%precondition ($Snap) Bool)
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
; ---------- FUNCTION main----------
(declare-fun result@0@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@3@00 $Snap)
(assert (= $t@3@00 $Snap.unit))
; [eval] result == liba()
; [eval] liba()
(push) ; 2
(assert (liba%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (liba%precondition $Snap.unit))
(assert (= result@0@00 (liba $Snap.unit)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (main%limited s@$) (main s@$))
  :pattern ((main s@$))
  :qid |quant-u-21921|)))
(assert (forall ((s@$ $Snap)) (!
  (as main%stateless  Bool)
  :pattern ((main%limited s@$))
  :qid |quant-u-21922|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (main%limited s@$))) (=>
    (main%precondition s@$)
    (= result@0@00 (liba%limited $Snap.unit))))
  :pattern ((main%limited s@$))
  :qid |quant-u-21927|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (main%limited s@$))) (=>
    (main%precondition s@$)
    (liba%precondition $Snap.unit)))
  :pattern ((main%limited s@$))
  :qid |quant-u-21928|)))
; ---------- FUNCTION libb----------
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@4@00 $Snap)
(assert (= $t@4@00 $Snap.unit))
; [eval] result == main()
; [eval] main()
(push) ; 2
(assert (main%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (main%precondition $Snap.unit))
(assert (= result@1@00 (main $Snap.unit)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (libb%limited s@$) (libb s@$))
  :pattern ((libb s@$))
  :qid |quant-u-21923|)))
(assert (forall ((s@$ $Snap)) (!
  (as libb%stateless  Bool)
  :pattern ((libb%limited s@$))
  :qid |quant-u-21924|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (libb%limited s@$))) (=>
    (libb%precondition s@$)
    (= result@1@00 (main%limited $Snap.unit))))
  :pattern ((libb%limited s@$))
  :qid |quant-u-21929|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@1@00 (libb%limited s@$))) (=>
    (libb%precondition s@$)
    (main%precondition $Snap.unit)))
  :pattern ((libb%limited s@$))
  :qid |quant-u-21930|)))
; ---------- FUNCTION liba----------
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 $Snap.unit))
; [eval] result == libb()
; [eval] libb()
(push) ; 2
(assert (libb%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (libb%precondition $Snap.unit))
(assert (= result@2@00 (libb $Snap.unit)))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (liba%limited s@$) (liba s@$))
  :pattern ((liba s@$))
  :qid |quant-u-21925|)))
(assert (forall ((s@$ $Snap)) (!
  (as liba%stateless  Bool)
  :pattern ((liba%limited s@$))
  :qid |quant-u-21926|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (liba%limited s@$))) (=>
    (liba%precondition s@$)
    (= result@2@00 (libb%limited $Snap.unit))))
  :pattern ((liba%limited s@$))
  :qid |quant-u-21931|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@2@00 (liba%limited s@$))) (=>
    (liba%precondition s@$)
    (libb%precondition $Snap.unit)))
  :pattern ((liba%limited s@$))
  :qid |quant-u-21932|)))