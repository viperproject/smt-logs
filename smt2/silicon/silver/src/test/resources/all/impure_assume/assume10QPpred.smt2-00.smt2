(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:38:48
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Inverse_13 0)
(declare-sort Inverse_19 0)
(declare-sort Inverse_20 0)
(declare-sort Inverse_12 0)
(declare-sort Inverse_17 0)
(declare-sort Inverse_15 0)
(declare-sort __ns__impure_assume_rewriter 0)
(declare-sort Inverse_16 0)
(declare-sort Inverse_14 0)
(declare-sort Inverse_18 0)
(declare-sort Inverse_11 0)
(declare-sort Inverse_21 0)
(declare-sort $PSF<p> 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.Inverse_13To$Snap (Inverse_13) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_13 ($Snap) Inverse_13)
(assert (forall ((x Inverse_13)) (!
    (= x ($SortWrappers.$SnapToInverse_13($SortWrappers.Inverse_13To$Snap x)))
    :pattern (($SortWrappers.Inverse_13To$Snap x))
    :qid |$Snap.$SnapToInverse_13To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_13To$Snap($SortWrappers.$SnapToInverse_13 x)))
    :pattern (($SortWrappers.$SnapToInverse_13 x))
    :qid |$Snap.Inverse_13To$SnapToInverse_13|
    )))
(declare-fun $SortWrappers.Inverse_19To$Snap (Inverse_19) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_19 ($Snap) Inverse_19)
(assert (forall ((x Inverse_19)) (!
    (= x ($SortWrappers.$SnapToInverse_19($SortWrappers.Inverse_19To$Snap x)))
    :pattern (($SortWrappers.Inverse_19To$Snap x))
    :qid |$Snap.$SnapToInverse_19To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_19To$Snap($SortWrappers.$SnapToInverse_19 x)))
    :pattern (($SortWrappers.$SnapToInverse_19 x))
    :qid |$Snap.Inverse_19To$SnapToInverse_19|
    )))
(declare-fun $SortWrappers.Inverse_20To$Snap (Inverse_20) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_20 ($Snap) Inverse_20)
(assert (forall ((x Inverse_20)) (!
    (= x ($SortWrappers.$SnapToInverse_20($SortWrappers.Inverse_20To$Snap x)))
    :pattern (($SortWrappers.Inverse_20To$Snap x))
    :qid |$Snap.$SnapToInverse_20To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_20To$Snap($SortWrappers.$SnapToInverse_20 x)))
    :pattern (($SortWrappers.$SnapToInverse_20 x))
    :qid |$Snap.Inverse_20To$SnapToInverse_20|
    )))
(declare-fun $SortWrappers.Inverse_12To$Snap (Inverse_12) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_12 ($Snap) Inverse_12)
(assert (forall ((x Inverse_12)) (!
    (= x ($SortWrappers.$SnapToInverse_12($SortWrappers.Inverse_12To$Snap x)))
    :pattern (($SortWrappers.Inverse_12To$Snap x))
    :qid |$Snap.$SnapToInverse_12To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_12To$Snap($SortWrappers.$SnapToInverse_12 x)))
    :pattern (($SortWrappers.$SnapToInverse_12 x))
    :qid |$Snap.Inverse_12To$SnapToInverse_12|
    )))
(declare-fun $SortWrappers.Inverse_17To$Snap (Inverse_17) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_17 ($Snap) Inverse_17)
(assert (forall ((x Inverse_17)) (!
    (= x ($SortWrappers.$SnapToInverse_17($SortWrappers.Inverse_17To$Snap x)))
    :pattern (($SortWrappers.Inverse_17To$Snap x))
    :qid |$Snap.$SnapToInverse_17To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_17To$Snap($SortWrappers.$SnapToInverse_17 x)))
    :pattern (($SortWrappers.$SnapToInverse_17 x))
    :qid |$Snap.Inverse_17To$SnapToInverse_17|
    )))
(declare-fun $SortWrappers.Inverse_15To$Snap (Inverse_15) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_15 ($Snap) Inverse_15)
(assert (forall ((x Inverse_15)) (!
    (= x ($SortWrappers.$SnapToInverse_15($SortWrappers.Inverse_15To$Snap x)))
    :pattern (($SortWrappers.Inverse_15To$Snap x))
    :qid |$Snap.$SnapToInverse_15To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_15To$Snap($SortWrappers.$SnapToInverse_15 x)))
    :pattern (($SortWrappers.$SnapToInverse_15 x))
    :qid |$Snap.Inverse_15To$SnapToInverse_15|
    )))
(declare-fun $SortWrappers.__ns__impure_assume_rewriterTo$Snap (__ns__impure_assume_rewriter) $Snap)
(declare-fun $SortWrappers.$SnapTo__ns__impure_assume_rewriter ($Snap) __ns__impure_assume_rewriter)
(assert (forall ((x __ns__impure_assume_rewriter)) (!
    (= x ($SortWrappers.$SnapTo__ns__impure_assume_rewriter($SortWrappers.__ns__impure_assume_rewriterTo$Snap x)))
    :pattern (($SortWrappers.__ns__impure_assume_rewriterTo$Snap x))
    :qid |$Snap.$SnapTo__ns__impure_assume_rewriterTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.__ns__impure_assume_rewriterTo$Snap($SortWrappers.$SnapTo__ns__impure_assume_rewriter x)))
    :pattern (($SortWrappers.$SnapTo__ns__impure_assume_rewriter x))
    :qid |$Snap.__ns__impure_assume_rewriterTo$SnapTo__ns__impure_assume_rewriter|
    )))
(declare-fun $SortWrappers.Inverse_16To$Snap (Inverse_16) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_16 ($Snap) Inverse_16)
(assert (forall ((x Inverse_16)) (!
    (= x ($SortWrappers.$SnapToInverse_16($SortWrappers.Inverse_16To$Snap x)))
    :pattern (($SortWrappers.Inverse_16To$Snap x))
    :qid |$Snap.$SnapToInverse_16To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_16To$Snap($SortWrappers.$SnapToInverse_16 x)))
    :pattern (($SortWrappers.$SnapToInverse_16 x))
    :qid |$Snap.Inverse_16To$SnapToInverse_16|
    )))
(declare-fun $SortWrappers.Inverse_14To$Snap (Inverse_14) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_14 ($Snap) Inverse_14)
(assert (forall ((x Inverse_14)) (!
    (= x ($SortWrappers.$SnapToInverse_14($SortWrappers.Inverse_14To$Snap x)))
    :pattern (($SortWrappers.Inverse_14To$Snap x))
    :qid |$Snap.$SnapToInverse_14To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_14To$Snap($SortWrappers.$SnapToInverse_14 x)))
    :pattern (($SortWrappers.$SnapToInverse_14 x))
    :qid |$Snap.Inverse_14To$SnapToInverse_14|
    )))
(declare-fun $SortWrappers.Inverse_18To$Snap (Inverse_18) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_18 ($Snap) Inverse_18)
(assert (forall ((x Inverse_18)) (!
    (= x ($SortWrappers.$SnapToInverse_18($SortWrappers.Inverse_18To$Snap x)))
    :pattern (($SortWrappers.Inverse_18To$Snap x))
    :qid |$Snap.$SnapToInverse_18To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_18To$Snap($SortWrappers.$SnapToInverse_18 x)))
    :pattern (($SortWrappers.$SnapToInverse_18 x))
    :qid |$Snap.Inverse_18To$SnapToInverse_18|
    )))
(declare-fun $SortWrappers.Inverse_11To$Snap (Inverse_11) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_11 ($Snap) Inverse_11)
(assert (forall ((x Inverse_11)) (!
    (= x ($SortWrappers.$SnapToInverse_11($SortWrappers.Inverse_11To$Snap x)))
    :pattern (($SortWrappers.Inverse_11To$Snap x))
    :qid |$Snap.$SnapToInverse_11To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_11To$Snap($SortWrappers.$SnapToInverse_11 x)))
    :pattern (($SortWrappers.$SnapToInverse_11 x))
    :qid |$Snap.Inverse_11To$SnapToInverse_11|
    )))
(declare-fun $SortWrappers.Inverse_21To$Snap (Inverse_21) $Snap)
(declare-fun $SortWrappers.$SnapToInverse_21 ($Snap) Inverse_21)
(assert (forall ((x Inverse_21)) (!
    (= x ($SortWrappers.$SnapToInverse_21($SortWrappers.Inverse_21To$Snap x)))
    :pattern (($SortWrappers.Inverse_21To$Snap x))
    :qid |$Snap.$SnapToInverse_21To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Inverse_21To$Snap($SortWrappers.$SnapToInverse_21 x)))
    :pattern (($SortWrappers.$SnapToInverse_21 x))
    :qid |$Snap.Inverse_21To$SnapToInverse_21|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<p>To$Snap ($PSF<p>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p> ($Snap) $PSF<p>)
(assert (forall ((x $PSF<p>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p>($SortWrappers.$PSF<p>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p>To$Snap($SortWrappers.$SnapTo$PSF<p> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p> x))
    :qid |$Snap.$PSF<p>To$SnapTo$PSF<p>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
(declare-fun __iar__assume_helper_1<Perm> (Bool $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_2<Perm> (Bool Bool $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_3<Perm> (Bool Bool Bool $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_4<Perm> (Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_5<Perm> (Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_6<Perm> (Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_7<Perm> (Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_8<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_9<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_10<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun inv_21_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_21_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_21_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_12_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_12_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_12_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_19_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_19_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_19_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_14_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_14_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_14_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_17_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_17_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_17_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_15_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_15_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_15_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_11_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_11_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_11_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_20_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_20_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_20_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_13_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_13_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_13_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_18_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_18_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_18_2<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_16_0<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_16_1<Ref> ($Ref $Ref $Ref) $Ref)
(declare-fun inv_16_2<Ref> ($Ref $Ref $Ref) $Ref)
; /predicate_snap_functions_declarations.smt2 [p: Snap]
(declare-fun $PSF.domain_p ($PSF<p>) Set<$Snap>)
(declare-fun $PSF.lookup_p ($PSF<p> $Snap) $Snap)
(declare-fun $PSF.after_p ($PSF<p> $PSF<p>) Bool)
(declare-fun $PSF.loc_p ($Snap $Snap) Bool)
(declare-fun $PSF.perm_p ($PPM $Snap) $Perm)
(declare-const $psfTOP_p $PSF<p>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p%trigger ($Snap $Ref $Ref $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((c_1 Bool) (p_1 $Perm) (p_0 $Perm)) (!
  (= (__iar__assume_helper_1<Perm> c_1 p_1 p_0) (+ p_0 (ite c_1 p_1 $Perm.No)))
  :pattern ((__iar__assume_helper_1<Perm> c_1 p_1 p_0))
  :qid |prog.__iar__assume_helper_1_axiom|)))
(assert (forall ((c_2 Bool) (c_1 Bool) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_2<Perm> c_2 c_1 p_2 p_1 p_0)
    (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No)))
  :pattern ((__iar__assume_helper_2<Perm> c_2 c_1 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_2_axiom|)))
(assert (forall ((c_3 Bool) (c_2 Bool) (c_1 Bool) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_3<Perm> c_3 c_2 c_1 p_3 p_2 p_1 p_0)
    (+
      (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
      (ite c_3 p_3 $Perm.No)))
  :pattern ((__iar__assume_helper_3<Perm> c_3 c_2 c_1 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_3_axiom|)))
(assert (forall ((c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_4<Perm> c_4 c_3 c_2 c_1 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
        (ite c_3 p_3 $Perm.No))
      (ite c_4 p_4 $Perm.No)))
  :pattern ((__iar__assume_helper_4<Perm> c_4 c_3 c_2 c_1 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_4_axiom|)))
(assert (forall ((c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_5<Perm> c_5 c_4 c_3 c_2 c_1 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
          (ite c_3 p_3 $Perm.No))
        (ite c_4 p_4 $Perm.No))
      (ite c_5 p_5 $Perm.No)))
  :pattern ((__iar__assume_helper_5<Perm> c_5 c_4 c_3 c_2 c_1 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_5_axiom|)))
(assert (forall ((c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_6<Perm> c_6 c_5 c_4 c_3 c_2 c_1 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
            (ite c_3 p_3 $Perm.No))
          (ite c_4 p_4 $Perm.No))
        (ite c_5 p_5 $Perm.No))
      (ite c_6 p_6 $Perm.No)))
  :pattern ((__iar__assume_helper_6<Perm> c_6 c_5 c_4 c_3 c_2 c_1 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_6_axiom|)))
(assert (forall ((c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_7<Perm> c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
              (ite c_3 p_3 $Perm.No))
            (ite c_4 p_4 $Perm.No))
          (ite c_5 p_5 $Perm.No))
        (ite c_6 p_6 $Perm.No))
      (ite c_7 p_7 $Perm.No)))
  :pattern ((__iar__assume_helper_7<Perm> c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_7_axiom|)))
(assert (forall ((c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_8<Perm> c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                (ite c_3 p_3 $Perm.No))
              (ite c_4 p_4 $Perm.No))
            (ite c_5 p_5 $Perm.No))
          (ite c_6 p_6 $Perm.No))
        (ite c_7 p_7 $Perm.No))
      (ite c_8 p_8 $Perm.No)))
  :pattern ((__iar__assume_helper_8<Perm> c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_8_axiom|)))
(assert (forall ((c_9 Bool) (c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_9 $Perm) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_9<Perm> c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+
                  (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                  (ite c_3 p_3 $Perm.No))
                (ite c_4 p_4 $Perm.No))
              (ite c_5 p_5 $Perm.No))
            (ite c_6 p_6 $Perm.No))
          (ite c_7 p_7 $Perm.No))
        (ite c_8 p_8 $Perm.No))
      (ite c_9 p_9 $Perm.No)))
  :pattern ((__iar__assume_helper_9<Perm> c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_9_axiom|)))
(assert (forall ((c_10 Bool) (c_9 Bool) (c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_10 $Perm) (p_9 $Perm) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_10<Perm> c_10 c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_10 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+
                  (+
                    (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                    (ite c_3 p_3 $Perm.No))
                  (ite c_4 p_4 $Perm.No))
                (ite c_5 p_5 $Perm.No))
              (ite c_6 p_6 $Perm.No))
            (ite c_7 p_7 $Perm.No))
          (ite c_8 p_8 $Perm.No))
        (ite c_9 p_9 $Perm.No))
      (ite c_10 p_10 $Perm.No)))
  :pattern ((__iar__assume_helper_10<Perm> c_10 c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_10 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_10_axiom|)))
; /predicate_snap_functions_axioms.smt2 [p: Snap]
(assert (forall ((vs $PSF<p>) (ws $PSF<p>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p vs) ($PSF.domain_p ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p vs))
            (= ($PSF.lookup_p vs x) ($PSF.lookup_p ws x)))
          :pattern (($PSF.lookup_p vs x) ($PSF.lookup_p ws x))
          :qid |qp.$PSF<p>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p>To$Snap vs)
              ($SortWrappers.$PSF<p>To$Snap ws)
              )
    :qid |qp.$PSF<p>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p pm s))
    :pattern (($PSF.perm_p pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_p f s) true)
    :pattern (($PSF.loc_p f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- p ----------
(declare-const x@0@00 $Ref)
(declare-const y@1@00 $Ref)
(declare-const z@2@00 $Ref)
