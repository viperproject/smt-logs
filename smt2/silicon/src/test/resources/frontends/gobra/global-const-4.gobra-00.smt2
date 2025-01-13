(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:35:43
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
(declare-sort ConstantmultiConst2_pkg_G 0)
(declare-sort ConstantTypedIntConst_pkg_G 0)
(declare-sort ConstantmultiConst1_pkg_G 0)
(declare-sort ConstantSimpleTypedBoolConst_pkg_G 0)
(declare-sort ConstantDoesDeclOrderMatter_pkg_G 0)
(declare-sort ConstantBoolExprConst_pkg_G 0)
(declare-sort ConstantmultiConst3_pkg_G 0)
(declare-sort ConstantSimpleUntypedBoolConst_pkg_G 0)
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
(declare-fun $SortWrappers.ConstantmultiConst2_pkg_GTo$Snap (ConstantmultiConst2_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantmultiConst2_pkg_G ($Snap) ConstantmultiConst2_pkg_G)
(assert (forall ((x ConstantmultiConst2_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantmultiConst2_pkg_G($SortWrappers.ConstantmultiConst2_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantmultiConst2_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantmultiConst2_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantmultiConst2_pkg_GTo$Snap($SortWrappers.$SnapToConstantmultiConst2_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantmultiConst2_pkg_G x))
    :qid |$Snap.ConstantmultiConst2_pkg_GTo$SnapToConstantmultiConst2_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantTypedIntConst_pkg_GTo$Snap (ConstantTypedIntConst_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantTypedIntConst_pkg_G ($Snap) ConstantTypedIntConst_pkg_G)
(assert (forall ((x ConstantTypedIntConst_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantTypedIntConst_pkg_G($SortWrappers.ConstantTypedIntConst_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantTypedIntConst_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantTypedIntConst_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantTypedIntConst_pkg_GTo$Snap($SortWrappers.$SnapToConstantTypedIntConst_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantTypedIntConst_pkg_G x))
    :qid |$Snap.ConstantTypedIntConst_pkg_GTo$SnapToConstantTypedIntConst_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantmultiConst1_pkg_GTo$Snap (ConstantmultiConst1_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantmultiConst1_pkg_G ($Snap) ConstantmultiConst1_pkg_G)
(assert (forall ((x ConstantmultiConst1_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantmultiConst1_pkg_G($SortWrappers.ConstantmultiConst1_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantmultiConst1_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantmultiConst1_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantmultiConst1_pkg_GTo$Snap($SortWrappers.$SnapToConstantmultiConst1_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantmultiConst1_pkg_G x))
    :qid |$Snap.ConstantmultiConst1_pkg_GTo$SnapToConstantmultiConst1_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantSimpleTypedBoolConst_pkg_GTo$Snap (ConstantSimpleTypedBoolConst_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantSimpleTypedBoolConst_pkg_G ($Snap) ConstantSimpleTypedBoolConst_pkg_G)
(assert (forall ((x ConstantSimpleTypedBoolConst_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantSimpleTypedBoolConst_pkg_G($SortWrappers.ConstantSimpleTypedBoolConst_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantSimpleTypedBoolConst_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantSimpleTypedBoolConst_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantSimpleTypedBoolConst_pkg_GTo$Snap($SortWrappers.$SnapToConstantSimpleTypedBoolConst_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantSimpleTypedBoolConst_pkg_G x))
    :qid |$Snap.ConstantSimpleTypedBoolConst_pkg_GTo$SnapToConstantSimpleTypedBoolConst_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantDoesDeclOrderMatter_pkg_GTo$Snap (ConstantDoesDeclOrderMatter_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantDoesDeclOrderMatter_pkg_G ($Snap) ConstantDoesDeclOrderMatter_pkg_G)
(assert (forall ((x ConstantDoesDeclOrderMatter_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantDoesDeclOrderMatter_pkg_G($SortWrappers.ConstantDoesDeclOrderMatter_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantDoesDeclOrderMatter_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantDoesDeclOrderMatter_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantDoesDeclOrderMatter_pkg_GTo$Snap($SortWrappers.$SnapToConstantDoesDeclOrderMatter_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantDoesDeclOrderMatter_pkg_G x))
    :qid |$Snap.ConstantDoesDeclOrderMatter_pkg_GTo$SnapToConstantDoesDeclOrderMatter_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantBoolExprConst_pkg_GTo$Snap (ConstantBoolExprConst_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantBoolExprConst_pkg_G ($Snap) ConstantBoolExprConst_pkg_G)
(assert (forall ((x ConstantBoolExprConst_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantBoolExprConst_pkg_G($SortWrappers.ConstantBoolExprConst_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantBoolExprConst_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantBoolExprConst_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantBoolExprConst_pkg_GTo$Snap($SortWrappers.$SnapToConstantBoolExprConst_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantBoolExprConst_pkg_G x))
    :qid |$Snap.ConstantBoolExprConst_pkg_GTo$SnapToConstantBoolExprConst_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantmultiConst3_pkg_GTo$Snap (ConstantmultiConst3_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantmultiConst3_pkg_G ($Snap) ConstantmultiConst3_pkg_G)
(assert (forall ((x ConstantmultiConst3_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantmultiConst3_pkg_G($SortWrappers.ConstantmultiConst3_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantmultiConst3_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantmultiConst3_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantmultiConst3_pkg_GTo$Snap($SortWrappers.$SnapToConstantmultiConst3_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantmultiConst3_pkg_G x))
    :qid |$Snap.ConstantmultiConst3_pkg_GTo$SnapToConstantmultiConst3_pkg_G|
    )))
(declare-fun $SortWrappers.ConstantSimpleUntypedBoolConst_pkg_GTo$Snap (ConstantSimpleUntypedBoolConst_pkg_G) $Snap)
(declare-fun $SortWrappers.$SnapToConstantSimpleUntypedBoolConst_pkg_G ($Snap) ConstantSimpleUntypedBoolConst_pkg_G)
(assert (forall ((x ConstantSimpleUntypedBoolConst_pkg_G)) (!
    (= x ($SortWrappers.$SnapToConstantSimpleUntypedBoolConst_pkg_G($SortWrappers.ConstantSimpleUntypedBoolConst_pkg_GTo$Snap x)))
    :pattern (($SortWrappers.ConstantSimpleUntypedBoolConst_pkg_GTo$Snap x))
    :qid |$Snap.$SnapToConstantSimpleUntypedBoolConst_pkg_GTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ConstantSimpleUntypedBoolConst_pkg_GTo$Snap($SortWrappers.$SnapToConstantSimpleUntypedBoolConst_pkg_G x)))
    :pattern (($SortWrappers.$SnapToConstantSimpleUntypedBoolConst_pkg_G x))
    :qid |$Snap.ConstantSimpleUntypedBoolConst_pkg_GTo$SnapToConstantSimpleUntypedBoolConst_pkg_G|
    )))
; ////////// Symbols
(declare-const constant_multiConst1_pkg_G<Int> Int)
(declare-const constant_BoolExprConst_pkg_G<Bool> Bool)
(declare-const constant_SimpleTypedBoolConst_pkg_G<Bool> Bool)
(declare-const constant_multiConst2_pkg_G<Bool> Bool)
(declare-const constant_DoesDeclOrderMatter_pkg_G<Bool> Bool)
(declare-const constant_multiConst3_pkg_G<Int> Int)
(declare-const constant_TypedIntConst_pkg_G<Int> Int)
(declare-const constant_SimpleUntypedBoolConst_pkg_G<Bool> Bool)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (= (as constant_multiConst1_pkg_G<Int>  Int) 1))
(assert (= (as constant_BoolExprConst_pkg_G<Bool>  Bool) true))
(assert (= (as constant_SimpleTypedBoolConst_pkg_G<Bool>  Bool) true))
(assert (= (as constant_multiConst2_pkg_G<Bool>  Bool) false))
(assert (= (as constant_DoesDeclOrderMatter_pkg_G<Bool>  Bool) true))
(assert (= (as constant_multiConst3_pkg_G<Int>  Int) 3))
(assert (= (as constant_TypedIntConst_pkg_G<Int>  Int) 42))
(assert (= (as constant_SimpleUntypedBoolConst_pkg_G<Bool>  Bool) true))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
