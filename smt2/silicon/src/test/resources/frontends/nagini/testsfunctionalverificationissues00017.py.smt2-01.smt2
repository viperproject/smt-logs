(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:23:08
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
(declare-sort Seq<PyType> 0)
(declare-sort Seq<Measure$> 0)
(declare-sort Seq<$Ref> 0)
(declare-sort Seq<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<_Name> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<Set<$Ref>> 0)
(declare-sort Set<$Snap> 0)
(declare-sort PyType 0)
(declare-sort SIFDomain<Ref> 0)
(declare-sort _list_ce_helper 0)
(declare-sort _Name 0)
(declare-sort Measure$ 0)
(declare-sort $FVF<list_acc> 0)
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
(declare-fun $SortWrappers.Seq<PyType>To$Snap (Seq<PyType>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<PyType> ($Snap) Seq<PyType>)
(assert (forall ((x Seq<PyType>)) (!
    (= x ($SortWrappers.$SnapToSeq<PyType>($SortWrappers.Seq<PyType>To$Snap x)))
    :pattern (($SortWrappers.Seq<PyType>To$Snap x))
    :qid |$Snap.$SnapToSeq<PyType>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<PyType>To$Snap($SortWrappers.$SnapToSeq<PyType> x)))
    :pattern (($SortWrappers.$SnapToSeq<PyType> x))
    :qid |$Snap.Seq<PyType>To$SnapToSeq<PyType>|
    )))
(declare-fun $SortWrappers.Seq<Measure$>To$Snap (Seq<Measure$>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Measure$> ($Snap) Seq<Measure$>)
(assert (forall ((x Seq<Measure$>)) (!
    (= x ($SortWrappers.$SnapToSeq<Measure$>($SortWrappers.Seq<Measure$>To$Snap x)))
    :pattern (($SortWrappers.Seq<Measure$>To$Snap x))
    :qid |$Snap.$SnapToSeq<Measure$>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Measure$>To$Snap($SortWrappers.$SnapToSeq<Measure$> x)))
    :pattern (($SortWrappers.$SnapToSeq<Measure$> x))
    :qid |$Snap.Seq<Measure$>To$SnapToSeq<Measure$>|
    )))
(declare-fun $SortWrappers.Seq<$Ref>To$Snap (Seq<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<$Ref> ($Snap) Seq<$Ref>)
(assert (forall ((x Seq<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSeq<$Ref>($SortWrappers.Seq<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Seq<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSeq<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<$Ref>To$Snap($SortWrappers.$SnapToSeq<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSeq<$Ref> x))
    :qid |$Snap.Seq<$Ref>To$SnapToSeq<$Ref>|
    )))
(declare-fun $SortWrappers.Seq<Int>To$Snap (Seq<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Int> ($Snap) Seq<Int>)
(assert (forall ((x Seq<Int>)) (!
    (= x ($SortWrappers.$SnapToSeq<Int>($SortWrappers.Seq<Int>To$Snap x)))
    :pattern (($SortWrappers.Seq<Int>To$Snap x))
    :qid |$Snap.$SnapToSeq<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Int>To$Snap($SortWrappers.$SnapToSeq<Int> x)))
    :pattern (($SortWrappers.$SnapToSeq<Int> x))
    :qid |$Snap.Seq<Int>To$SnapToSeq<Int>|
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
(declare-fun $SortWrappers.Set<_Name>To$Snap (Set<_Name>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<_Name> ($Snap) Set<_Name>)
(assert (forall ((x Set<_Name>)) (!
    (= x ($SortWrappers.$SnapToSet<_Name>($SortWrappers.Set<_Name>To$Snap x)))
    :pattern (($SortWrappers.Set<_Name>To$Snap x))
    :qid |$Snap.$SnapToSet<_Name>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<_Name>To$Snap($SortWrappers.$SnapToSet<_Name> x)))
    :pattern (($SortWrappers.$SnapToSet<_Name> x))
    :qid |$Snap.Set<_Name>To$SnapToSet<_Name>|
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
(declare-fun $SortWrappers.Set<Seq<$Ref>>To$Snap (Set<Seq<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Seq<$Ref>> ($Snap) Set<Seq<$Ref>>)
(assert (forall ((x Set<Seq<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Seq<$Ref>>($SortWrappers.Set<Seq<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Seq<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Seq<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Seq<$Ref>>To$Snap($SortWrappers.$SnapToSet<Seq<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Seq<$Ref>> x))
    :qid |$Snap.Set<Seq<$Ref>>To$SnapToSet<Seq<$Ref>>|
    )))
(declare-fun $SortWrappers.Set<Set<$Ref>>To$Snap (Set<Set<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Set<$Ref>> ($Snap) Set<Set<$Ref>>)
(assert (forall ((x Set<Set<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Set<$Ref>>($SortWrappers.Set<Set<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Set<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Set<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Set<$Ref>>To$Snap($SortWrappers.$SnapToSet<Set<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Set<$Ref>> x))
    :qid |$Snap.Set<Set<$Ref>>To$SnapToSet<Set<$Ref>>|
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
(declare-fun $SortWrappers.PyTypeTo$Snap (PyType) $Snap)
(declare-fun $SortWrappers.$SnapToPyType ($Snap) PyType)
(assert (forall ((x PyType)) (!
    (= x ($SortWrappers.$SnapToPyType($SortWrappers.PyTypeTo$Snap x)))
    :pattern (($SortWrappers.PyTypeTo$Snap x))
    :qid |$Snap.$SnapToPyTypeTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.PyTypeTo$Snap($SortWrappers.$SnapToPyType x)))
    :pattern (($SortWrappers.$SnapToPyType x))
    :qid |$Snap.PyTypeTo$SnapToPyType|
    )))
(declare-fun $SortWrappers.SIFDomain<Ref>To$Snap (SIFDomain<Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSIFDomain<Ref> ($Snap) SIFDomain<Ref>)
(assert (forall ((x SIFDomain<Ref>)) (!
    (= x ($SortWrappers.$SnapToSIFDomain<Ref>($SortWrappers.SIFDomain<Ref>To$Snap x)))
    :pattern (($SortWrappers.SIFDomain<Ref>To$Snap x))
    :qid |$Snap.$SnapToSIFDomain<Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SIFDomain<Ref>To$Snap($SortWrappers.$SnapToSIFDomain<Ref> x)))
    :pattern (($SortWrappers.$SnapToSIFDomain<Ref> x))
    :qid |$Snap.SIFDomain<Ref>To$SnapToSIFDomain<Ref>|
    )))
(declare-fun $SortWrappers._list_ce_helperTo$Snap (_list_ce_helper) $Snap)
(declare-fun $SortWrappers.$SnapTo_list_ce_helper ($Snap) _list_ce_helper)
(assert (forall ((x _list_ce_helper)) (!
    (= x ($SortWrappers.$SnapTo_list_ce_helper($SortWrappers._list_ce_helperTo$Snap x)))
    :pattern (($SortWrappers._list_ce_helperTo$Snap x))
    :qid |$Snap.$SnapTo_list_ce_helperTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers._list_ce_helperTo$Snap($SortWrappers.$SnapTo_list_ce_helper x)))
    :pattern (($SortWrappers.$SnapTo_list_ce_helper x))
    :qid |$Snap._list_ce_helperTo$SnapTo_list_ce_helper|
    )))
(declare-fun $SortWrappers._NameTo$Snap (_Name) $Snap)
(declare-fun $SortWrappers.$SnapTo_Name ($Snap) _Name)
(assert (forall ((x _Name)) (!
    (= x ($SortWrappers.$SnapTo_Name($SortWrappers._NameTo$Snap x)))
    :pattern (($SortWrappers._NameTo$Snap x))
    :qid |$Snap.$SnapTo_NameTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers._NameTo$Snap($SortWrappers.$SnapTo_Name x)))
    :pattern (($SortWrappers.$SnapTo_Name x))
    :qid |$Snap._NameTo$SnapTo_Name|
    )))
(declare-fun $SortWrappers.Measure$To$Snap (Measure$) $Snap)
(declare-fun $SortWrappers.$SnapToMeasure$ ($Snap) Measure$)
(assert (forall ((x Measure$)) (!
    (= x ($SortWrappers.$SnapToMeasure$($SortWrappers.Measure$To$Snap x)))
    :pattern (($SortWrappers.Measure$To$Snap x))
    :qid |$Snap.$SnapToMeasure$To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Measure$To$Snap($SortWrappers.$SnapToMeasure$ x)))
    :pattern (($SortWrappers.$SnapToMeasure$ x))
    :qid |$Snap.Measure$To$SnapToMeasure$|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<list_acc>To$Snap ($FVF<list_acc>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<list_acc> ($Snap) $FVF<list_acc>)
(assert (forall ((x $FVF<list_acc>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<list_acc>($SortWrappers.$FVF<list_acc>To$Snap x)))
    :pattern (($SortWrappers.$FVF<list_acc>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<list_acc>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<list_acc>To$Snap($SortWrappers.$SnapTo$FVF<list_acc> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<list_acc> x))
    :qid |$Snap.$FVF<list_acc>To$SnapTo$FVF<list_acc>|
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
(declare-fun Set_card (Set<_Name>) Int)
(declare-const Set_empty Set<_Name>)
(declare-fun Set_in (_Name Set<_Name>) Bool)
(declare-fun Set_singleton (_Name) Set<_Name>)
(declare-fun Set_unionone (Set<_Name> _Name) Set<_Name>)
(declare-fun Set_union (Set<_Name> Set<_Name>) Set<_Name>)
(declare-fun Set_intersection (Set<_Name> Set<_Name>) Set<_Name>)
(declare-fun Set_difference (Set<_Name> Set<_Name>) Set<_Name>)
(declare-fun Set_subset (Set<_Name> Set<_Name>) Bool)
(declare-fun Set_equal (Set<_Name> Set<_Name>) Bool)
(declare-fun Set_skolem_diff (Set<_Name> Set<_Name>) _Name)
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
(declare-fun Set_card (Set<Seq<$Ref>>) Int)
(declare-const Set_empty Set<Seq<$Ref>>)
(declare-fun Set_in (Seq<$Ref> Set<Seq<$Ref>>) Bool)
(declare-fun Set_singleton (Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_unionone (Set<Seq<$Ref>> Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_union (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_intersection (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_difference (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_subset (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_equal (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Seq<$Ref>> Set<Seq<$Ref>>) Seq<$Ref>)
(declare-fun Set_card (Set<Set<$Ref>>) Int)
(declare-const Set_empty Set<Set<$Ref>>)
(declare-fun Set_in (Set<$Ref> Set<Set<$Ref>>) Bool)
(declare-fun Set_singleton (Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_unionone (Set<Set<$Ref>> Set<$Ref>) Set<Set<$Ref>>)
(declare-fun Set_union (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_intersection (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_difference (Set<Set<$Ref>> Set<Set<$Ref>>) Set<Set<$Ref>>)
(declare-fun Set_subset (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_equal (Set<Set<$Ref>> Set<Set<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Set<$Ref>> Set<Set<$Ref>>) Set<$Ref>)
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
(declare-fun Seq_length (Seq<PyType>) Int)
(declare-const Seq_empty Seq<PyType>)
(declare-fun Seq_singleton (PyType) Seq<PyType>)
(declare-fun Seq_append (Seq<PyType> Seq<PyType>) Seq<PyType>)
(declare-fun Seq_index (Seq<PyType> Int) PyType)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<PyType> Int PyType) Seq<PyType>)
(declare-fun Seq_take (Seq<PyType> Int) Seq<PyType>)
(declare-fun Seq_drop (Seq<PyType> Int) Seq<PyType>)
(declare-fun Seq_contains (Seq<PyType> PyType) Bool)
(declare-fun Seq_contains_trigger (Seq<PyType> PyType) Bool)
(declare-fun Seq_skolem (Seq<PyType> PyType) Int)
(declare-fun Seq_equal (Seq<PyType> Seq<PyType>) Bool)
(declare-fun Seq_skolem_diff (Seq<PyType> Seq<PyType>) Int)
(declare-fun Seq_length (Seq<Measure$>) Int)
(declare-const Seq_empty Seq<Measure$>)
(declare-fun Seq_singleton (Measure$) Seq<Measure$>)
(declare-fun Seq_append (Seq<Measure$> Seq<Measure$>) Seq<Measure$>)
(declare-fun Seq_index (Seq<Measure$> Int) Measure$)
(declare-fun Seq_update (Seq<Measure$> Int Measure$) Seq<Measure$>)
(declare-fun Seq_take (Seq<Measure$> Int) Seq<Measure$>)
(declare-fun Seq_drop (Seq<Measure$> Int) Seq<Measure$>)
(declare-fun Seq_contains (Seq<Measure$> Measure$) Bool)
(declare-fun Seq_contains_trigger (Seq<Measure$> Measure$) Bool)
(declare-fun Seq_skolem (Seq<Measure$> Measure$) Int)
(declare-fun Seq_equal (Seq<Measure$> Seq<Measure$>) Bool)
(declare-fun Seq_skolem_diff (Seq<Measure$> Seq<Measure$>) Int)
(declare-fun Seq_length (Seq<$Ref>) Int)
(declare-const Seq_empty Seq<$Ref>)
(declare-fun Seq_singleton ($Ref) Seq<$Ref>)
(declare-fun Seq_append (Seq<$Ref> Seq<$Ref>) Seq<$Ref>)
(declare-fun Seq_index (Seq<$Ref> Int) $Ref)
(declare-fun Seq_update (Seq<$Ref> Int $Ref) Seq<$Ref>)
(declare-fun Seq_take (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_drop (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_contains (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_contains_trigger (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_skolem (Seq<$Ref> $Ref) Int)
(declare-fun Seq_equal (Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun Seq_skolem_diff (Seq<$Ref> Seq<$Ref>) Int)
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
(declare-fun extends_<Bool> (PyType PyType) Bool)
(declare-fun issubtype<Bool> (PyType PyType) Bool)
(declare-fun isnotsubtype<Bool> (PyType PyType) Bool)
(declare-fun tuple_args<Seq<PyType>> (PyType) Seq<PyType>)
(declare-fun typeof<PyType> ($Ref) PyType)
(declare-fun get_basic<PyType> (PyType) PyType)
(declare-fun union_type_1<PyType> (PyType) PyType)
(declare-fun union_type_2<PyType> (PyType PyType) PyType)
(declare-fun union_type_3<PyType> (PyType PyType PyType) PyType)
(declare-fun union_type_4<PyType> (PyType PyType PyType PyType) PyType)
(declare-const object<PyType> PyType)
(declare-const list_basic<PyType> PyType)
(declare-fun list<PyType> (PyType) PyType)
(declare-fun list_arg<PyType> (PyType Int) PyType)
(declare-const set_basic<PyType> PyType)
(declare-fun set<PyType> (PyType) PyType)
(declare-fun set_arg<PyType> (PyType Int) PyType)
(declare-const dict_basic<PyType> PyType)
(declare-fun dict<PyType> (PyType PyType) PyType)
(declare-fun dict_arg<PyType> (PyType Int) PyType)
(declare-const int<PyType> PyType)
(declare-const float<PyType> PyType)
(declare-const bool<PyType> PyType)
(declare-const NoneType<PyType> PyType)
(declare-const Exception<PyType> PyType)
(declare-const ConnectionRefusedError<PyType> PyType)
(declare-const traceback<PyType> PyType)
(declare-const str<PyType> PyType)
(declare-const bytes<PyType> PyType)
(declare-const tuple_basic<PyType> PyType)
(declare-fun tuple<PyType> (Seq<PyType>) PyType)
(declare-fun tuple_arg<PyType> (PyType Int) PyType)
(declare-const PSeq_basic<PyType> PyType)
(declare-fun PSeq<PyType> (PyType) PyType)
(declare-fun PSeq_arg<PyType> (PyType Int) PyType)
(declare-const PSet_basic<PyType> PyType)
(declare-fun PSet<PyType> (PyType) PyType)
(declare-fun PSet_arg<PyType> (PyType Int) PyType)
(declare-const PMultiset_basic<PyType> PyType)
(declare-fun PMultiset<PyType> (PyType) PyType)
(declare-fun PMultiset_arg<PyType> (PyType Int) PyType)
(declare-const slice<PyType> PyType)
(declare-const py_range<PyType> PyType)
(declare-const Iterator_basic<PyType> PyType)
(declare-fun Iterator<PyType> (PyType) PyType)
(declare-fun Iterator_arg<PyType> (PyType Int) PyType)
(declare-const Thread_0<PyType> PyType)
(declare-const LevelType<PyType> PyType)
(declare-const type<PyType> PyType)
(declare-const Place<PyType> PyType)
(declare-const __prim__Seq_type<PyType> PyType)
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
(declare-fun Low<Bool> ($Ref) Bool)
(declare-fun seq_ref_length<Int> (Seq<$Ref>) Int)
(declare-fun seq_ref_index<Ref> (Seq<$Ref> Int) $Ref)
(declare-fun _combine<_Name> (_Name _Name) _Name)
(declare-fun _single<_Name> (Int) _Name)
(declare-fun _get_combined_prefix<_Name> (_Name) _Name)
(declare-fun _get_combined_name<_Name> (_Name) _Name)
(declare-fun _get_value<Int> (_Name) Int)
(declare-fun _name_type<Bool> (_Name) Bool)
(declare-fun _is_single<Bool> (_Name) Bool)
(declare-fun _is_combined<Bool> (_Name) Bool)
; /field_value_functions_declarations.smt2 [list_acc: Seq[Ref]]
(declare-fun $FVF.domain_list_acc ($FVF<list_acc>) Set<$Ref>)
(declare-fun $FVF.lookup_list_acc ($FVF<list_acc> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_list_acc ($FVF<list_acc> $FVF<list_acc>) Bool)
(declare-fun $FVF.loc_list_acc (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_list_acc ($FPM $Ref) $Perm)
(declare-const $fvfTOP_list_acc $FVF<list_acc>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun py_range___val__ ($Snap $Ref) Seq<Int>)
(declare-fun py_range___val__%limited ($Snap $Ref) Seq<Int>)
(declare-fun py_range___val__%stateless ($Ref) Bool)
(declare-fun py_range___val__%precondition ($Snap $Ref) Bool)
(declare-fun int___unbox__ ($Snap $Ref) Int)
(declare-fun int___unbox__%limited ($Snap $Ref) Int)
(declare-fun int___unbox__%stateless ($Ref) Bool)
(declare-fun int___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun bool___unbox__ ($Snap $Ref) Bool)
(declare-fun bool___unbox__%limited ($Snap $Ref) Bool)
(declare-fun bool___unbox__%stateless ($Ref) Bool)
(declare-fun bool___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__bool___box__ ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%limited ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%stateless (Bool) Bool)
(declare-fun __prim__bool___box__%precondition ($Snap Bool) Bool)
(declare-fun __prim__int___box__ ($Snap Int) $Ref)
(declare-fun __prim__int___box__%limited ($Snap Int) $Ref)
(declare-fun __prim__int___box__%stateless (Int) Bool)
(declare-fun __prim__int___box__%precondition ($Snap Int) Bool)
(declare-fun py_range___len__ ($Snap $Ref) Int)
(declare-fun py_range___len__%limited ($Snap $Ref) Int)
(declare-fun py_range___len__%stateless ($Ref) Bool)
(declare-fun py_range___len__%precondition ($Snap $Ref) Bool)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun py_range___stop__ ($Snap $Ref) Int)
(declare-fun py_range___stop__%limited ($Snap $Ref) Int)
(declare-fun py_range___stop__%stateless ($Ref) Bool)
(declare-fun py_range___stop__%precondition ($Snap $Ref) Bool)
(declare-fun py_range___start__ ($Snap $Ref) Int)
(declare-fun py_range___start__%limited ($Snap $Ref) Int)
(declare-fun py_range___start__%stateless ($Ref) Bool)
(declare-fun py_range___start__%precondition ($Snap $Ref) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun py_range___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun py_range___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun py_range___sil_seq__%stateless ($Ref) Bool)
(declare-fun py_range___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun py_range___create__ ($Snap Int Int Int) $Ref)
(declare-fun py_range___create__%limited ($Snap Int Int Int) $Ref)
(declare-fun py_range___create__%stateless (Int Int Int) Bool)
(declare-fun py_range___create__%precondition ($Snap Int Int Int) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun int___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%stateless ($Ref $Ref) Bool)
(declare-fun int___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun __name__ ($Snap) $Ref)
(declare-fun __name__%limited ($Snap) $Ref)
(declare-const __name__%stateless Bool)
(declare-fun __name__%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun MustTerminate%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
; ////////// Axioms
(assert (forall ((s Seq<PyType>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<PyType>)) 0))
(assert (forall ((s Seq<PyType>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<PyType>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e PyType)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<PyType>)))
      (not (= s1 (as Seq_empty  Seq<PyType>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<PyType>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<PyType>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e PyType)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_add i j) (+ i j))
  :pattern ((Seq_add i j))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_sub i j) (- i j))
  :pattern ((Seq_sub i j))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<PyType>)))
      (and
        (not (= s1 (as Seq_empty  Seq<PyType>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<PyType>)))
      (and
        (not (= s1 (as Seq_empty  Seq<PyType>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<PyType>)))
      (and
        (not (= s1 (as Seq_empty  Seq<PyType>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<PyType>) (i Int) (v PyType)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<PyType>) (i Int) (v PyType) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<PyType>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<PyType>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<PyType>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<PyType>) (t Seq<PyType>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<PyType>) (t Seq<PyType>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<PyType>) (t Seq<PyType>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<PyType>) (t Seq<PyType>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<PyType>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<PyType>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<PyType>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<PyType>) (x PyType)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<PyType>) (x PyType) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<PyType>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<PyType>) (s1 Seq<PyType>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<PyType>) (b Seq<PyType>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x PyType) (y PyType)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((s Seq<Measure$>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Measure$>)) 0))
(assert (forall ((s Seq<Measure$>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Measure$>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Measure$)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Measure$>)))
      (not (= s1 (as Seq_empty  Seq<Measure$>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Measure$>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Measure$>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Measure$)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Measure$>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Measure$>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Measure$>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Measure$>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Measure$>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Measure$>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Measure$>) (i Int) (v Measure$)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Measure$>) (i Int) (v Measure$) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<Measure$>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Measure$>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Measure$>) (t Seq<Measure$>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Measure$>) (t Seq<Measure$>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Measure$>) (t Seq<Measure$>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Measure$>) (t Seq<Measure$>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Measure$>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Measure$>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Measure$>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Measure$>) (x Measure$)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Measure$>) (x Measure$) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Measure$>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Measure$>) (s1 Seq<Measure$>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<Measure$>) (b Seq<Measure$>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Measure$) (y Measure$)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((s Seq<$Ref>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<$Ref>)) 0))
(assert (forall ((s Seq<$Ref>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (not (= s1 (as Seq_empty  Seq<$Ref>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<$Ref>) (b Seq<$Ref>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x $Ref) (y $Ref)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((s Seq<Int>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) 0))
(assert (forall ((s Seq<Int>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (not (= s1 (as Seq_empty  Seq<Int>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Int>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (x Int)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Int>) (x Int) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<Int>) (b Seq<Int>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Int) (y Int)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((min_ Int) (max Int)) (!
  (and
    (=> (< min_ max) (= (Seq_length (Seq_range min_ max)) (- max min_)))
    (=> (<= max min_) (= (Seq_length (Seq_range min_ max)) 0)))
  :pattern ((Seq_length (Seq_range min_ max)))
  :qid |$Seq[Int]_prog.ranged_seq_length|)))
(assert (forall ((min_ Int) (max Int) (j Int)) (!
  (=>
    (and (<= 0 j) (< j (- max min_)))
    (= (Seq_index (Seq_range min_ max) j) (+ min_ j)))
  :pattern ((Seq_index (Seq_range min_ max) j))
  :qid |$Seq[Int]_prog.ranged_seq_index|)))
(assert (forall ((min_ Int) (max Int) (v Int)) (!
  (= (Seq_contains (Seq_range min_ max) v) (and (<= min_ v) (< v max)))
  :pattern ((Seq_contains (Seq_range min_ max) v))
  :qid |$Seq[Int]_prog.ranged_seq_contains|)))
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
(assert (forall ((s Set<_Name>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o _Name)) (!
  (not (Set_in o (as Set_empty  Set<_Name>)))
  :pattern ((Set_in o (as Set_empty  Set<_Name>)))
  )))
(assert (forall ((s Set<_Name>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<_Name>)))
    (=> (not (= (Set_card s) 0)) (exists ((x _Name))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r _Name)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r _Name) (o _Name)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r _Name)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<_Name>) (x _Name) (o _Name)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<_Name>) (x _Name)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<_Name>) (x _Name) (y _Name)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<_Name>) (x _Name)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<_Name>) (x _Name)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (o _Name)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (y _Name)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (y _Name)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (o _Name)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (o _Name)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>) (y _Name)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
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
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
  (=
    (Set_subset a b)
    (forall ((o _Name)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
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
(assert (forall ((a Set<_Name>) (b Set<_Name>)) (!
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
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Seq<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  )))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Seq<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Seq<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Seq<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Set<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Set<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Set<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Set<$Ref>>)))
  )))
(assert (forall ((s Set<Set<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Set<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Set<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Set<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (x Set<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (o Set<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>) (y Set<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Set<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
(assert (forall ((a Set<Set<$Ref>>) (b Set<Set<$Ref>>)) (!
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
(assert (forall ((sub PyType) (middle PyType) (super PyType)) (!
  (=>
    (and (issubtype<Bool> sub middle) (issubtype<Bool> middle super))
    (issubtype<Bool> sub super))
  :pattern ((issubtype<Bool> sub middle) (issubtype<Bool> middle super))
  :qid |prog.issubtype_transitivity|)))
(assert (forall ((type_ PyType)) (!
  (issubtype<Bool> type_ type_)
  :pattern ((issubtype<Bool> type_ type_))
  :qid |prog.issubtype_reflexivity|)))
(assert (forall ((sub PyType) (sub2 PyType)) (!
  (=> (extends_<Bool> sub sub2) (issubtype<Bool> sub sub2))
  :pattern ((extends_<Bool> sub sub2))
  :qid |prog.extends_implies_subtype|)))
(assert (forall ((r $Ref)) (!
  (=
    (issubtype<Bool> (typeof<PyType> r) (as NoneType<PyType>  PyType))
    (= r $Ref.null))
  :pattern ((typeof<PyType> r))
  :qid |prog.null_nonetype|)))
(assert (forall ((type_ PyType)) (!
  (issubtype<Bool> type_ (as object<PyType>  PyType))
  :pattern ((issubtype<Bool> type_ (as object<PyType>  PyType)))
  :qid |prog.issubtype_object|)))
(assert (forall ((sub PyType) (sub2 PyType) (super PyType)) (!
  (=>
    (and
      (extends_<Bool> sub super)
      (and (extends_<Bool> sub2 super) (not (= sub sub2))))
    (and (isnotsubtype<Bool> sub sub2) (isnotsubtype<Bool> sub2 sub)))
  :pattern ((extends_<Bool> sub super) (extends_<Bool> sub2 super))
  :qid |prog.issubtype_exclusion|)))
(assert (forall ((sub PyType) (super PyType)) (!
  (=>
    (and (issubtype<Bool> sub super) (not (= sub super)))
    (not (issubtype<Bool> super sub)))
  :pattern ((issubtype<Bool> sub super))
  :pattern ((issubtype<Bool> super sub))
  :qid |prog.issubtype_exclusion_2|)))
(assert (forall ((sub PyType) (middle PyType) (super PyType)) (!
  (=>
    (and (issubtype<Bool> sub middle) (isnotsubtype<Bool> middle super))
    (not (issubtype<Bool> sub super)))
  :pattern ((issubtype<Bool> sub middle) (isnotsubtype<Bool> middle super))
  :qid |prog.issubtype_exclusion_propagation|)))
(assert (forall ((seq Seq<PyType>) (i Int) (Z PyType)) (!
  (=>
    (issubtype<Bool> Z (tuple<PyType> seq))
    (issubtype<Bool> (tuple_arg<PyType> Z i) (Seq_index seq i)))
  :pattern ((tuple<PyType> seq) (tuple_arg<PyType> Z i))
  :qid |prog.tuple_arg_def|)))
(assert (forall ((seq Seq<PyType>) (Z PyType)) (!
  (=>
    (issubtype<Bool> Z (tuple<PyType> seq))
    (= (Seq_length (tuple_args<Seq<PyType>> Z)) (Seq_length seq)))
  :pattern ((issubtype<Bool> Z (tuple<PyType> seq)))
  :qid |prog.tuple_args_def|)))
(assert (forall ((seq1 Seq<PyType>) (seq2 Seq<PyType>)) (!
  (=>
    (and
      (not (Seq_equal seq1 seq2))
      (and
        (= (Seq_length seq1) (Seq_length seq2))
        (forall ((i Int)) (!
          (=>
            (and (>= i 0) (< i (Seq_length seq1)))
            (issubtype<Bool> (Seq_index seq1 i) (Seq_index seq2 i)))
          :pattern ((issubtype<Bool> (Seq_index seq1 i) (Seq_index seq2 i)))
          ))))
    (issubtype<Bool> (tuple<PyType> seq1) (tuple<PyType> seq2)))
  :pattern ((Seq_length seq1) (Seq_length seq2))
  :pattern ((Seq_length seq1) (tuple<PyType> seq2))
  :pattern ((Seq_length seq1) (issubtype<Bool> (tuple<PyType> seq1) (tuple<PyType> seq2)))
  :pattern ((Seq_length seq2) (Seq_length seq1))
  :pattern ((Seq_length seq2) (tuple<PyType> seq1))
  :pattern ((Seq_length seq2) (issubtype<Bool> (tuple<PyType> seq1) (tuple<PyType> seq2)))
  :pattern ((issubtype<Bool> (tuple<PyType> seq1) (tuple<PyType> seq2)))
  :qid |prog.tuple_self_subtype|)))
(assert (forall ((arg_1 PyType) (X PyType)) (!
  (= (issubtype<Bool> X (union_type_1<PyType> arg_1)) (issubtype<Bool> X arg_1))
  :pattern ((issubtype<Bool> X (union_type_1<PyType> arg_1)))
  :qid |prog.union_subtype_1|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> X (union_type_2<PyType> arg_1 arg_2))
    (or (issubtype<Bool> X arg_1) (issubtype<Bool> X arg_2)))
  :pattern ((issubtype<Bool> X (union_type_2<PyType> arg_1 arg_2)))
  :qid |prog.union_subtype_2|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (arg_3 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> X (union_type_3<PyType> arg_1 arg_2 arg_3))
    (or
      (issubtype<Bool> X arg_1)
      (or (issubtype<Bool> X arg_2) (issubtype<Bool> X arg_3))))
  :pattern ((issubtype<Bool> X (union_type_3<PyType> arg_1 arg_2 arg_3)))
  :qid |prog.union_subtype_3|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (arg_3 PyType) (arg_4 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> X (union_type_4<PyType> arg_1 arg_2 arg_3 arg_4))
    (or
      (issubtype<Bool> X arg_1)
      (or
        (issubtype<Bool> X arg_2)
        (or (issubtype<Bool> X arg_3) (issubtype<Bool> X arg_4)))))
  :pattern ((issubtype<Bool> X (union_type_4<PyType> arg_1 arg_2 arg_3 arg_4)))
  :qid |prog.union_subtype_4|)))
(assert (forall ((arg_1 PyType) (X PyType)) (!
  (= (issubtype<Bool> (union_type_1<PyType> arg_1) X) (issubtype<Bool> arg_1 X))
  :pattern ((issubtype<Bool> (union_type_1<PyType> arg_1) X))
  :qid |prog.subtype_union_1|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> (union_type_2<PyType> arg_1 arg_2) X)
    (and (issubtype<Bool> arg_1 X) (issubtype<Bool> arg_2 X)))
  :pattern ((issubtype<Bool> (union_type_2<PyType> arg_1 arg_2) X))
  :qid |prog.subtype_union_2|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (arg_3 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> (union_type_3<PyType> arg_1 arg_2 arg_3) X)
    (and
      (issubtype<Bool> arg_1 X)
      (and (issubtype<Bool> arg_2 X) (issubtype<Bool> arg_3 X))))
  :pattern ((issubtype<Bool> (union_type_3<PyType> arg_1 arg_2 arg_3) X))
  :qid |prog.subtype_union_3|)))
(assert (forall ((arg_1 PyType) (arg_2 PyType) (arg_3 PyType) (arg_4 PyType) (X PyType)) (!
  (=
    (issubtype<Bool> (union_type_4<PyType> arg_1 arg_2 arg_3 arg_4) X)
    (and
      (issubtype<Bool> arg_1 X)
      (and
        (issubtype<Bool> arg_2 X)
        (and (issubtype<Bool> arg_3 X) (issubtype<Bool> arg_4 X)))))
  :pattern ((issubtype<Bool> (union_type_4<PyType> arg_1 arg_2 arg_3 arg_4) X))
  :qid |prog.subtype_union_4|)))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (list<PyType> var0) (as object<PyType>  PyType))
    (= (get_basic<PyType> (list<PyType> var0)) (as list_basic<PyType>  PyType)))
  :pattern ((list<PyType> var0))
  :qid |prog.subtype_list|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (list<PyType> arg0)) (= (list_arg<PyType> Z 0) arg0))
  :pattern ((list<PyType> arg0) (list_arg<PyType> Z 0))
  :qid |prog.list_args0|)))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (set<PyType> var0) (as object<PyType>  PyType))
    (= (get_basic<PyType> (set<PyType> var0)) (as set_basic<PyType>  PyType)))
  :pattern ((set<PyType> var0))
  :qid |prog.subtype_set|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (set<PyType> arg0)) (= (set_arg<PyType> Z 0) arg0))
  :pattern ((set<PyType> arg0) (set_arg<PyType> Z 0))
  :qid |prog.set_args0|)))
(assert (forall ((var0 PyType) (var1 PyType)) (!
  (and
    (extends_<Bool> (dict<PyType> var0 var1) (as object<PyType>  PyType))
    (=
      (get_basic<PyType> (dict<PyType> var0 var1))
      (as dict_basic<PyType>  PyType)))
  :pattern ((dict<PyType> var0 var1))
  :qid |prog.subtype_dict|)))
(assert (forall ((Z PyType) (arg0 PyType) (arg1 PyType)) (!
  (=>
    (issubtype<Bool> Z (dict<PyType> arg0 arg1))
    (= (dict_arg<PyType> Z 0) arg0))
  :pattern ((dict<PyType> arg0 arg1) (dict_arg<PyType> Z 0))
  :qid |prog.dict_args0|)))
(assert (forall ((Z PyType) (arg0 PyType) (arg1 PyType)) (!
  (=>
    (issubtype<Bool> Z (dict<PyType> arg0 arg1))
    (= (dict_arg<PyType> Z 1) arg1))
  :pattern ((dict<PyType> arg0 arg1) (dict_arg<PyType> Z 1))
  :qid |prog.dict_args1|)))
(assert (and
  (extends_<Bool> (as int<PyType>  PyType) (as float<PyType>  PyType))
  (= (get_basic<PyType> (as int<PyType>  PyType)) (as int<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as float<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as float<PyType>  PyType)) (as float<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as bool<PyType>  PyType) (as int<PyType>  PyType))
  (= (get_basic<PyType> (as bool<PyType>  PyType)) (as bool<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as NoneType<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as NoneType<PyType>  PyType))
    (as NoneType<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as Exception<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Exception<PyType>  PyType))
    (as Exception<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as ConnectionRefusedError<PyType>  PyType) (as Exception<PyType>  PyType))
  (=
    (get_basic<PyType> (as ConnectionRefusedError<PyType>  PyType))
    (as ConnectionRefusedError<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as traceback<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as traceback<PyType>  PyType))
    (as traceback<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as str<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as str<PyType>  PyType)) (as str<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as bytes<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as bytes<PyType>  PyType)) (as bytes<PyType>  PyType))))
(assert (forall ((args Seq<PyType>)) (!
  (and
    (=>
      (forall ((e PyType)) (!
        (=> (Seq_contains args e) (= e (as object<PyType>  PyType)))
        :pattern ((Seq_contains args e))
        :pattern ((Seq_contains_trigger args e))
        ))
      (extends_<Bool> (tuple<PyType> args) (as object<PyType>  PyType)))
    (= (get_basic<PyType> (tuple<PyType> args)) (as tuple_basic<PyType>  PyType)))
  :pattern ((tuple<PyType> args))
  :qid |prog.subtype_tuple|)))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (PSeq<PyType> var0) (as object<PyType>  PyType))
    (= (get_basic<PyType> (PSeq<PyType> var0)) (as PSeq_basic<PyType>  PyType)))
  :pattern ((PSeq<PyType> var0))
  :qid |prog.subtype_PSeq|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (PSeq<PyType> arg0)) (= (PSeq_arg<PyType> Z 0) arg0))
  :pattern ((PSeq<PyType> arg0) (PSeq_arg<PyType> Z 0))
  :qid |prog.PSeq_args0|)))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (PSet<PyType> var0) (as object<PyType>  PyType))
    (= (get_basic<PyType> (PSet<PyType> var0)) (as PSet_basic<PyType>  PyType)))
  :pattern ((PSet<PyType> var0))
  :qid |prog.subtype_PSet|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (PSet<PyType> arg0)) (= (PSet_arg<PyType> Z 0) arg0))
  :pattern ((PSet<PyType> arg0) (PSet_arg<PyType> Z 0))
  :qid |prog.PSet_args0|)))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (PMultiset<PyType> var0) (as object<PyType>  PyType))
    (=
      (get_basic<PyType> (PMultiset<PyType> var0))
      (as PMultiset_basic<PyType>  PyType)))
  :pattern ((PMultiset<PyType> var0))
  :qid |prog.subtype_PMultiset|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=>
    (issubtype<Bool> Z (PMultiset<PyType> arg0))
    (= (PMultiset_arg<PyType> Z 0) arg0))
  :pattern ((PMultiset<PyType> arg0) (PMultiset_arg<PyType> Z 0))
  :qid |prog.PMultiset_args0|)))
(assert (and
  (extends_<Bool> (as slice<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as slice<PyType>  PyType)) (as slice<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as py_range<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as py_range<PyType>  PyType))
    (as py_range<PyType>  PyType))))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (Iterator<PyType> var0) (as object<PyType>  PyType))
    (=
      (get_basic<PyType> (Iterator<PyType> var0))
      (as Iterator_basic<PyType>  PyType)))
  :pattern ((Iterator<PyType> var0))
  :qid |prog.subtype_Iterator|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=>
    (issubtype<Bool> Z (Iterator<PyType> arg0))
    (= (Iterator_arg<PyType> Z 0) arg0))
  :pattern ((Iterator<PyType> arg0) (Iterator_arg<PyType> Z 0))
  :qid |prog.Iterator_args0|)))
(assert (and
  (extends_<Bool> (as Thread_0<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Thread_0<PyType>  PyType))
    (as Thread_0<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as LevelType<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as LevelType<PyType>  PyType))
    (as LevelType<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as type<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as type<PyType>  PyType)) (as type<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as Place<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as Place<PyType>  PyType)) (as Place<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as __prim__Seq_type<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as __prim__Seq_type<PyType>  PyType))
    (as __prim__Seq_type<PyType>  PyType))))
(assert (forall ((g Bool) (k $Ref) (v Int)) (!
  (= (Measure$guard<Bool> (Measure$create<Measure$> g k v)) g)
  :pattern ((Measure$guard<Bool> (Measure$create<Measure$> g k v)))
  :qid |prog.Measure$A0|)))
(assert (forall ((g Bool) (k $Ref) (v Int)) (!
  (= (Measure$key<Ref> (Measure$create<Measure$> g k v)) k)
  :pattern ((Measure$key<Ref> (Measure$create<Measure$> g k v)))
  :qid |prog.Measure$A1|)))
(assert (forall ((g Bool) (k $Ref) (v Int)) (!
  (= (Measure$value<Int> (Measure$create<Measure$> g k v)) v)
  :pattern ((Measure$value<Int> (Measure$create<Measure$> g k v)))
  :qid |prog.Measure$A2|)))
(assert (forall ((x $Ref)) (!
  (Low<Bool> x)
  :pattern ((Low<Bool> x))
  :qid |prog.low_true|)))
(assert (forall ((___s Seq<$Ref>)) (!
  (= (Seq_length ___s) (seq_ref_length<Int> ___s))
  :pattern ((Seq_length ___s))
  :qid |prog.relate_length|)))
(assert (forall ((___s Seq<$Ref>) (___i Int)) (!
  (= (Seq_index ___s ___i) (seq_ref_index<Ref> ___s ___i))
  :pattern ((Seq_index ___s ___i))
  :qid |prog.relate_index|)))
(assert (forall ((i Int)) (!
  (= (_get_value<Int> (_single<_Name> i)) i)
  :pattern ((_single<_Name> i))
  :qid |prog.decompose_single|)))
(assert (forall ((n _Name)) (!
  (=> (_is_single<Bool> n) (= n (_single<_Name> (_get_value<Int> n))))
  :pattern ((_get_value<Int> n))
  :qid |prog.compose_single|)))
(assert (forall ((i Int)) (!
  (_name_type<Bool> (_single<_Name> i))
  :pattern ((_single<_Name> i))
  :qid |prog.type_of_single|)))
(assert (forall ((n1 _Name) (n2 _Name)) (!
  (and
    (= (_get_combined_prefix<_Name> (_combine<_Name> n1 n2)) n1)
    (= (_get_combined_name<_Name> (_combine<_Name> n1 n2)) n2))
  :pattern ((_combine<_Name> n1 n2))
  :qid |prog.decompose_combined|)))
(assert (forall ((n _Name)) (!
  (=>
    (_is_combined<Bool> n)
    (=
      n
      (_combine<_Name> (_get_combined_prefix<_Name> n) (_get_combined_name<_Name> n))))
  :pattern ((_get_combined_prefix<_Name> n))
  :pattern ((_get_combined_name<_Name> n))
  :qid |prog.compose_combined|)))
(assert (forall ((n1 _Name) (n2 _Name)) (!
  (not (_name_type<Bool> (_combine<_Name> n1 n2)))
  :pattern ((_combine<_Name> n1 n2))
  :qid |prog.type_of_composed|)))
(assert (forall ((n _Name)) (!
  (= (_name_type<Bool> n) (_is_single<Bool> n))
  :pattern ((_name_type<Bool> n))
  :qid |prog.type_is_single|)))
(assert (forall ((n _Name)) (!
  (= (not (_name_type<Bool> n)) (_is_combined<Bool> n))
  :pattern ((_name_type<Bool> n))
  :qid |prog.type_is_combined|)))
; /field_value_functions_axioms.smt2 [list_acc: Seq[Ref]]
(assert (forall ((vs $FVF<list_acc>) (ws $FVF<list_acc>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_list_acc vs) ($FVF.domain_list_acc ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_list_acc vs))
            (= ($FVF.lookup_list_acc vs x) ($FVF.lookup_list_acc ws x)))
          :pattern (($FVF.lookup_list_acc vs x) ($FVF.lookup_list_acc ws x))
          :qid |qp.$FVF<list_acc>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<list_acc>To$Snap vs)
              ($SortWrappers.$FVF<list_acc>To$Snap ws)
              )
    :qid |qp.$FVF<list_acc>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_list_acc pm r))
    :pattern (($FVF.perm_list_acc pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_list_acc f r) true)
    :pattern (($FVF.loc_list_acc f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (py_range___val__%limited s@$ self@0@00) (py_range___val__ s@$ self@0@00))
  :pattern ((py_range___val__ s@$ self@0@00))
  :qid |quant-u-2919|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (py_range___val__%stateless self@0@00)
  :pattern ((py_range___val__%limited s@$ self@0@00))
  :qid |quant-u-2920|)))
(assert (forall ((s@$ $Snap) (box@2@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@2@00) (int___unbox__ s@$ box@2@00))
  :pattern ((int___unbox__ s@$ box@2@00))
  :qid |quant-u-2921|)))
(assert (forall ((s@$ $Snap) (box@2@00 $Ref)) (!
  (int___unbox__%stateless box@2@00)
  :pattern ((int___unbox__%limited s@$ box@2@00))
  :qid |quant-u-2922|)))
(assert (forall ((s@$ $Snap) (box@2@00 $Ref)) (!
  (let ((result@3@00 (int___unbox__%limited s@$ box@2@00))) (=>
    (int___unbox__%precondition s@$ box@2@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@2@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@3@00) box@2@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@2@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@3@00 0)))
          box@2@00)))))
  :pattern ((int___unbox__%limited s@$ box@2@00))
  :qid |quant-u-2963|)))
(assert (forall ((s@$ $Snap) (box@2@00 $Ref)) (!
  (let ((result@3@00 (int___unbox__%limited s@$ box@2@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@2@00)
      (not (issubtype<Bool> (typeof<PyType> box@2@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@3@00)))
  :pattern ((int___unbox__%limited s@$ box@2@00))
  :qid |quant-u-2964|)))
(assert (forall ((s@$ $Snap) (box@2@00 $Ref)) (!
  (let ((result@3@00 (int___unbox__%limited s@$ box@2@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@2@00)
      (issubtype<Bool> (typeof<PyType> box@2@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@3@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@2@00))
  :qid |quant-u-2965|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@4@00) (bool___unbox__ s@$ box@4@00))
  :pattern ((bool___unbox__ s@$ box@4@00))
  :qid |quant-u-2923|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (bool___unbox__%stateless box@4@00)
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-2924|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (bool___unbox__%limited s@$ box@4@00))) (=>
    (bool___unbox__%precondition s@$ box@4@00)
    (= (__prim__bool___box__%limited $Snap.unit result@5@00) box@4@00)))
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-2966|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (bool___unbox__%limited s@$ box@4@00))) (=>
    (bool___unbox__%precondition s@$ box@4@00)
    (__prim__bool___box__%precondition $Snap.unit result@5@00)))
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-2967|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@6@00)
    (__prim__bool___box__ s@$ prim@6@00))
  :pattern ((__prim__bool___box__ s@$ prim@6@00))
  :qid |quant-u-2925|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (__prim__bool___box__%stateless prim@6@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-2926|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (and
      (= (typeof<PyType> result@7@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@7@00) prim@6@00)
      (= (int___unbox__%limited $Snap.unit result@7@00) (ite prim@6@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-2968|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-2969|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (bool___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-2970|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (int___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-2971|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@8@00)
    (__prim__int___box__ s@$ prim@8@00))
  :pattern ((__prim__int___box__ s@$ prim@8@00))
  :qid |quant-u-2927|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (__prim__int___box__%stateless prim@8@00)
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-2928|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) (=>
    (__prim__int___box__%precondition s@$ prim@8@00)
    (and
      (= (typeof<PyType> result@9@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@9@00) prim@8@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-2972|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-2973|)))
(assert (forall ((s@$ $Snap) (prim@8@00 Int)) (!
  (let ((result@9@00 (__prim__int___box__%limited s@$ prim@8@00))) (=>
    (__prim__int___box__%precondition s@$ prim@8@00)
    (int___unbox__%precondition $Snap.unit result@9@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@8@00))
  :qid |quant-u-2974|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (= (py_range___len__%limited s@$ self@10@00) (py_range___len__ s@$ self@10@00))
  :pattern ((py_range___len__ s@$ self@10@00))
  :qid |quant-u-2929|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (py_range___len__%stateless self@10@00)
  :pattern ((py_range___len__%limited s@$ self@10@00))
  :qid |quant-u-2930|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (let ((result@11@00 (py_range___len__%limited s@$ self@10@00))) (=>
    (py_range___len__%precondition s@$ self@10@00)
    (= result@11@00 (Seq_length (py_range___val__ $Snap.unit self@10@00)))))
  :pattern ((py_range___len__%limited s@$ self@10@00))
  :qid |quant-u-2975|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (let ((result@11@00 (py_range___len__%limited s@$ self@10@00))) (=>
    (py_range___len__%precondition s@$ self@10@00)
    (py_range___val__%precondition $Snap.unit self@10@00)))
  :pattern ((py_range___len__%limited s@$ self@10@00))
  :qid |quant-u-2976|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  (= (str___val__%limited s@$ self@12@00) (str___val__ s@$ self@12@00))
  :pattern ((str___val__ s@$ self@12@00))
  :qid |quant-u-2931|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  (str___val__%stateless self@12@00)
  :pattern ((str___val__%limited s@$ self@12@00))
  :qid |quant-u-2932|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (= (str___len__%limited s@$ self@14@00) (str___len__ s@$ self@14@00))
  :pattern ((str___len__ s@$ self@14@00))
  :qid |quant-u-2933|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (str___len__%stateless self@14@00)
  :pattern ((str___len__%limited s@$ self@14@00))
  :qid |quant-u-2934|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (let ((result@15@00 (str___len__%limited s@$ self@14@00))) (=>
    (str___len__%precondition s@$ self@14@00)
    (>= result@15@00 0)))
  :pattern ((str___len__%limited s@$ self@14@00))
  :qid |quant-u-2977|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (let ((result@15@00 (str___len__%limited s@$ self@14@00))) true)
  :pattern ((str___len__%limited s@$ self@14@00))
  :qid |quant-u-2978|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (=
    (py_range___stop__%limited s@$ self@16@00)
    (py_range___stop__ s@$ self@16@00))
  :pattern ((py_range___stop__ s@$ self@16@00))
  :qid |quant-u-2935|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (py_range___stop__%stateless self@16@00)
  :pattern ((py_range___stop__%limited s@$ self@16@00))
  :qid |quant-u-2936|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (=
    (py_range___start__%limited s@$ self@18@00)
    (py_range___start__ s@$ self@18@00))
  :pattern ((py_range___start__ s@$ self@18@00))
  :qid |quant-u-2937|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (py_range___start__%stateless self@18@00)
  :pattern ((py_range___start__%limited s@$ self@18@00))
  :qid |quant-u-2938|)))
(assert (forall ((s@$ $Snap) (id@20@00 Int)) (!
  (= (_isDefined%limited s@$ id@20@00) (_isDefined s@$ id@20@00))
  :pattern ((_isDefined s@$ id@20@00))
  :qid |quant-u-2939|)))
(assert (forall ((s@$ $Snap) (id@20@00 Int)) (!
  (_isDefined%stateless id@20@00)
  :pattern ((_isDefined%limited s@$ id@20@00))
  :qid |quant-u-2940|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (= (Level%limited s@$ r@22@00) (Level s@$ r@22@00))
  :pattern ((Level s@$ r@22@00))
  :qid |quant-u-2941|)))
(assert (forall ((s@$ $Snap) (r@22@00 $Ref)) (!
  (Level%stateless r@22@00)
  :pattern ((Level%limited s@$ r@22@00))
  :qid |quant-u-2942|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (=
    (py_range___sil_seq__%limited s@$ self@24@00)
    (py_range___sil_seq__ s@$ self@24@00))
  :pattern ((py_range___sil_seq__ s@$ self@24@00))
  :qid |quant-u-2943|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (py_range___sil_seq__%stateless self@24@00)
  :pattern ((py_range___sil_seq__%limited s@$ self@24@00))
  :qid |quant-u-2944|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (let ((result@25@00 (py_range___sil_seq__%limited s@$ self@24@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@24@00)
    (and
      (= (Seq_length result@25@00) (py_range___len__ $Snap.unit self@24@00))
      (forall ((i Int)) (!
        (=>
          (and
            (>= i 0)
            (< i (Seq_length (py_range___val__ $Snap.unit self@24@00))))
          (=
            (Seq_index result@25@00 i)
            (__prim__int___box__ $Snap.unit (Seq_index
              (py_range___val__ $Snap.unit self@24@00)
              i))))
        :pattern ((Seq_index result@25@00 i))
        ))
      (forall ((i $Ref)) (!
        (=
          (Seq_contains result@25@00 i)
          (and
            (= (typeof<PyType> i) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___val__ $Snap.unit self@24@00)
              (int___unbox__ $Snap.unit i))))
        :pattern ((Seq_contains result@25@00 i))
        :pattern ((Seq_contains_trigger result@25@00 i))
        :pattern ((Seq_contains_trigger result@25@00 i))
        )))))
  :pattern ((py_range___sil_seq__%limited s@$ self@24@00))
  :qid |quant-u-2979|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (let ((result@25@00 (py_range___sil_seq__%limited s@$ self@24@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@24@00)
    (py_range___len__%precondition $Snap.unit self@24@00)))
  :pattern ((py_range___sil_seq__%limited s@$ self@24@00))
  :qid |quant-u-2980|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (let ((result@25@00 (py_range___sil_seq__%limited s@$ self@24@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@24@00)
    (forall ((i Int)) (!
      (and
        (=> (>= i 0) (py_range___val__%precondition $Snap.unit self@24@00))
        (=>
          (and
            (>= i 0)
            (< i (Seq_length (py_range___val__ $Snap.unit self@24@00))))
          (and
            (py_range___val__%precondition $Snap.unit self@24@00)
            (__prim__int___box__%precondition $Snap.unit (Seq_index
              (py_range___val__ $Snap.unit self@24@00)
              i)))))
      :pattern ((Seq_index result@25@00 i))
      ))))
  :pattern ((py_range___sil_seq__%limited s@$ self@24@00))
  :qid |quant-u-2981|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref)) (!
  (let ((result@25@00 (py_range___sil_seq__%limited s@$ self@24@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@24@00)
    (forall ((i $Ref)) (!
      (=>
        (= (typeof<PyType> i) (as int<PyType>  PyType))
        (and
          (py_range___val__%precondition $Snap.unit self@24@00)
          (int___unbox__%precondition $Snap.unit i)))
      :pattern ((Seq_contains result@25@00 i))
      :pattern ((Seq_contains_trigger result@25@00 i))
      :pattern ((Seq_contains_trigger result@25@00 i))
      :pattern ((Seq_contains_trigger result@25@00 i))
      ))))
  :pattern ((py_range___sil_seq__%limited s@$ self@24@00))
  :qid |quant-u-2982|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (=
    (str___create__%limited s@$ len@26@00 value@27@00)
    (str___create__ s@$ len@26@00 value@27@00))
  :pattern ((str___create__ s@$ len@26@00 value@27@00))
  :qid |quant-u-2945|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (str___create__%stateless len@26@00 value@27@00)
  :pattern ((str___create__%limited s@$ len@26@00 value@27@00))
  :qid |quant-u-2946|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (let ((result@28@00 (str___create__%limited s@$ len@26@00 value@27@00))) (=>
    (str___create__%precondition s@$ len@26@00 value@27@00)
    (and
      (= (str___len__ $Snap.unit result@28@00) len@26@00)
      (= (str___val__ $Snap.unit result@28@00) value@27@00)
      (= (typeof<PyType> result@28@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@26@00 value@27@00))
  :qid |quant-u-2983|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (let ((result@28@00 (str___create__%limited s@$ len@26@00 value@27@00))) (=>
    (str___create__%precondition s@$ len@26@00 value@27@00)
    (str___len__%precondition $Snap.unit result@28@00)))
  :pattern ((str___create__%limited s@$ len@26@00 value@27@00))
  :qid |quant-u-2984|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (let ((result@28@00 (str___create__%limited s@$ len@26@00 value@27@00))) (=>
    (str___create__%precondition s@$ len@26@00 value@27@00)
    (str___val__%precondition $Snap.unit result@28@00)))
  :pattern ((str___create__%limited s@$ len@26@00 value@27@00))
  :qid |quant-u-2985|)))
(assert (forall ((s@$ $Snap) (len@26@00 Int) (value@27@00 Int)) (!
  (let ((result@28@00 (str___create__%limited s@$ len@26@00 value@27@00))) true)
  :pattern ((str___create__%limited s@$ len@26@00 value@27@00))
  :qid |quant-u-2986|)))
(assert (forall ((s@$ $Snap) (map@29@00 Seq<Measure$>) (key@30@00 $Ref) (value@31@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@29@00 key@30@00 value@31@00)
    (Measure$check s@$ map@29@00 key@30@00 value@31@00))
  :pattern ((Measure$check s@$ map@29@00 key@30@00 value@31@00))
  :qid |quant-u-2947|)))
(assert (forall ((s@$ $Snap) (map@29@00 Seq<Measure$>) (key@30@00 $Ref) (value@31@00 Int)) (!
  (Measure$check%stateless map@29@00 key@30@00 value@31@00)
  :pattern ((Measure$check%limited s@$ map@29@00 key@30@00 value@31@00))
  :qid |quant-u-2948|)))
(assert (forall ((s@$ $Snap) (map@29@00 Seq<Measure$>) (key@30@00 $Ref) (value@31@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@29@00 key@30@00 value@31@00)
    (=
      (Measure$check s@$ map@29@00 key@30@00 value@31@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@29@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@30@00)))
          (> (Measure$value<Int> m) value@31@00))
        :pattern ((Seq_contains map@29@00 m))
        :pattern ((Seq_contains_trigger map@29@00 m))
        :pattern ((Seq_contains_trigger map@29@00 m))
        ))))
  :pattern ((Measure$check s@$ map@29@00 key@30@00 value@31@00))
  :qid |quant-u-2987|)))
(assert (forall ((s@$ $Snap) (map@29@00 Seq<Measure$>) (key@30@00 $Ref) (value@31@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@29@00 key@30@00 value@31@00))
  :qid |quant-u-2988|)))
(assert (forall ((s@$ $Snap) (self@33@00 $Ref) (other@34@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@33@00 other@34@00)
    (str___eq__ s@$ self@33@00 other@34@00))
  :pattern ((str___eq__ s@$ self@33@00 other@34@00))
  :qid |quant-u-2949|)))
(assert (forall ((s@$ $Snap) (self@33@00 $Ref) (other@34@00 $Ref)) (!
  (str___eq__%stateless self@33@00 other@34@00)
  :pattern ((str___eq__%limited s@$ self@33@00 other@34@00))
  :qid |quant-u-2950|)))
(assert (forall ((s@$ $Snap) (self@33@00 $Ref) (other@34@00 $Ref)) (!
  (let ((result@35@00 (str___eq__%limited s@$ self@33@00 other@34@00))) (=>
    (str___eq__%precondition s@$ self@33@00 other@34@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@33@00)
          (str___val__ $Snap.unit other@34@00))
        result@35@00)
      (=>
        result@35@00
        (=
          (str___len__ $Snap.unit self@33@00)
          (str___len__ $Snap.unit other@34@00))))))
  :pattern ((str___eq__%limited s@$ self@33@00 other@34@00))
  :qid |quant-u-2989|)))
(assert (forall ((s@$ $Snap) (self@33@00 $Ref) (other@34@00 $Ref)) (!
  (let ((result@35@00 (str___eq__%limited s@$ self@33@00 other@34@00))) (=>
    (str___eq__%precondition s@$ self@33@00 other@34@00)
    (and
      (str___val__%precondition $Snap.unit self@33@00)
      (str___val__%precondition $Snap.unit other@34@00))))
  :pattern ((str___eq__%limited s@$ self@33@00 other@34@00))
  :qid |quant-u-2990|)))
(assert (forall ((s@$ $Snap) (self@33@00 $Ref) (other@34@00 $Ref)) (!
  (let ((result@35@00 (str___eq__%limited s@$ self@33@00 other@34@00))) (=>
    (and (str___eq__%precondition s@$ self@33@00 other@34@00) result@35@00)
    (and
      (str___len__%precondition $Snap.unit self@33@00)
      (str___len__%precondition $Snap.unit other@34@00))))
  :pattern ((str___eq__%limited s@$ self@33@00 other@34@00))
  :qid |quant-u-2991|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (=
    (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00)
    (py_range___create__ s@$ start@36@00 stop@37@00 ctr@38@00))
  :pattern ((py_range___create__ s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2951|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (py_range___create__%stateless start@36@00 stop@37@00 ctr@38@00)
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2952|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (let ((result@39@00 (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))) (=>
    (py_range___create__%precondition s@$ start@36@00 stop@37@00 ctr@38@00)
    (and
      (Seq_equal
        (py_range___val__ $Snap.unit result@39@00)
        (Seq_range start@36@00 stop@37@00))
      (= (py_range___start__ $Snap.unit result@39@00) start@36@00)
      (= (py_range___stop__ $Snap.unit result@39@00) stop@37@00)
      (= (typeof<PyType> result@39@00) (as py_range<PyType>  PyType)))))
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2992|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (let ((result@39@00 (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))) (=>
    (py_range___create__%precondition s@$ start@36@00 stop@37@00 ctr@38@00)
    (py_range___val__%precondition $Snap.unit result@39@00)))
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2993|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (let ((result@39@00 (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))) (=>
    (py_range___create__%precondition s@$ start@36@00 stop@37@00 ctr@38@00)
    (py_range___start__%precondition $Snap.unit result@39@00)))
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2994|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (let ((result@39@00 (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))) (=>
    (py_range___create__%precondition s@$ start@36@00 stop@37@00 ctr@38@00)
    (py_range___stop__%precondition $Snap.unit result@39@00)))
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2995|)))
(assert (forall ((s@$ $Snap) (start@36@00 Int) (stop@37@00 Int) (ctr@38@00 Int)) (!
  (let ((result@39@00 (py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))) true)
  :pattern ((py_range___create__%limited s@$ start@36@00 stop@37@00 ctr@38@00))
  :qid |quant-u-2996|)))
(assert (forall ((s@$ $Snap) (self@40@00 Int) (other@41@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@40@00 other@41@00)
    (int___gt__ s@$ self@40@00 other@41@00))
  :pattern ((int___gt__ s@$ self@40@00 other@41@00))
  :qid |quant-u-2953|)))
(assert (forall ((s@$ $Snap) (self@40@00 Int) (other@41@00 Int)) (!
  (int___gt__%stateless self@40@00 other@41@00)
  :pattern ((int___gt__%limited s@$ self@40@00 other@41@00))
  :qid |quant-u-2954|)))
(assert (forall ((s@$ $Snap) (self@40@00 Int) (other@41@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@40@00 other@41@00)
    (= (int___gt__ s@$ self@40@00 other@41@00) (> self@40@00 other@41@00)))
  :pattern ((int___gt__ s@$ self@40@00 other@41@00))
  :qid |quant-u-2997|)))
(assert (forall ((s@$ $Snap) (self@40@00 Int) (other@41@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@40@00 other@41@00))
  :qid |quant-u-2998|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-2955|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-2956|)))
(assert (forall ((s@$ $Snap) (val@44@00 $Ref) (id@45@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@44@00 id@45@00)
    (_checkDefined s@$ val@44@00 id@45@00))
  :pattern ((_checkDefined s@$ val@44@00 id@45@00))
  :qid |quant-u-2957|)))
(assert (forall ((s@$ $Snap) (val@44@00 $Ref) (id@45@00 Int)) (!
  (_checkDefined%stateless val@44@00 id@45@00)
  :pattern ((_checkDefined%limited s@$ val@44@00 id@45@00))
  :qid |quant-u-2958|)))
(assert (forall ((s@$ $Snap) (val@44@00 $Ref) (id@45@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@44@00 id@45@00)
    (= (_checkDefined s@$ val@44@00 id@45@00) val@44@00))
  :pattern ((_checkDefined s@$ val@44@00 id@45@00))
  :qid |quant-u-2999|)))
(assert (forall ((s@$ $Snap) (val@44@00 $Ref) (id@45@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@44@00 id@45@00))
  :qid |quant-u-3000|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (=
    (int___eq__%limited s@$ self@47@00 other@48@00)
    (int___eq__ s@$ self@47@00 other@48@00))
  :pattern ((int___eq__ s@$ self@47@00 other@48@00))
  :qid |quant-u-2959|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (int___eq__%stateless self@47@00 other@48@00)
  :pattern ((int___eq__%limited s@$ self@47@00 other@48@00))
  :qid |quant-u-2960|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@47@00 other@48@00)
    (=
      (int___eq__ s@$ self@47@00 other@48@00)
      (=
        (int___unbox__ $Snap.unit self@47@00)
        (int___unbox__ $Snap.unit other@48@00))))
  :pattern ((int___eq__ s@$ self@47@00 other@48@00))
  :qid |quant-u-3001|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@47@00 other@48@00)
    (and
      (int___unbox__%precondition $Snap.unit self@47@00)
      (int___unbox__%precondition $Snap.unit other@48@00)))
  :pattern ((int___eq__ s@$ self@47@00 other@48@00))
  :qid |quant-u-3002|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-2961|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-2962|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- a ----------
(declare-const _cthread_156@0@01 $Ref)
(declare-const _caller_measures_156@1@01 Seq<Measure$>)
(declare-const _residue_156@2@01 $Perm)
(declare-const _current_wait_level_156@3@01 $Perm)
(declare-const _cthread_156@4@01 $Ref)
(declare-const _caller_measures_156@5@01 Seq<Measure$>)
(declare-const _residue_156@6@01 $Perm)
(declare-const _current_wait_level_156@7@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@4@01 $Ref.null)))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@4@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@8@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@9@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@01))
    ($Snap.second ($Snap.second $t@9@01)))))
(assert (= ($Snap.first ($Snap.second $t@9@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@9@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@9@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@9@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@6@01 _current_wait_level_156@7@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@9@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@10@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@11@01 $Ref)
; [exec]
; var b: Ref
(declare-const b@12@01 $Ref)
; [exec]
; var list_0: Ref
(declare-const list_0@13@01 $Ref)
; [exec]
; var list_1: Ref
(declare-const list_1@14@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@15@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@16@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; _cwl_156, list_0 := list___init__(_cthread_156, _method_measures_156, _residue_156)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_156@4@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_156@4@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_156@4@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_156@4@01 1))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@17@01 $Perm)
(declare-const res@18@01 $Ref)
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (= ($Snap.first $t@19@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@19@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@01))
    ($Snap.second ($Snap.second $t@19@01)))))
(assert (= ($Snap.first ($Snap.second $t@19@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@19@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@19@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@19@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_156@6@01 _current_wait_level_8@17@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@19@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
(assert (not (= res@18@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@18@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@18@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@18@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_0), list(int()))
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 $Snap.unit))
; [eval] issubtype(typeof(list_0), list(int()))
; [eval] typeof(list_0)
; [eval] list(int())
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> res@18@01) (list<PyType> (as int<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(__prim__int___box__(1)), int())
; [eval] issubtype(typeof(__prim__int___box__(1)), int())
; [eval] typeof(__prim__int___box__(1))
; [eval] __prim__int___box__(1)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 1))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 1))
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (as int<PyType>  PyType)))
; [exec]
; assert issubtype(typeof(__prim__int___box__(2)), int())
; [eval] issubtype(typeof(__prim__int___box__(2)), int())
; [eval] typeof(__prim__int___box__(2))
; [eval] __prim__int___box__(2)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 2))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 2))
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (as int<PyType>  PyType)))
; [exec]
; list_0.list_acc := Seq(__prim__int___box__(1), __prim__int___box__(2))
; [eval] Seq(__prim__int___box__(1), __prim__int___box__(2))
; [eval] __prim__int___box__(1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_append
      (Seq_singleton (__prim__int___box__ $Snap.unit 1))
      (Seq_singleton (__prim__int___box__ $Snap.unit 2))))
  2))
(declare-const list_acc@21@01 Seq<$Ref>)
(assert (=
  list_acc@21@01
  (Seq_append
    (Seq_singleton (__prim__int___box__ $Snap.unit 1))
    (Seq_singleton (__prim__int___box__ $Snap.unit 2)))))
; [exec]
; a_0 := list_0
; [exec]
; inhale _isDefined(3170145)
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 $Snap.unit))
; [eval] _isDefined(3170145)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3170145))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170145))
(assert (_isDefined $Snap.unit 3170145))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_156, list_1 := list___init__(_cthread_156, _method_measures_156, _residue_156)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@23@01 $Perm)
(declare-const res@24@01 $Ref)
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (= ($Snap.first $t@25@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (= ($Snap.first ($Snap.second $t@25@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_156@6@01 _current_wait_level_8@23@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@25@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@18@01 res@24@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= res@24@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@24@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@24@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@24@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_1), list(bool()))
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; [eval] issubtype(typeof(list_1), list(bool()))
; [eval] typeof(list_1)
; [eval] list(bool())
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> res@24@01) (list<PyType> (as bool<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert issubtype(typeof(__prim__bool___box__(true)), bool())
; [eval] issubtype(typeof(__prim__bool___box__(true)), bool())
; [eval] typeof(__prim__bool___box__(true))
; [eval] __prim__bool___box__(true)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__bool___box__ $Snap.unit true)) (as bool<PyType>  PyType)))
; [exec]
; list_1.list_acc := Seq(__prim__bool___box__(true))
; [eval] Seq(__prim__bool___box__(true))
; [eval] __prim__bool___box__(true)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (= (Seq_length (Seq_singleton (__prim__bool___box__ $Snap.unit true))) 1))
(declare-const list_acc@27@01 Seq<$Ref>)
(assert (= list_acc@27@01 (Seq_singleton (__prim__bool___box__ $Snap.unit true))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@18@01 res@24@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; b := list_1
; [exec]
; inhale _isDefined(98)
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 $Snap.unit))
; [eval] _isDefined(98)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 98))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 98))
(assert (_isDefined $Snap.unit 98))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall lambda10_21$x: Ref ::
;     { (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) }
;     issubtype(typeof(lambda10_21$x), int()) ==>
;     (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) ==>
;     int___gt__(int___unbox__(lambda10_21$x), 0)) &&
;   (forall lambda10_58$x: Ref ::
;     { (lambda10_58$x in _checkDefined(b, 98).list_acc) }
;     issubtype(typeof(lambda10_58$x), bool()) ==>
;     (lambda10_58$x in _checkDefined(b, 98).list_acc) ==>
;     bool___unbox__(lambda10_58$x))
; [eval] (forall lambda10_21$x: Ref :: { (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) } issubtype(typeof(lambda10_21$x), int()) ==> (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) ==> int___gt__(int___unbox__(lambda10_21$x), 0))
(declare-const lambda10_21$x@29@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda10_21$x), int()) ==> (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) ==> int___gt__(int___unbox__(lambda10_21$x), 0)
; [eval] issubtype(typeof(lambda10_21$x), int())
; [eval] typeof(lambda10_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 0 | issubtype[Bool](typeof[PyType](lambda10_21$x@29@01), int[PyType]) | live]
; [else-branch: 0 | !(issubtype[Bool](typeof[PyType](lambda10_21$x@29@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 0 | issubtype[Bool](typeof[PyType](lambda10_21$x@29@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType)))
; [eval] (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc) ==> int___gt__(int___unbox__(lambda10_21$x), 0)
; [eval] (lambda10_21$x in _checkDefined(a_0, 3170145).list_acc)
; [eval] _checkDefined(a_0, 3170145)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@18@01 3170145))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@18@01 3170145))
(push) ; 6
(set-option :timeout 10)
(assert (not (= res@24@01 (_checkDefined $Snap.unit res@18@01 3170145))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= res@18@01 (_checkDefined $Snap.unit res@18@01 3170145))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 1 | lambda10_21$x@29@01 in list_acc@21@01 | live]
; [else-branch: 1 | !(lambda10_21$x@29@01 in list_acc@21@01) | live]
(push) ; 7
; [then-branch: 1 | lambda10_21$x@29@01 in list_acc@21@01]
(assert (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
; [eval] int___gt__(int___unbox__(lambda10_21$x), 0)
; [eval] int___unbox__(lambda10_21$x)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01))
(pop) ; 8
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01))
(push) ; 8
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0))
(pop) ; 8
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | !(lambda10_21$x@29@01 in list_acc@21@01)]
(assert (not (Seq_contains list_acc@21@01 lambda10_21$x@29@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
  (and
    (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
    (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0))))
; Joined path conditions
(assert (or
  (not (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
  (Seq_contains list_acc@21@01 lambda10_21$x@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(issubtype[Bool](typeof[PyType](lambda10_21$x@29@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit res@18@01 3170145)
    (=>
      (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
      (and
        (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
        (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0)))
    (or
      (not (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
      (Seq_contains list_acc@21@01 lambda10_21$x@29@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda10_21$x@29@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit res@18@01 3170145)
        (=>
          (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
          (and
            (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
            (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0)))
        (or
          (not (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
          (Seq_contains list_acc@21@01 lambda10_21$x@29@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@11@577@247-aux|)))
(assert (forall ((lambda10_21$x@29@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit res@18@01 3170145)
        (=>
          (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
          (and
            (Seq_contains list_acc@21@01 lambda10_21$x@29@01)
            (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0)))
        (or
          (not (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
          (Seq_contains list_acc@21@01 lambda10_21$x@29@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@11@577@247-aux|)))
(assert (forall ((lambda10_21$x@29@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
      (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
    (and
      (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
      (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0)))
  :pattern ((Seq_contains list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@11@577@247_precondition|)))
(push) ; 3
(assert (not (forall ((lambda10_21$x@29@01 $Ref)) (!
  (=>
    (and
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
          (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
        (and
          (int___unbox__%precondition $Snap.unit lambda10_21$x@29@01)
          (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
        (Seq_contains list_acc@21@01 lambda10_21$x@29@01)))
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0))
  :pattern ((Seq_contains list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@11@577@247|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda10_21$x@29@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda10_21$x@29@01) (as int<PyType>  PyType))
      (Seq_contains list_acc@21@01 lambda10_21$x@29@01))
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda10_21$x@29@01) 0))
  :pattern ((Seq_contains list_acc@21@01 lambda10_21$x@29@01))
  :pattern ((Seq_contains_trigger list_acc@21@01 lambda10_21$x@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@11@577@247|)))
; [eval] (forall lambda10_58$x: Ref :: { (lambda10_58$x in _checkDefined(b, 98).list_acc) } issubtype(typeof(lambda10_58$x), bool()) ==> (lambda10_58$x in _checkDefined(b, 98).list_acc) ==> bool___unbox__(lambda10_58$x))
(declare-const lambda10_58$x@30@01 $Ref)
(push) ; 3
; [eval] issubtype(typeof(lambda10_58$x), bool()) ==> (lambda10_58$x in _checkDefined(b, 98).list_acc) ==> bool___unbox__(lambda10_58$x)
; [eval] issubtype(typeof(lambda10_58$x), bool())
; [eval] typeof(lambda10_58$x)
; [eval] bool()
(push) ; 4
; [then-branch: 2 | issubtype[Bool](typeof[PyType](lambda10_58$x@30@01), bool[PyType]) | live]
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](lambda10_58$x@30@01), bool[PyType])) | live]
(push) ; 5
; [then-branch: 2 | issubtype[Bool](typeof[PyType](lambda10_58$x@30@01), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType)))
; [eval] (lambda10_58$x in _checkDefined(b, 98).list_acc) ==> bool___unbox__(lambda10_58$x)
; [eval] (lambda10_58$x in _checkDefined(b, 98).list_acc)
; [eval] _checkDefined(b, 98)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@24@01 98))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@24@01 98))
(push) ; 6
(set-option :timeout 10)
(assert (not (= res@24@01 (_checkDefined $Snap.unit res@24@01 98))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 3 | lambda10_58$x@30@01 in list_acc@27@01 | live]
; [else-branch: 3 | !(lambda10_58$x@30@01 in list_acc@27@01) | live]
(push) ; 7
; [then-branch: 3 | lambda10_58$x@30@01 in list_acc@27@01]
(assert (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
; [eval] bool___unbox__(lambda10_58$x)
(push) ; 8
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01))
(pop) ; 8
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01))
(pop) ; 7
(push) ; 7
; [else-branch: 3 | !(lambda10_58$x@30@01 in list_acc@27@01)]
(assert (not (Seq_contains list_acc@27@01 lambda10_58$x@30@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
  (and
    (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
    (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01))))
; Joined path conditions
(assert (or
  (not (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
  (Seq_contains list_acc@27@01 lambda10_58$x@30@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](lambda10_58$x@30@01), bool[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit res@24@01 98)
    (=>
      (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
      (and
        (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
        (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01)))
    (or
      (not (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
      (Seq_contains list_acc@27@01 lambda10_58$x@30@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda10_58$x@30@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit res@24@01 98)
        (=>
          (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
          (and
            (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
            (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01)))
        (or
          (not (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
          (Seq_contains list_acc@27@01 lambda10_58$x@30@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))))
  :pattern ((Seq_contains list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@253@577@462-aux|)))
(assert (forall ((lambda10_58$x@30@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit res@24@01 98)
        (=>
          (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
          (and
            (Seq_contains list_acc@27@01 lambda10_58$x@30@01)
            (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01)))
        (or
          (not (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
          (Seq_contains list_acc@27@01 lambda10_58$x@30@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@253@577@462-aux|)))
(assert (forall ((lambda10_58$x@30@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
      (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
    (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01))
  :pattern ((Seq_contains list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@253@577@462_precondition|)))
(push) ; 3
(assert (not (forall ((lambda10_58$x@30@01 $Ref)) (!
  (=>
    (and
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
          (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
        (bool___unbox__%precondition $Snap.unit lambda10_58$x@30@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
        (Seq_contains list_acc@27@01 lambda10_58$x@30@01)))
    (bool___unbox__ $Snap.unit lambda10_58$x@30@01))
  :pattern ((Seq_contains list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@253@577@462|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda10_58$x@30@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda10_58$x@30@01) (as bool<PyType>  PyType))
      (Seq_contains list_acc@27@01 lambda10_58$x@30@01))
    (bool___unbox__ $Snap.unit lambda10_58$x@30@01))
  :pattern ((Seq_contains list_acc@27@01 lambda10_58$x@30@01))
  :pattern ((Seq_contains_trigger list_acc@27@01 lambda10_58$x@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@577@253@577@462|)))
; [exec]
; label __end
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- test_nested_forall ----------
(declare-const _cthread_157@31@01 $Ref)
(declare-const _caller_measures_157@32@01 Seq<Measure$>)
(declare-const _residue_157@33@01 $Perm)
(declare-const _current_wait_level_157@34@01 $Perm)
(declare-const _cthread_157@35@01 $Ref)
(declare-const _caller_measures_157@36@01 Seq<Measure$>)
(declare-const _residue_157@37@01 $Perm)
(declare-const _current_wait_level_157@38@01 $Perm)
(push) ; 1
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 ($Snap.combine ($Snap.first $t@39@01) ($Snap.second $t@39@01))))
(assert (= ($Snap.first $t@39@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@35@01 $Ref.null)))
(assert (=
  ($Snap.second $t@39@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@39@01))
    ($Snap.second ($Snap.second $t@39@01)))))
(assert (= ($Snap.first ($Snap.second $t@39@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@35@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@39@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (= ($Snap.first $t@40@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (= ($Snap.first ($Snap.second $t@40@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@40@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@37@01 _current_wait_level_157@38@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@40@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@41@01 $Ref)
; [exec]
; var a_1: Ref
(declare-const a_1@42@01 $Ref)
; [exec]
; var b_0: Ref
(declare-const b_0@43@01 $Ref)
; [exec]
; var c: Ref
(declare-const c@44@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@45@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@46@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; a_1 := py_range___create__(1, 3, 0)
; [eval] py_range___create__(1, 3, 0)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 1 3 0))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 1 3 0))
(declare-const a_1@47@01 $Ref)
(assert (= a_1@47@01 (py_range___create__ $Snap.unit 1 3 0)))
; [exec]
; inhale _isDefined(3235681)
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; [eval] _isDefined(3235681)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3235681))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3235681))
(assert (_isDefined $Snap.unit 3235681))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; b_0 := py_range___create__(1, 6, 1)
; [eval] py_range___create__(1, 6, 1)
(set-option :timeout 0)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 1 6 1))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 1 6 1))
(declare-const b_0@49@01 $Ref)
(assert (= b_0@49@01 (py_range___create__ $Snap.unit 1 6 1)))
; [exec]
; inhale _isDefined(3170146)
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] _isDefined(3170146)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3170146))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170146))
(assert (_isDefined $Snap.unit 3170146))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; c := py_range___create__(4, 7, 2)
; [eval] py_range___create__(4, 7, 2)
(set-option :timeout 0)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 4 7 2))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 4 7 2))
(declare-const c@51@01 $Ref)
(assert (= c@51@01 (py_range___create__ $Snap.unit 4 7 2)))
; [exec]
; inhale _isDefined(99)
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 $Snap.unit))
; [eval] _isDefined(99)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 99))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 99))
(assert (_isDefined $Snap.unit 99))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall lambda17_21$x: Ref ::
;     { (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) }
;     issubtype(typeof(lambda17_21$x), int()) ==>
;     (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) ==>
;     (forall lambda17_42$y: Ref ::
;       { (lambda17_42$y in
;       py_range___sil_seq__(_checkDefined(b_0, 3170146))) }
;       issubtype(typeof(lambda17_42$y), int()) ==>
;       (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==>
;       int___eq__(lambda17_21$x, lambda17_42$y) ==>
;       (forall lambda17_79$x: Ref ::
;         { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) }
;         issubtype(typeof(lambda17_79$x), int()) ==>
;         (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==>
;         int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))))
; [eval] (forall lambda17_21$x: Ref :: { (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) } issubtype(typeof(lambda17_21$x), int()) ==> (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) ==> (forall lambda17_42$y: Ref :: { (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) } issubtype(typeof(lambda17_42$y), int()) ==> (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))))
(declare-const lambda17_21$x@53@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda17_21$x), int()) ==> (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) ==> (forall lambda17_42$y: Ref :: { (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) } issubtype(typeof(lambda17_42$y), int()) ==> (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))))
; [eval] issubtype(typeof(lambda17_21$x), int())
; [eval] typeof(lambda17_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 4 | issubtype[Bool](typeof[PyType](lambda17_21$x@53@01), int[PyType]) | live]
; [else-branch: 4 | !(issubtype[Bool](typeof[PyType](lambda17_21$x@53@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 4 | issubtype[Bool](typeof[PyType](lambda17_21$x@53@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType)))
; [eval] (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681))) ==> (forall lambda17_42$y: Ref :: { (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) } issubtype(typeof(lambda17_42$y), int()) ==> (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))))
; [eval] (lambda17_21$x in py_range___sil_seq__(_checkDefined(a_1, 3235681)))
; [eval] py_range___sil_seq__(_checkDefined(a_1, 3235681))
; [eval] _checkDefined(a_1, 3235681)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_1@47@01 3235681))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_1@47@01 3235681))
(push) ; 6
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))))
(push) ; 6
; [then-branch: 5 | lambda17_21$x@53@01 in py_range___sil_seq__(_, _checkDefined(_, a_1@47@01, 3235681)) | live]
; [else-branch: 5 | !(lambda17_21$x@53@01 in py_range___sil_seq__(_, _checkDefined(_, a_1@47@01, 3235681))) | live]
(push) ; 7
; [then-branch: 5 | lambda17_21$x@53@01 in py_range___sil_seq__(_, _checkDefined(_, a_1@47@01, 3235681))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
  lambda17_21$x@53@01))
; [eval] (forall lambda17_42$y: Ref :: { (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) } issubtype(typeof(lambda17_42$y), int()) ==> (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))))
(declare-const lambda17_42$y@54@01 $Ref)
(push) ; 8
; [eval] issubtype(typeof(lambda17_42$y), int()) ==> (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))
; [eval] issubtype(typeof(lambda17_42$y), int())
; [eval] typeof(lambda17_42$y)
; [eval] int()
(push) ; 9
; [then-branch: 6 | issubtype[Bool](typeof[PyType](lambda17_42$y@54@01), int[PyType]) | live]
; [else-branch: 6 | !(issubtype[Bool](typeof[PyType](lambda17_42$y@54@01), int[PyType])) | live]
(push) ; 10
; [then-branch: 6 | issubtype[Bool](typeof[PyType](lambda17_42$y@54@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
; [eval] (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146))) ==> int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))
; [eval] (lambda17_42$y in py_range___sil_seq__(_checkDefined(b_0, 3170146)))
; [eval] py_range___sil_seq__(_checkDefined(b_0, 3170146))
; [eval] _checkDefined(b_0, 3170146)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_0@49@01 3170146))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_0@49@01 3170146))
(push) ; 11
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))))
(push) ; 11
; [then-branch: 7 | lambda17_42$y@54@01 in py_range___sil_seq__(_, _checkDefined(_, b_0@49@01, 3170146)) | live]
; [else-branch: 7 | !(lambda17_42$y@54@01 in py_range___sil_seq__(_, _checkDefined(_, b_0@49@01, 3170146))) | live]
(push) ; 12
; [then-branch: 7 | lambda17_42$y@54@01 in py_range___sil_seq__(_, _checkDefined(_, b_0@49@01, 3170146))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
  lambda17_42$y@54@01))
; [eval] int___eq__(lambda17_21$x, lambda17_42$y) ==> (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))
; [eval] int___eq__(lambda17_21$x, lambda17_42$y)
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
(pop) ; 13
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
(push) ; 13
; [then-branch: 8 | int___eq__((_, _), lambda17_21$x@53@01, lambda17_42$y@54@01) | live]
; [else-branch: 8 | !(int___eq__((_, _), lambda17_21$x@53@01, lambda17_42$y@54@01)) | live]
(push) ; 14
; [then-branch: 8 | int___eq__((_, _), lambda17_21$x@53@01, lambda17_42$y@54@01)]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
; [eval] (forall lambda17_79$x: Ref :: { (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) } issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y)))
(declare-const lambda17_79$x@55@01 $Ref)
(push) ; 15
; [eval] issubtype(typeof(lambda17_79$x), int()) ==> (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))
; [eval] issubtype(typeof(lambda17_79$x), int())
; [eval] typeof(lambda17_79$x)
; [eval] int()
(push) ; 16
; [then-branch: 9 | issubtype[Bool](typeof[PyType](lambda17_79$x@55@01), int[PyType]) | live]
; [else-branch: 9 | !(issubtype[Bool](typeof[PyType](lambda17_79$x@55@01), int[PyType])) | live]
(push) ; 17
; [then-branch: 9 | issubtype[Bool](typeof[PyType](lambda17_79$x@55@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
; [eval] (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99))) ==> int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))
; [eval] (lambda17_79$x in py_range___sil_seq__(_checkDefined(c, 99)))
; [eval] py_range___sil_seq__(_checkDefined(c, 99))
; [eval] _checkDefined(c, 99)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c@51@01 99))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c@51@01 99))
(push) ; 18
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))))
(push) ; 18
; [then-branch: 10 | lambda17_79$x@55@01 in py_range___sil_seq__(_, _checkDefined(_, c@51@01, 99)) | live]
; [else-branch: 10 | !(lambda17_79$x@55@01 in py_range___sil_seq__(_, _checkDefined(_, c@51@01, 99))) | live]
(push) ; 19
; [then-branch: 10 | lambda17_79$x@55@01 in py_range___sil_seq__(_, _checkDefined(_, c@51@01, 99))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
  lambda17_79$x@55@01))
; [eval] int___gt__(int___unbox__(lambda17_79$x), int___unbox__(lambda17_42$y))
; [eval] int___unbox__(lambda17_79$x)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01))
; [eval] int___unbox__(lambda17_42$y)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01))
(push) ; 20
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))
(pop) ; 20
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))
(pop) ; 19
(push) ; 19
; [else-branch: 10 | !(lambda17_79$x@55@01 in py_range___sil_seq__(_, _checkDefined(_, c@51@01, 99)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01)))
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
      lambda17_79$x@55@01)
    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
      lambda17_79$x@55@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01)))
(pop) ; 17
(push) ; 17
; [else-branch: 9 | !(issubtype[Bool](typeof[PyType](lambda17_79$x@55@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit c@51@01 99)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        lambda17_79$x@55@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
          lambda17_79$x@55@01)
        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
          lambda17_79$x@55@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        lambda17_79$x@55@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
(pop) ; 15
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda17_79$x@55@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c@51@01 99)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
              lambda17_79$x@55@01)
            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
              lambda17_79$x@55@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|)))
(assert (forall ((lambda17_79$x@55@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c@51@01 99)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
              lambda17_79$x@55@01)
            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
              lambda17_79$x@55@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
    lambda17_79$x@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|)))
(pop) ; 14
(push) ; 14
; [else-branch: 8 | !(int___eq__((_, _), lambda17_21$x@53@01, lambda17_42$y@54@01))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
  (and
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
    (forall ((lambda17_79$x@55@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c@51@01 99)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                  lambda17_79$x@55@01)
                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                  lambda17_79$x@55@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        lambda17_79$x@55@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        lambda17_79$x@55@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
    (forall ((lambda17_79$x@55@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c@51@01 99)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                  lambda17_79$x@55@01)
                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                  lambda17_79$x@55@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
        lambda17_79$x@55@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|)))))
; Joined path conditions
(assert (or
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 7 | !(lambda17_42$y@54@01 in py_range___sil_seq__(_, _checkDefined(_, b_0@49@01, 3170146)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
      lambda17_42$y@54@01)
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
    (=>
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
      (and
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
        (forall ((lambda17_79$x@55@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c@51@01 99)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                      lambda17_79$x@55@01)
                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                      lambda17_79$x@55@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
        (forall ((lambda17_79$x@55@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c@51@01 99)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                      lambda17_79$x@55@01)
                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                      lambda17_79$x@55@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
    (or
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
      lambda17_42$y@54@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 6 | !(issubtype[Bool](typeof[PyType](lambda17_42$y@54@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
          lambda17_42$y@54@01)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
        (=>
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
          (and
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
            (forall ((lambda17_79$x@55@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                          lambda17_79$x@55@01)
                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                          lambda17_79$x@55@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
            (forall ((lambda17_79$x@55@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                          lambda17_79$x@55@01)
                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                          lambda17_79$x@55@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
        (or
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
          lambda17_42$y@54@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda17_42$y@54@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                (forall ((lambda17_79$x@55@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c@51@01 99)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                (forall ((lambda17_79$x@55@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c@51@01 99)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|)))
(assert (forall ((lambda17_42$y@54@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                (forall ((lambda17_79$x@55@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c@51@01 99)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                (forall ((lambda17_79$x@55@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c@51@01 99)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                            (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                              lambda17_79$x@55@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
    lambda17_42$y@54@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|)))
(pop) ; 7
(push) ; 7
; [else-branch: 5 | !(lambda17_21$x@53@01 in py_range___sil_seq__(_, _checkDefined(_, a_1@47@01, 3235681)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
      lambda17_21$x@53@01)
    (forall ((lambda17_42$y@54@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                    (forall ((lambda17_79$x@55@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c@51@01 99)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                    (forall ((lambda17_79$x@55@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c@51@01 99)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))
    (forall ((lambda17_42$y@54@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                    (forall ((lambda17_79$x@55@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c@51@01 99)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                    (forall ((lambda17_79$x@55@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c@51@01 99)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                  lambda17_79$x@55@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                        lambda17_79$x@55@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
      lambda17_21$x@53@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(issubtype[Bool](typeof[PyType](lambda17_21$x@53@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit a_1@47@01 3235681)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
        lambda17_21$x@53@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
          lambda17_21$x@53@01)
        (forall ((lambda17_42$y@54@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    lambda17_42$y@54@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (forall ((lambda17_79$x@55@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c@51@01 99)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                        (forall ((lambda17_79$x@55@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c@51@01 99)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    lambda17_42$y@54@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))
        (forall ((lambda17_42$y@54@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    lambda17_42$y@54@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (forall ((lambda17_79$x@55@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c@51@01 99)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                        (forall ((lambda17_79$x@55@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c@51@01 99)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                      lambda17_79$x@55@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    lambda17_79$x@55@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                            lambda17_79$x@55@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    lambda17_42$y@54@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
            lambda17_42$y@54@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
          lambda17_21$x@53@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
        lambda17_21$x@53@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda17_21$x@53@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_1@47@01 3235681)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
            lambda17_21$x@53@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
              lambda17_21$x@53@01)
            (forall ((lambda17_42$y@54@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))
            (forall ((lambda17_42$y@54@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
              lambda17_21$x@53@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
            lambda17_21$x@53@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@11@603@773-aux|)))
(assert (forall ((lambda17_21$x@53@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_1@47@01 3235681)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_1@47@01 3235681)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
            lambda17_21$x@53@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
              lambda17_21$x@53@01)
            (forall ((lambda17_42$y@54@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))
            (forall ((lambda17_42$y@54@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_0@49@01 3170146)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))
                            (forall ((lambda17_79$x@55@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@51@01 99)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                          lambda17_79$x@55@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                        lambda17_79$x@55@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                                lambda17_79$x@55@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                          lambda17_42$y@54@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                        lambda17_42$y@54@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                lambda17_42$y@54@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
              lambda17_21$x@53@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
            lambda17_21$x@53@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@11@603@773-aux|)))
(assert (forall ((lambda17_21$x@53@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
      (and
        (_checkDefined%precondition $Snap.unit a_1@47@01 3235681)
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
          lambda17_21$x@53@01))
      (forall ((lambda17_42$y@54@01 $Ref)) (!
        (and
          (=>
            (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
            (and
              (and
                (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146)))
              (=>
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                  lambda17_42$y@54@01)
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
            (forall ((lambda17_79$x@55@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                  (and
                    (_checkDefined%precondition $Snap.unit c@51@01 99)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))))
                (=>
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                      lambda17_79$x@55@01))
                  (and
                    (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                    (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771|))))
        :pattern ((Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
          lambda17_42$y@54@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
          lambda17_42$y@54@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
          lambda17_42$y@54@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772|))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@11@603@773_precondition|)))
(push) ; 3
(assert (not (forall ((lambda17_21$x@53@01 $Ref)) (!
  (=>
    (and
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
          (and
            (_checkDefined%precondition $Snap.unit a_1@47@01 3235681)
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
              lambda17_21$x@53@01))
          (forall ((lambda17_42$y@54@01 $Ref)) (!
            (and
              (=>
                (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                (and
                  (and
                    (_checkDefined%precondition $Snap.unit b_0@49@01 3170146)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146)))
                  (=>
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01))))
              (=>
                (and
                  (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
                      lambda17_42$y@54@01)
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
                (forall ((lambda17_79$x@55@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                      (and
                        (_checkDefined%precondition $Snap.unit c@51@01 99)
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c@51@01 99))))
                    (=>
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                          lambda17_79$x@55@01))
                      (and
                        (int___unbox__%precondition $Snap.unit lambda17_79$x@55@01)
                        (int___unbox__%precondition $Snap.unit lambda17_42$y@54@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                    lambda17_79$x@55@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771|))))
            :pattern ((Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01))
            :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772|))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
          lambda17_21$x@53@01)))
    (forall ((lambda17_42$y@54@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
        (forall ((lambda17_79$x@55@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@11@603@773|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda17_21$x@53@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda17_21$x@53@01) (as int<PyType>  PyType))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
        lambda17_21$x@53@01))
    (forall ((lambda17_42$y@54@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda17_42$y@54@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
              lambda17_42$y@54@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda17_21$x@53@01 lambda17_42$y@54@01)))
        (forall ((lambda17_79$x@55@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda17_79$x@55@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
                lambda17_79$x@55@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda17_79$x@55@01) (int___unbox__ $Snap.unit lambda17_42$y@54@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c@51@01 99))
            lambda17_79$x@55@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@496@603@771|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_0@49@01 3170146))
        lambda17_42$y@54@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@231@603@772|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_1@47@01 3235681))
    lambda17_21$x@53@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@603@11@603@773|)))
; [exec]
; label __end
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- test_nested_forall_2 ----------
(declare-const _cthread_158@56@01 $Ref)
(declare-const _caller_measures_158@57@01 Seq<Measure$>)
(declare-const _residue_158@58@01 $Perm)
(declare-const _current_wait_level_158@59@01 $Perm)
(declare-const _cthread_158@60@01 $Ref)
(declare-const _caller_measures_158@61@01 Seq<Measure$>)
(declare-const _residue_158@62@01 $Perm)
(declare-const _current_wait_level_158@63@01 $Perm)
(push) ; 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@60@01 $Ref.null)))
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(assert (= ($Snap.first ($Snap.second $t@64@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@60@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@64@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(assert (= ($Snap.first $t@65@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(assert (= ($Snap.first ($Snap.second $t@65@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@65@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@65@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@65@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@65@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@62@01 _current_wait_level_158@63@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@65@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@66@01 $Ref)
; [exec]
; var a_2: Ref
(declare-const a_2@67@01 $Ref)
; [exec]
; var b_1: Ref
(declare-const b_1@68@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@69@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@70@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@71@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; a_2 := py_range___create__(1, 5, 3)
; [eval] py_range___create__(1, 5, 3)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 1 5 3))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 1 5 3))
(declare-const a_2@72@01 $Ref)
(assert (= a_2@72@01 (py_range___create__ $Snap.unit 1 5 3)))
; [exec]
; inhale _isDefined(3301217)
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 $Snap.unit))
; [eval] _isDefined(3301217)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3301217))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3301217))
(assert (_isDefined $Snap.unit 3301217))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; b_1 := py_range___create__(1, 6, 4)
; [eval] py_range___create__(1, 6, 4)
(set-option :timeout 0)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 1 6 4))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 1 6 4))
(declare-const b_1@74@01 $Ref)
(assert (= b_1@74@01 (py_range___create__ $Snap.unit 1 6 4)))
; [exec]
; inhale _isDefined(3235682)
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 $Snap.unit))
; [eval] _isDefined(3235682)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3235682))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3235682))
(assert (_isDefined $Snap.unit 3235682))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; c_0 := py_range___create__(4, 7, 5)
; [eval] py_range___create__(4, 7, 5)
(set-option :timeout 0)
(push) ; 3
; [eval] stop >= start
(assert (py_range___create__%precondition $Snap.unit 4 7 5))
(pop) ; 3
; Joined path conditions
(assert (py_range___create__%precondition $Snap.unit 4 7 5))
(declare-const c_0@76@01 $Ref)
(assert (= c_0@76@01 (py_range___create__ $Snap.unit 4 7 5)))
; [exec]
; inhale _isDefined(3170147)
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 $Snap.unit))
; [eval] _isDefined(3170147)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3170147))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170147))
(assert (_isDefined $Snap.unit 3170147))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall lambda25_21$x: Ref ::
;     { (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) }
;     issubtype(typeof(lambda25_21$x), int()) ==>
;     (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==>
;     (forall lambda25_42$y: Ref ::
;       { (lambda25_42$y in
;       py_range___sil_seq__(_checkDefined(b_1, 3235682))) }
;       issubtype(typeof(lambda25_42$y), int()) ==>
;       (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==>
;       int___eq__(lambda25_21$x, lambda25_42$y) ==>
;       (forall lambda25_79$x: Ref ::
;         { (lambda25_79$x in
;         py_range___sil_seq__(_checkDefined(c_0, 3170147))) }
;         issubtype(typeof(lambda25_79$x), int()) ==>
;         (lambda25_79$x in
;         py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==>
;         int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))))
; [eval] (forall lambda25_21$x: Ref :: { (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) } issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))))
(declare-const lambda25_21$x@78@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] issubtype(typeof(lambda25_21$x), int())
; [eval] typeof(lambda25_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 11 | issubtype[Bool](typeof[PyType](lambda25_21$x@78@01), int[PyType]) | live]
; [else-branch: 11 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@78@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 11 | issubtype[Bool](typeof[PyType](lambda25_21$x@78@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType)))
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217)))
; [eval] py_range___sil_seq__(_checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(push) ; 6
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
(push) ; 6
; [then-branch: 12 | lambda25_21$x@78@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)) | live]
; [else-branch: 12 | !(lambda25_21$x@78@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))) | live]
(push) ; 7
; [then-branch: 12 | lambda25_21$x@78@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
  lambda25_21$x@78@01))
; [eval] (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
(declare-const lambda25_42$y@79@01 $Ref)
(push) ; 8
; [eval] issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] issubtype(typeof(lambda25_42$y), int())
; [eval] typeof(lambda25_42$y)
; [eval] int()
(push) ; 9
; [then-branch: 13 | issubtype[Bool](typeof[PyType](lambda25_42$y@79@01), int[PyType]) | live]
; [else-branch: 13 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@79@01), int[PyType])) | live]
(push) ; 10
; [then-branch: 13 | issubtype[Bool](typeof[PyType](lambda25_42$y@79@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682)))
; [eval] py_range___sil_seq__(_checkDefined(b_1, 3235682))
; [eval] _checkDefined(b_1, 3235682)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(push) ; 11
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))))
(push) ; 11
; [then-branch: 14 | lambda25_42$y@79@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)) | live]
; [else-branch: 14 | !(lambda25_42$y@79@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))) | live]
(push) ; 12
; [then-branch: 14 | lambda25_42$y@79@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
  lambda25_42$y@79@01))
; [eval] int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] int___eq__(lambda25_21$x, lambda25_42$y)
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
(pop) ; 13
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
(push) ; 13
; [then-branch: 15 | int___eq__((_, _), lambda25_21$x@78@01, lambda25_42$y@79@01) | live]
; [else-branch: 15 | !(int___eq__((_, _), lambda25_21$x@78@01, lambda25_42$y@79@01)) | live]
(push) ; 14
; [then-branch: 15 | int___eq__((_, _), lambda25_21$x@78@01, lambda25_42$y@79@01)]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
; [eval] (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
(declare-const lambda25_79$x@80@01 $Ref)
(push) ; 15
; [eval] issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] issubtype(typeof(lambda25_79$x), int())
; [eval] typeof(lambda25_79$x)
; [eval] int()
(push) ; 16
; [then-branch: 16 | issubtype[Bool](typeof[PyType](lambda25_79$x@80@01), int[PyType]) | live]
; [else-branch: 16 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@80@01), int[PyType])) | live]
(push) ; 17
; [then-branch: 16 | issubtype[Bool](typeof[PyType](lambda25_79$x@80@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147)))
; [eval] py_range___sil_seq__(_checkDefined(c_0, 3170147))
; [eval] _checkDefined(c_0, 3170147)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(push) ; 18
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
(push) ; 18
; [then-branch: 17 | lambda25_79$x@80@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)) | live]
; [else-branch: 17 | !(lambda25_79$x@80@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))) | live]
(push) ; 19
; [then-branch: 17 | lambda25_79$x@80@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
  lambda25_79$x@80@01))
; [eval] int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] int___unbox__(lambda25_79$x)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01))
; [eval] int___unbox__(lambda25_42$y)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01))
(push) ; 20
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))
(pop) ; 20
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))
(pop) ; 19
(push) ; 19
; [else-branch: 17 | !(lambda25_79$x@80@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01)))
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@80@01)
    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@80@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01)))
(pop) ; 17
(push) ; 17
; [else-branch: 16 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@80@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@80@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@80@01)
        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@80@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@80@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
(pop) ; 15
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_79$x@80@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@80@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@80@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(assert (forall ((lambda25_79$x@80@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@80@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@80@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(pop) ; 14
(push) ; 14
; [else-branch: 15 | !(int___eq__((_, _), lambda25_21$x@78@01, lambda25_42$y@79@01))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
  (and
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
    (forall ((lambda25_79$x@80@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@80@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@80@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@80@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@80@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
    (forall ((lambda25_79$x@80@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@80@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@80@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@80@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))))
; Joined path conditions
(assert (or
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 14 | !(lambda25_42$y@79@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@79@01)
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
    (=>
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
      (and
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
        (forall ((lambda25_79$x@80@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@80@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@80@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
        (forall ((lambda25_79$x@80@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@80@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@80@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
    (or
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@79@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 13 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@79@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@79@01)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
        (=>
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
          (and
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
            (forall ((lambda25_79$x@80@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@80@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@80@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
            (forall ((lambda25_79$x@80@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@80@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@80@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
        (or
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@79@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_42$y@79@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                (forall ((lambda25_79$x@80@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@80@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(assert (forall ((lambda25_42$y@79@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                (forall ((lambda25_79$x@80@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@80@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@80@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(pop) ; 7
(push) ; 7
; [else-branch: 12 | !(lambda25_21$x@78@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@78@01)
    (forall ((lambda25_42$y@79@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                    (forall ((lambda25_79$x@80@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@80@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
    (forall ((lambda25_42$y@79@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                    (forall ((lambda25_79$x@80@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@80@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@80@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@80@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@78@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@78@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@78@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@78@01)
        (forall ((lambda25_42$y@79@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@79@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (forall ((lambda25_79$x@80@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@80@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@79@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
        (forall ((lambda25_42$y@79@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@79@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (forall ((lambda25_79$x@80@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@80@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@80@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@80@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@80@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@79@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@79@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@78@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@78@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_21$x@78@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@78@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@78@01)
            (forall ((lambda25_42$y@79@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@79@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@78@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@78@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@78@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@78@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@78@01)
            (forall ((lambda25_42$y@79@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@79@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@80@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@80@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@80@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@80@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@79@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@79@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@79@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@78@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@78@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@78@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
      (and
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@78@01))
      (forall ((lambda25_42$y@79@01 $Ref)) (!
        (and
          (=>
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
            (and
              (and
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
              (=>
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@79@01)
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))
            (forall ((lambda25_79$x@80@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                  (and
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                (=>
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@80@01))
                  (and
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
        :pattern ((Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@79@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@79@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@79@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787_precondition|)))
(push) ; 3
(assert (not (forall ((lambda25_21$x@78@01 $Ref)) (!
  (=>
    (and
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
          (and
            (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@78@01))
          (forall ((lambda25_42$y@79@01 $Ref)) (!
            (and
              (=>
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                (and
                  (and
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
                  (=>
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01))))
              (=>
                (and
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@79@01)
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))
                (forall ((lambda25_79$x@80@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                      (and
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                    (=>
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@80@01))
                      (and
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@80@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@79@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@80@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
            :pattern ((Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01))
            :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@78@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@78@01)))
    (forall ((lambda25_42$y@79@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@79@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@79@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@78@01 lambda25_42$y@79@01)))
        (forall ((lambda25_79$x@80@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@80@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@80@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@80@01) (int___unbox__ $Snap.unit lambda25_42$y@79@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@80@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@79@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_21$x: Ref :: { (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) } issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))))
(declare-const lambda25_21$x@81@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] issubtype(typeof(lambda25_21$x), int())
; [eval] typeof(lambda25_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 18 | issubtype[Bool](typeof[PyType](lambda25_21$x@81@01), int[PyType]) | live]
; [else-branch: 18 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@81@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 18 | issubtype[Bool](typeof[PyType](lambda25_21$x@81@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217)))
; [eval] py_range___sil_seq__(_checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(push) ; 6
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
(push) ; 6
; [then-branch: 19 | lambda25_21$x@81@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)) | live]
; [else-branch: 19 | !(lambda25_21$x@81@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))) | live]
(push) ; 7
; [then-branch: 19 | lambda25_21$x@81@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
  lambda25_21$x@81@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
(declare-const lambda25_42$y@82@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] issubtype(typeof(lambda25_42$y), int())
; [eval] typeof(lambda25_42$y)
; [eval] int()
(push) ; 9
; [then-branch: 20 | issubtype[Bool](typeof[PyType](lambda25_42$y@82@01), int[PyType]) | live]
; [else-branch: 20 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@82@01), int[PyType])) | live]
(push) ; 10
; [then-branch: 20 | issubtype[Bool](typeof[PyType](lambda25_42$y@82@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682)))
; [eval] py_range___sil_seq__(_checkDefined(b_1, 3235682))
; [eval] _checkDefined(b_1, 3235682)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(push) ; 11
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))))
(push) ; 11
; [then-branch: 21 | lambda25_42$y@82@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)) | live]
; [else-branch: 21 | !(lambda25_42$y@82@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))) | live]
(push) ; 12
; [then-branch: 21 | lambda25_42$y@82@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
  lambda25_42$y@82@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] int___eq__(lambda25_21$x, lambda25_42$y)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
(pop) ; 13
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
(push) ; 13
; [then-branch: 22 | int___eq__((_, _), lambda25_21$x@81@01, lambda25_42$y@82@01) | live]
; [else-branch: 22 | !(int___eq__((_, _), lambda25_21$x@81@01, lambda25_42$y@82@01)) | live]
(push) ; 14
; [then-branch: 22 | int___eq__((_, _), lambda25_21$x@81@01, lambda25_42$y@82@01)]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
(declare-const lambda25_79$x@83@01 $Ref)
(set-option :timeout 0)
(push) ; 15
; [eval] issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] issubtype(typeof(lambda25_79$x), int())
; [eval] typeof(lambda25_79$x)
; [eval] int()
(push) ; 16
; [then-branch: 23 | issubtype[Bool](typeof[PyType](lambda25_79$x@83@01), int[PyType]) | live]
; [else-branch: 23 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@83@01), int[PyType])) | live]
(push) ; 17
; [then-branch: 23 | issubtype[Bool](typeof[PyType](lambda25_79$x@83@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147)))
; [eval] py_range___sil_seq__(_checkDefined(c_0, 3170147))
; [eval] _checkDefined(c_0, 3170147)
(set-option :timeout 0)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(push) ; 18
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
(push) ; 18
; [then-branch: 24 | lambda25_79$x@83@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)) | live]
; [else-branch: 24 | !(lambda25_79$x@83@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))) | live]
(push) ; 19
; [then-branch: 24 | lambda25_79$x@83@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
  lambda25_79$x@83@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] int___unbox__(lambda25_79$x)
(set-option :timeout 0)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01))
; [eval] int___unbox__(lambda25_42$y)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01))
(push) ; 20
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))
(pop) ; 20
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))
(pop) ; 19
(push) ; 19
; [else-branch: 24 | !(lambda25_79$x@83@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@83@01)
    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@83@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01)))
(pop) ; 17
(set-option :timeout 0)
(push) ; 17
; [else-branch: 23 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@83@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@83@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@83@01)
        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@83@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@83@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
(pop) ; 15
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_79$x@83@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@83@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@83@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(assert (forall ((lambda25_79$x@83@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@83@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@83@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@83@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(pop) ; 14
(set-option :timeout 0)
(push) ; 14
; [else-branch: 22 | !(int___eq__((_, _), lambda25_21$x@81@01, lambda25_42$y@82@01))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
  (and
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
    (forall ((lambda25_79$x@83@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@83@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@83@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@83@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@83@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
    (forall ((lambda25_79$x@83@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@83@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@83@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@83@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))))
; Joined path conditions
(assert (or
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 21 | !(lambda25_42$y@82@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@82@01)
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
    (=>
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
      (and
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
        (forall ((lambda25_79$x@83@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@83@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@83@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
        (forall ((lambda25_79$x@83@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@83@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@83@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
    (or
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@82@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01)))
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 20 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@82@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@82@01)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
        (=>
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
          (and
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
            (forall ((lambda25_79$x@83@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@83@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@83@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
            (forall ((lambda25_79$x@83@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@83@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@83@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
        (or
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@82@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_42$y@82@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                (forall ((lambda25_79$x@83@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@83@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(assert (forall ((lambda25_42$y@82@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                (forall ((lambda25_79$x@83@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@83@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@83@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 19 | !(lambda25_21$x@81@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@81@01)
    (forall ((lambda25_42$y@82@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                    (forall ((lambda25_79$x@83@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@83@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
    (forall ((lambda25_42$y@82@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                    (forall ((lambda25_79$x@83@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@83@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@83@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@83@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@81@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01)))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 18 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@81@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@81@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@81@01)
        (forall ((lambda25_42$y@82@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@82@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (forall ((lambda25_79$x@83@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@83@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@82@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
        (forall ((lambda25_42$y@82@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@82@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (forall ((lambda25_79$x@83@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@83@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@83@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@83@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@83@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@82@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@82@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@81@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@81@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_21$x@81@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@81@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@81@01)
            (forall ((lambda25_42$y@82@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@82@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@81@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@81@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@81@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@81@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@81@01)
            (forall ((lambda25_42$y@82@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@82@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@83@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@83@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@83@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@83@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@82@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@82@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@82@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@81@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@81@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@81@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
      (and
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@81@01))
      (forall ((lambda25_42$y@82@01 $Ref)) (!
        (and
          (=>
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
            (and
              (and
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
              (=>
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@82@01)
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))
            (forall ((lambda25_79$x@83@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                  (and
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                (=>
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@83@01))
                  (and
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
        :pattern ((Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@82@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@82@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@82@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((lambda25_21$x@81@01 $Ref)) (!
  (=>
    (and
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
          (and
            (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@81@01))
          (forall ((lambda25_42$y@82@01 $Ref)) (!
            (and
              (=>
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                (and
                  (and
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
                  (=>
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01))))
              (=>
                (and
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@82@01)
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))
                (forall ((lambda25_79$x@83@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                      (and
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                    (=>
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@83@01))
                      (and
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@83@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@82@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@83@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
            :pattern ((Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01))
            :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@81@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@81@01)))
    (forall ((lambda25_42$y@82@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@82@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@82@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@81@01 lambda25_42$y@82@01)))
        (forall ((lambda25_79$x@83@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@83@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@83@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@83@01) (int___unbox__ $Snap.unit lambda25_42$y@82@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@83@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@82@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_21$x: Ref :: { (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) } issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))))
(declare-const lambda25_21$x@84@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] issubtype(typeof(lambda25_21$x), int())
; [eval] typeof(lambda25_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 25 | issubtype[Bool](typeof[PyType](lambda25_21$x@84@01), int[PyType]) | live]
; [else-branch: 25 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@84@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 25 | issubtype[Bool](typeof[PyType](lambda25_21$x@84@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217)))
; [eval] py_range___sil_seq__(_checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(push) ; 6
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
(push) ; 6
; [then-branch: 26 | lambda25_21$x@84@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)) | live]
; [else-branch: 26 | !(lambda25_21$x@84@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))) | live]
(push) ; 7
; [then-branch: 26 | lambda25_21$x@84@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
  lambda25_21$x@84@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
(declare-const lambda25_42$y@85@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] issubtype(typeof(lambda25_42$y), int())
; [eval] typeof(lambda25_42$y)
; [eval] int()
(push) ; 9
; [then-branch: 27 | issubtype[Bool](typeof[PyType](lambda25_42$y@85@01), int[PyType]) | live]
; [else-branch: 27 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@85@01), int[PyType])) | live]
(push) ; 10
; [then-branch: 27 | issubtype[Bool](typeof[PyType](lambda25_42$y@85@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682)))
; [eval] py_range___sil_seq__(_checkDefined(b_1, 3235682))
; [eval] _checkDefined(b_1, 3235682)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(push) ; 11
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))))
(push) ; 11
; [then-branch: 28 | lambda25_42$y@85@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)) | live]
; [else-branch: 28 | !(lambda25_42$y@85@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))) | live]
(push) ; 12
; [then-branch: 28 | lambda25_42$y@85@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
  lambda25_42$y@85@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] int___eq__(lambda25_21$x, lambda25_42$y)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
(pop) ; 13
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
(push) ; 13
; [then-branch: 29 | int___eq__((_, _), lambda25_21$x@84@01, lambda25_42$y@85@01) | live]
; [else-branch: 29 | !(int___eq__((_, _), lambda25_21$x@84@01, lambda25_42$y@85@01)) | live]
(push) ; 14
; [then-branch: 29 | int___eq__((_, _), lambda25_21$x@84@01, lambda25_42$y@85@01)]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
(declare-const lambda25_79$x@86@01 $Ref)
(set-option :timeout 0)
(push) ; 15
; [eval] issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] issubtype(typeof(lambda25_79$x), int())
; [eval] typeof(lambda25_79$x)
; [eval] int()
(push) ; 16
; [then-branch: 30 | issubtype[Bool](typeof[PyType](lambda25_79$x@86@01), int[PyType]) | live]
; [else-branch: 30 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@86@01), int[PyType])) | live]
(push) ; 17
; [then-branch: 30 | issubtype[Bool](typeof[PyType](lambda25_79$x@86@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147)))
; [eval] py_range___sil_seq__(_checkDefined(c_0, 3170147))
; [eval] _checkDefined(c_0, 3170147)
(set-option :timeout 0)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(push) ; 18
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
(push) ; 18
; [then-branch: 31 | lambda25_79$x@86@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)) | live]
; [else-branch: 31 | !(lambda25_79$x@86@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))) | live]
(push) ; 19
; [then-branch: 31 | lambda25_79$x@86@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
  lambda25_79$x@86@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] int___unbox__(lambda25_79$x)
(set-option :timeout 0)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01))
; [eval] int___unbox__(lambda25_42$y)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01))
(push) ; 20
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))
(pop) ; 20
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))
(pop) ; 19
(push) ; 19
; [else-branch: 31 | !(lambda25_79$x@86@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@86@01)
    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@86@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01)))
(pop) ; 17
(set-option :timeout 0)
(push) ; 17
; [else-branch: 30 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@86@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@86@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@86@01)
        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@86@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@86@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
(pop) ; 15
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_79$x@86@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@86@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@86@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(assert (forall ((lambda25_79$x@86@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@86@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@86@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@86@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(pop) ; 14
(set-option :timeout 0)
(push) ; 14
; [else-branch: 29 | !(int___eq__((_, _), lambda25_21$x@84@01, lambda25_42$y@85@01))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
  (and
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
    (forall ((lambda25_79$x@86@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@86@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@86@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@86@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@86@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
    (forall ((lambda25_79$x@86@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@86@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@86@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@86@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))))
; Joined path conditions
(assert (or
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 28 | !(lambda25_42$y@85@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@85@01)
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
    (=>
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
      (and
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
        (forall ((lambda25_79$x@86@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@86@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@86@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
        (forall ((lambda25_79$x@86@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@86@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@86@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
    (or
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@85@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01)))
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 27 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@85@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@85@01)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
        (=>
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
          (and
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
            (forall ((lambda25_79$x@86@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@86@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@86@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
            (forall ((lambda25_79$x@86@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@86@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@86@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
        (or
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@85@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_42$y@85@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                (forall ((lambda25_79$x@86@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@86@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(assert (forall ((lambda25_42$y@85@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                (forall ((lambda25_79$x@86@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@86@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@86@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 26 | !(lambda25_21$x@84@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@84@01)
    (forall ((lambda25_42$y@85@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                    (forall ((lambda25_79$x@86@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@86@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
    (forall ((lambda25_42$y@85@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                    (forall ((lambda25_79$x@86@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@86@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@86@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@86@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@84@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01)))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 25 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@84@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@84@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@84@01)
        (forall ((lambda25_42$y@85@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@85@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (forall ((lambda25_79$x@86@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@86@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@85@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
        (forall ((lambda25_42$y@85@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@85@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (forall ((lambda25_79$x@86@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@86@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@86@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@86@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@86@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@85@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@85@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@84@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@84@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_21$x@84@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@84@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@84@01)
            (forall ((lambda25_42$y@85@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@85@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@84@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@84@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@84@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@84@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@84@01)
            (forall ((lambda25_42$y@85@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@85@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@86@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@86@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@86@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@86@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@85@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@85@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@85@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@84@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@84@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@84@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
      (and
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@84@01))
      (forall ((lambda25_42$y@85@01 $Ref)) (!
        (and
          (=>
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
            (and
              (and
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
              (=>
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@85@01)
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))
            (forall ((lambda25_79$x@86@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                  (and
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                (=>
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@86@01))
                  (and
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
        :pattern ((Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@85@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@85@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@85@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((lambda25_21$x@84@01 $Ref)) (!
  (=>
    (and
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
          (and
            (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@84@01))
          (forall ((lambda25_42$y@85@01 $Ref)) (!
            (and
              (=>
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                (and
                  (and
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
                  (=>
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01))))
              (=>
                (and
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@85@01)
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))
                (forall ((lambda25_79$x@86@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                      (and
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                    (=>
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@86@01))
                      (and
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@86@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@85@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@86@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
            :pattern ((Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01))
            :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@84@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@84@01)))
    (forall ((lambda25_42$y@85@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@85@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@85@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@84@01 lambda25_42$y@85@01)))
        (forall ((lambda25_79$x@86@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@86@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@86@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@86@01) (int___unbox__ $Snap.unit lambda25_42$y@85@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@86@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@85@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@84@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_21$x: Ref :: { (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) } issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))))
(declare-const lambda25_21$x@87@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda25_21$x), int()) ==> (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] issubtype(typeof(lambda25_21$x), int())
; [eval] typeof(lambda25_21$x)
; [eval] int()
(push) ; 4
; [then-branch: 32 | issubtype[Bool](typeof[PyType](lambda25_21$x@87@01), int[PyType]) | live]
; [else-branch: 32 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@87@01), int[PyType])) | live]
(push) ; 5
; [then-branch: 32 | issubtype[Bool](typeof[PyType](lambda25_21$x@87@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217))) ==> (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
; [eval] (lambda25_21$x in py_range___sil_seq__(_checkDefined(a_2, 3301217)))
; [eval] py_range___sil_seq__(_checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_2@72@01 3301217))
(push) ; 6
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
(push) ; 6
; [then-branch: 33 | lambda25_21$x@87@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)) | live]
; [else-branch: 33 | !(lambda25_21$x@87@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))) | live]
(push) ; 7
; [then-branch: 33 | lambda25_21$x@87@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
  lambda25_21$x@87@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_42$y: Ref :: { (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) } issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))))
(declare-const lambda25_42$y@88@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(lambda25_42$y), int()) ==> (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] issubtype(typeof(lambda25_42$y), int())
; [eval] typeof(lambda25_42$y)
; [eval] int()
(push) ; 9
; [then-branch: 34 | issubtype[Bool](typeof[PyType](lambda25_42$y@88@01), int[PyType]) | live]
; [else-branch: 34 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@88@01), int[PyType])) | live]
(push) ; 10
; [then-branch: 34 | issubtype[Bool](typeof[PyType](lambda25_42$y@88@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682))) ==> int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] (lambda25_42$y in py_range___sil_seq__(_checkDefined(b_1, 3235682)))
; [eval] py_range___sil_seq__(_checkDefined(b_1, 3235682))
; [eval] _checkDefined(b_1, 3235682)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit b_1@74@01 3235682))
(push) ; 11
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))))
(push) ; 11
; [then-branch: 35 | lambda25_42$y@88@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)) | live]
; [else-branch: 35 | !(lambda25_42$y@88@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))) | live]
(push) ; 12
; [then-branch: 35 | lambda25_42$y@88@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
  lambda25_42$y@88@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___eq__(lambda25_21$x, lambda25_42$y) ==> (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
; [eval] int___eq__(lambda25_21$x, lambda25_42$y)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
(pop) ; 13
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
(push) ; 13
; [then-branch: 36 | int___eq__((_, _), lambda25_21$x@87@01, lambda25_42$y@88@01) | live]
; [else-branch: 36 | !(int___eq__((_, _), lambda25_21$x@87@01, lambda25_42$y@88@01)) | live]
(push) ; 14
; [then-branch: 36 | int___eq__((_, _), lambda25_21$x@87@01, lambda25_42$y@88@01)]
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (forall lambda25_79$x: Ref :: { (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) } issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y)))
(declare-const lambda25_79$x@89@01 $Ref)
(set-option :timeout 0)
(push) ; 15
; [eval] issubtype(typeof(lambda25_79$x), int()) ==> (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] issubtype(typeof(lambda25_79$x), int())
; [eval] typeof(lambda25_79$x)
; [eval] int()
(push) ; 16
; [then-branch: 37 | issubtype[Bool](typeof[PyType](lambda25_79$x@89@01), int[PyType]) | live]
; [else-branch: 37 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@89@01), int[PyType])) | live]
(push) ; 17
; [then-branch: 37 | issubtype[Bool](typeof[PyType](lambda25_79$x@89@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147))) ==> int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] (lambda25_79$x in py_range___sil_seq__(_checkDefined(c_0, 3170147)))
; [eval] py_range___sil_seq__(_checkDefined(c_0, 3170147))
; [eval] _checkDefined(c_0, 3170147)
(set-option :timeout 0)
(push) ; 18
; [eval] _isDefined(id)
(push) ; 19
(pop) ; 19
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(pop) ; 18
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c_0@76@01 3170147))
(push) ; 18
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType)))
(assert (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147)))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
  (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
(push) ; 18
; [then-branch: 38 | lambda25_79$x@89@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)) | live]
; [else-branch: 38 | !(lambda25_79$x@89@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))) | live]
(push) ; 19
; [then-branch: 38 | lambda25_79$x@89@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147))]
(assert (Seq_contains
  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
  lambda25_79$x@89@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] int___gt__(int___unbox__(lambda25_79$x), int___unbox__(lambda25_42$y))
; [eval] int___unbox__(lambda25_79$x)
(set-option :timeout 0)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01))
; [eval] int___unbox__(lambda25_42$y)
(push) ; 20
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01))
(pop) ; 20
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01))
(push) ; 20
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))
(pop) ; 20
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))
(pop) ; 19
(push) ; 19
; [else-branch: 38 | !(lambda25_79$x@89@01 in py_range___sil_seq__(_, _checkDefined(_, c_0@76@01, 3170147)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 19
(pop) ; 18
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@89@01)
    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
      lambda25_79$x@89@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01)))
(pop) ; 17
(set-option :timeout 0)
(push) ; 17
; [else-branch: 37 | !(issubtype[Bool](typeof[PyType](lambda25_79$x@89@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@89@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@89@01)
        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
          lambda25_79$x@89@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@89@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
(pop) ; 15
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_79$x@89@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@89@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@89@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(assert (forall ((lambda25_79$x@89@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@89@01)
            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
              lambda25_79$x@89@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
    lambda25_79$x@89@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))
(pop) ; 14
(set-option :timeout 0)
(push) ; 14
; [else-branch: 36 | !(int___eq__((_, _), lambda25_21$x@87@01, lambda25_42$y@88@01))]
(assert (not
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 14
(pop) ; 13
; Joined path conditions
(assert (=>
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
  (and
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
    (forall ((lambda25_79$x@89@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@89@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@89@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@89@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@89@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
    (forall ((lambda25_79$x@89@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@89@01)
                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                  lambda25_79$x@89@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
        lambda25_79$x@89@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|)))))
; Joined path conditions
(assert (or
  (not
    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 35 | !(lambda25_42$y@88@01 in py_range___sil_seq__(_, _checkDefined(_, b_1@74@01, 3235682)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@88@01)
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
    (=>
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
      (and
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
        (forall ((lambda25_79$x@89@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@89@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@89@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
        (forall ((lambda25_79$x@89@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@89@01)
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@89@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
    (or
      (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
      lambda25_42$y@88@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01)))
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 34 | !(issubtype[Bool](typeof[PyType](lambda25_42$y@88@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@88@01)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
        (=>
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
          (and
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
            (forall ((lambda25_79$x@89@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@89@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@89@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
            (forall ((lambda25_79$x@89@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@89@01)
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@89@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
        (or
          (not
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@88@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_42$y@88@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                (forall ((lambda25_79$x@89@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@89@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(assert (forall ((lambda25_42$y@88@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01)
            (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
            (=>
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
              (and
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                (forall ((lambda25_79$x@89@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                (forall ((lambda25_79$x@89@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        (=>
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01)
                          (and
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                            (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                        (or
                          (not
                            (Seq_contains
                              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                              lambda25_79$x@89@01))
                          (Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))))
                    (or
                      (not
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
            (or
              (not
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
              (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
    lambda25_42$y@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 33 | !(lambda25_21$x@87@01 in py_range___sil_seq__(_, _checkDefined(_, a_2@72@01, 3301217)))]
(assert (not
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01)
  (and
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@87@01)
    (forall ((lambda25_42$y@88@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                    (forall ((lambda25_79$x@89@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@89@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
    (forall ((lambda25_42$y@88@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
            (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            (=>
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01)
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                (=>
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                  (and
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                    (forall ((lambda25_79$x@89@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                    (forall ((lambda25_79$x@89@01 $Ref)) (!
                      (and
                        (=>
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                          (and
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                            (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                            (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            (=>
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01)
                              (and
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                            (or
                              (not
                                (Seq_contains
                                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                  lambda25_79$x@89@01))
                              (Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))))
                        (or
                          (not
                            (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                          (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                      :pattern ((Seq_contains_trigger
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                        lambda25_79$x@89@01))
                      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                (or
                  (not
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
            (or
              (not
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))))
        (or
          (not
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|)))))
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
      lambda25_21$x@87@01))
  (Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01)))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 32 | !(issubtype[Bool](typeof[PyType](lambda25_21$x@87@01), int[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
    (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    (=>
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@87@01)
      (and
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@87@01)
        (forall ((lambda25_42$y@88@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@88@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (forall ((lambda25_79$x@89@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@89@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@88@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
        (forall ((lambda25_42$y@88@01 $Ref)) (!
          (and
            (=>
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
              (and
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                (=>
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@88@01)
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                    (=>
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                      (and
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (forall ((lambda25_79$x@89@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                        (forall ((lambda25_79$x@89@01 $Ref)) (!
                          (and
                            (=>
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                              (and
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                (=>
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01)
                                  (and
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                (or
                                  (not
                                    (Seq_contains
                                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                      lambda25_79$x@89@01))
                                  (Seq_contains
                                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    lambda25_79$x@89@01))))
                            (or
                              (not
                                (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                          :pattern ((Seq_contains_trigger
                            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                            lambda25_79$x@89@01))
                          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                    (or
                      (not
                        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                (or
                  (not
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01))
                  (Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    lambda25_42$y@88@01))))
            (or
              (not
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
            lambda25_42$y@88@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
    (or
      (not
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@87@01))
      (Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        lambda25_21$x@87@01)))))
; Joined path conditions
(assert (or
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_21$x@87@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@87@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@87@01)
            (forall ((lambda25_42$y@88@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@88@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@87@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@87@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@87@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_2@72@01 3301217)) (as py_range<PyType>  PyType))
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
        (=>
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@87@01)
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@87@01)
            (forall ((lambda25_42$y@88@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))
            (forall ((lambda25_42$y@88@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit b_1@74@01 3235682)) (as py_range<PyType>  PyType))
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                    (=>
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01)
                      (and
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01)
                        (int___eq__%precondition ($Snap.combine
                          $Snap.unit
                          $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                        (=>
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                          (and
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))
                            (forall ((lambda25_79$x@89@01 $Ref)) (!
                              (and
                                (=>
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                  (and
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                                    (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c_0@76@01 3170147)) (as py_range<PyType>  PyType))
                                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                    (=>
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01)
                                      (and
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01))))
                                    (or
                                      (not
                                        (Seq_contains
                                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                          lambda25_79$x@89@01))
                                      (Seq_contains
                                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                        lambda25_79$x@89@01))))
                                (or
                                  (not
                                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType)))
                                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))))
                              :pattern ((Seq_contains_trigger
                                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                                lambda25_79$x@89@01))
                              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785-aux|))))
                        (or
                          (not
                            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))
                          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
                    (or
                      (not
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                          lambda25_42$y@88@01))
                      (Seq_contains
                        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                        lambda25_42$y@88@01))))
                (or
                  (not
                    (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType)))
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                lambda25_42$y@88@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786-aux|))))
        (or
          (not
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@87@01))
          (Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
            lambda25_21$x@87@01))))
    (or
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType)))
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787-aux|)))
(assert (forall ((lambda25_21$x@87@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
      (and
        (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@87@01))
      (forall ((lambda25_42$y@88@01 $Ref)) (!
        (and
          (=>
            (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
            (and
              (and
                (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
              (=>
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01)
                (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
              (and
                (Seq_contains
                  (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                  lambda25_42$y@88@01)
                (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))
            (forall ((lambda25_79$x@89@01 $Ref)) (!
              (and
                (=>
                  (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                  (and
                    (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                (=>
                  (and
                    (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                      lambda25_79$x@89@01))
                  (and
                    (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                    (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                    (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))))
              :pattern ((Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :pattern ((Seq_contains_trigger
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
              :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
        :pattern ((Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@88@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@88@01))
        :pattern ((Seq_contains_trigger
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
          lambda25_42$y@88@01))
        :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787_precondition|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((lambda25_21$x@87@01 $Ref)) (!
  (=>
    (and
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
          (and
            (_checkDefined%precondition $Snap.unit a_2@72@01 3301217)
            (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
              lambda25_21$x@87@01))
          (forall ((lambda25_42$y@88@01 $Ref)) (!
            (and
              (=>
                (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                (and
                  (and
                    (_checkDefined%precondition $Snap.unit b_1@74@01 3235682)
                    (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682)))
                  (=>
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01)
                    (int___eq__%precondition ($Snap.combine
                      $Snap.unit
                      $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01))))
              (=>
                (and
                  (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
                  (and
                    (Seq_contains
                      (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
                      lambda25_42$y@88@01)
                    (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))
                (forall ((lambda25_79$x@89@01 $Ref)) (!
                  (and
                    (=>
                      (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                      (and
                        (_checkDefined%precondition $Snap.unit c_0@76@01 3170147)
                        (py_range___sil_seq__%precondition $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))))
                    (=>
                      (and
                        (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
                        (Seq_contains
                          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                          lambda25_79$x@89@01))
                      (and
                        (int___unbox__%precondition $Snap.unit lambda25_79$x@89@01)
                        (int___unbox__%precondition $Snap.unit lambda25_42$y@88@01)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))))
                  :pattern ((Seq_contains
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :pattern ((Seq_contains_trigger
                    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                    lambda25_79$x@89@01))
                  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|))))
            :pattern ((Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01))
            :pattern ((Seq_contains_trigger
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01))
            :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_21$x@87@01) (as int<PyType>  PyType))
        (Seq_contains
          (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
          lambda25_21$x@87@01)))
    (forall ((lambda25_42$y@88@01 $Ref)) (!
      (=>
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_42$y@88@01) (as int<PyType>  PyType))
          (and
            (Seq_contains
              (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
              lambda25_42$y@88@01)
            (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) lambda25_21$x@87@01 lambda25_42$y@88@01)))
        (forall ((lambda25_79$x@89@01 $Ref)) (!
          (=>
            (and
              (issubtype<Bool> (typeof<PyType> lambda25_79$x@89@01) (as int<PyType>  PyType))
              (Seq_contains
                (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
                lambda25_79$x@89@01))
            (int___gt__ $Snap.unit (int___unbox__ $Snap.unit lambda25_79$x@89@01) (int___unbox__ $Snap.unit lambda25_42$y@88@01)))
          :pattern ((Seq_contains
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))
          :pattern ((Seq_contains_trigger
            (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit c_0@76@01 3170147))
            lambda25_79$x@89@01))
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@496@629@785|)))
      :pattern ((Seq_contains
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01))
      :pattern ((Seq_contains_trigger
        (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit b_1@74@01 3235682))
        lambda25_42$y@88@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@231@629@786|)))
  :pattern ((Seq_contains
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :pattern ((Seq_contains_trigger
    (py_range___sil_seq__ $Snap.unit (_checkDefined $Snap.unit a_2@72@01 3301217))
    lambda25_21$x@87@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationissues00017.py.vpr@629@11@629@787|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_159@90@01 $Ref)
(declare-const _caller_measures_159@91@01 Seq<Measure$>)
(declare-const _residue_159@92@01 $Perm)
(declare-const _current_wait_level_159@93@01 $Perm)
(declare-const _cthread_159@94@01 $Ref)
(declare-const _caller_measures_159@95@01 Seq<Measure$>)
(declare-const _residue_159@96@01 $Perm)
(declare-const _current_wait_level_159@97@01 $Perm)
(push) ; 1
(declare-const $t@98@01 $Snap)
(assert (= $t@98@01 ($Snap.combine ($Snap.first $t@98@01) ($Snap.second $t@98@01))))
(assert (= ($Snap.first $t@98@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@94@01 $Ref.null)))
(assert (=
  ($Snap.second $t@98@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@01))
    ($Snap.second ($Snap.second $t@98@01)))))
(assert (= ($Snap.first ($Snap.second $t@98@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@94@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@98@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (= ($Snap.first $t@99@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@99@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@01))
    ($Snap.second ($Snap.second $t@99@01)))))
(assert (= ($Snap.first ($Snap.second $t@99@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@99@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@99@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@96@01 _current_wait_level_159@97@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@99@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@100@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@101@01 Set<_Name>)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@102@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@103@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; module_defined_0 := true
; [exec]
; module_names_0 := Set[_Name]()
; [eval] Set[_Name]()
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872323072689856351)))
; [eval] (module_names_0 union Set(_single(6872323072689856351)))
; [eval] Set(_single(6872323072689856351))
; [eval] _single(6872323072689856351)
(declare-const module_names_0@104@01 Set<_Name>)
(assert (=
  module_names_0@104@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@105@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@105@01))
    ($Snap.second ($Snap.second $t@105@01)))))
(assert (= ($Snap.first ($Snap.second $t@105@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@105@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@105@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872323076851130207)))
; [eval] (module_names_0 union Set(_single(6872323076851130207)))
; [eval] Set(_single(6872323076851130207))
; [eval] _single(6872323076851130207)
(declare-const module_names_0@106@01 Set<_Name>)
(assert (=
  module_names_0@106@01
  (Set_union module_names_0@104@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(assert (__name__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__name__%precondition $Snap.unit))
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__file__ $Snap.unit) (__name__ $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (__name__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] str___eq__(str___create__(8, 6872332955275845471), __name__()._val)
; [eval] str___create__(8, 6872332955275845471)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 8 6872332955275845471))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 8 6872332955275845471))
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType)))
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@107@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(97)))
; [eval] (module_names_0 union Set(_single(97)))
; [eval] Set(_single(97))
; [eval] _single(97)
(declare-const module_names_0@108@01 Set<_Name>)
(assert (=
  module_names_0@108@01
  (Set_union module_names_0@106@01 (Set_singleton (_single<_Name> 97)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(9445006905554459262728859446630747640915316)))
; [eval] (module_names_0 union Set(_single(9445006905554459262728859446630747640915316)))
; [eval] Set(_single(9445006905554459262728859446630747640915316))
; [eval] _single(9445006905554459262728859446630747640915316)
(declare-const module_names_0@109@01 Set<_Name>)
(assert (=
  module_names_0@109@01
  (Set_union module_names_0@108@01 (Set_singleton (_single<_Name> 9445006905554459262728859446630747640915316)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(287577554341957939869365815985247252367258379636)))
; [eval] (module_names_0 union Set(_single(287577554341957939869365815985247252367258379636)))
; [eval] Set(_single(287577554341957939869365815985247252367258379636))
; [eval] _single(287577554341957939869365815985247252367258379636)
(declare-const module_names_0@110@01 Set<_Name>)
(assert (=
  module_names_0@110@01
  (Set_union module_names_0@109@01 (Set_singleton (_single<_Name> 287577554341957939869365815985247252367258379636)))))
; [exec]
; label __end
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- list___init__ ----------
(declare-const _cthread_8@111@01 $Ref)
(declare-const _caller_measures_8@112@01 Seq<Measure$>)
(declare-const _residue_8@113@01 $Perm)
(declare-const _current_wait_level_8@114@01 $Perm)
(declare-const res@115@01 $Ref)
(declare-const _cthread_8@116@01 $Ref)
(declare-const _caller_measures_8@117@01 Seq<Measure$>)
(declare-const _residue_8@118@01 $Perm)
(declare-const _current_wait_level_8@119@01 $Perm)
(declare-const res@120@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] _cthread_8 != null
(assert (not (= _cthread_8@116@01 $Ref.null)))
(assert (=
  ($Snap.second $t@121@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@121@01))
    ($Snap.second ($Snap.second $t@121@01)))))
(assert (= ($Snap.first ($Snap.second $t@121@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@117@01 _cthread_8@116@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@117@01 _cthread_8@116@01 1))
(assert (Measure$check $Snap.unit _caller_measures_8@117@01 _cthread_8@116@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@121@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@121@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@121@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_8@116@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@121@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@122@01 $Snap)
(assert (= $t@122@01 ($Snap.combine ($Snap.first $t@122@01) ($Snap.second $t@122@01))))
(assert (= ($Snap.first $t@122@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@122@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@122@01))
    ($Snap.second ($Snap.second $t@122@01)))))
(assert (= ($Snap.first ($Snap.second $t@122@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@122@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@122@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@122@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_8@118@01 _current_wait_level_8@119@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@122@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@122@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))
(assert (not (= res@120@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@120@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@120@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@122@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@120@01))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_8: Perm
(declare-const _cwl_8@123@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
