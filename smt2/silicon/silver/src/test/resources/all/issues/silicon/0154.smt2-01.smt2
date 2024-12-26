(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:40:26
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
(declare-fun Nodet$ ($Snap $Ref) Int)
(declare-fun Nodet$%limited ($Snap $Ref) Int)
(declare-fun Nodet$%stateless ($Ref) Bool)
(declare-fun Nodet$%precondition ($Snap $Ref) Bool)
(declare-fun Nodet2$ ($Snap $Ref) Int)
(declare-fun Nodet2$%limited ($Snap $Ref) Int)
(declare-fun Nodet2$%stateless ($Ref) Bool)
(declare-fun Nodet2$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Nodevalid$%trigger ($Snap $Ref) Bool)
(declare-fun Nodep$%trigger ($Snap $Ref) Bool)
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
(declare-fun $k@4@00 () $Perm)
(declare-fun joined_unfolding@9@00 ($Snap $Ref) Int)
(declare-fun $k@5@00 () $Perm)
(declare-fun $k@6@00 () $Perm)
(declare-fun $k@7@00 () $Perm)
(declare-fun $k@8@00 () $Perm)
(declare-fun $k@10@00 () $Perm)
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (Nodet$%limited s@$ this@0@00) (Nodet$ s@$ this@0@00))
  :pattern ((Nodet$ s@$ this@0@00))
  :qid |quant-u-24508|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (Nodet$%stateless this@0@00)
  :pattern ((Nodet$%limited s@$ this@0@00))
  :qid |quant-u-24509|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@4@00)
    ($Perm.isReadVar $k@5@00)
    ($Perm.isReadVar $k@6@00)
    ($Perm.isReadVar $k@7@00)
    ($Perm.isReadVar $k@8@00)
    (=>
      (Nodet$%precondition s@$ this@0@00)
      (=
        (Nodet$ s@$ this@0@00)
        (Nodet$%limited ($Snap.combine $Snap.unit ($Snap.second s@$)) this@0@00))))
  :pattern ((Nodet$ s@$ this@0@00))
  :pattern ((Nodet$%stateless this@0@00) (Nodevalid$%trigger ($Snap.second s@$) this@0@00))
  :qid |quant-u-24512|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=>
    (Nodet$%precondition s@$ this@0@00)
    (Nodet$%precondition ($Snap.combine $Snap.unit ($Snap.second s@$)) this@0@00))
  :pattern ((Nodet$ s@$ this@0@00))
  :qid |quant-u-24513|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  (= (Nodet2$%limited s@$ this@2@00) (Nodet2$ s@$ this@2@00))
  :pattern ((Nodet2$ s@$ this@2@00))
  :qid |quant-u-24510|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref)) (!
  (Nodet2$%stateless this@2@00)
  :pattern ((Nodet2$%limited s@$ this@2@00))
  :qid |quant-u-24511|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------