(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:29:36
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
(declare-sort _dict_ce_helper 0)
(declare-sort Measure$ 0)
(declare-sort $FVF<list_acc> 0)
(declare-sort $FVF<set_acc> 0)
(declare-sort $FVF<dict_acc> 0)
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
(declare-fun $SortWrappers._dict_ce_helperTo$Snap (_dict_ce_helper) $Snap)
(declare-fun $SortWrappers.$SnapTo_dict_ce_helper ($Snap) _dict_ce_helper)
(assert (forall ((x _dict_ce_helper)) (!
    (= x ($SortWrappers.$SnapTo_dict_ce_helper($SortWrappers._dict_ce_helperTo$Snap x)))
    :pattern (($SortWrappers._dict_ce_helperTo$Snap x))
    :qid |$Snap.$SnapTo_dict_ce_helperTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers._dict_ce_helperTo$Snap($SortWrappers.$SnapTo_dict_ce_helper x)))
    :pattern (($SortWrappers.$SnapTo_dict_ce_helper x))
    :qid |$Snap._dict_ce_helperTo$SnapTo_dict_ce_helper|
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
(declare-fun $SortWrappers.$FVF<set_acc>To$Snap ($FVF<set_acc>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<set_acc> ($Snap) $FVF<set_acc>)
(assert (forall ((x $FVF<set_acc>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<set_acc>($SortWrappers.$FVF<set_acc>To$Snap x)))
    :pattern (($SortWrappers.$FVF<set_acc>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<set_acc>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<set_acc>To$Snap($SortWrappers.$SnapTo$FVF<set_acc> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<set_acc> x))
    :qid |$Snap.$FVF<set_acc>To$SnapTo$FVF<set_acc>|
    )))
(declare-fun $SortWrappers.$FVF<dict_acc>To$Snap ($FVF<dict_acc>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<dict_acc> ($Snap) $FVF<dict_acc>)
(assert (forall ((x $FVF<dict_acc>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<dict_acc>($SortWrappers.$FVF<dict_acc>To$Snap x)))
    :pattern (($SortWrappers.$FVF<dict_acc>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<dict_acc>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<dict_acc>To$Snap($SortWrappers.$SnapTo$FVF<dict_acc> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<dict_acc> x))
    :qid |$Snap.$FVF<dict_acc>To$SnapTo$FVF<dict_acc>|
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
(declare-fun dict_get_helper<Ref> (Set<$Ref> $Ref $Ref) $Ref)
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
; /field_value_functions_declarations.smt2 [set_acc: Set[Ref]]
(declare-fun $FVF.domain_set_acc ($FVF<set_acc>) Set<$Ref>)
(declare-fun $FVF.lookup_set_acc ($FVF<set_acc> $Ref) Set<$Ref>)
(declare-fun $FVF.after_set_acc ($FVF<set_acc> $FVF<set_acc>) Bool)
(declare-fun $FVF.loc_set_acc (Set<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_set_acc ($FPM $Ref) $Perm)
(declare-const $fvfTOP_set_acc $FVF<set_acc>)
; /field_value_functions_declarations.smt2 [dict_acc: Set[Ref]]
(declare-fun $FVF.domain_dict_acc ($FVF<dict_acc>) Set<$Ref>)
(declare-fun $FVF.lookup_dict_acc ($FVF<dict_acc> $Ref) Set<$Ref>)
(declare-fun $FVF.after_dict_acc ($FVF<dict_acc> $FVF<dict_acc>) Bool)
(declare-fun $FVF.loc_dict_acc (Set<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_dict_acc ($FPM $Ref) $Perm)
(declare-const $fvfTOP_dict_acc $FVF<dict_acc>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun py_range___val__ ($Snap $Ref) Seq<Int>)
(declare-fun py_range___val__%limited ($Snap $Ref) Seq<Int>)
(declare-fun py_range___val__%stateless ($Ref) Bool)
(declare-fun py_range___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__bool___box__ ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%limited ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%stateless (Bool) Bool)
(declare-fun __prim__bool___box__%precondition ($Snap Bool) Bool)
(declare-fun int___unbox__ ($Snap $Ref) Int)
(declare-fun int___unbox__%limited ($Snap $Ref) Int)
(declare-fun int___unbox__%stateless ($Ref) Bool)
(declare-fun int___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun bool___unbox__ ($Snap $Ref) Bool)
(declare-fun bool___unbox__%limited ($Snap $Ref) Bool)
(declare-fun bool___unbox__%stateless ($Ref) Bool)
(declare-fun bool___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__int___box__ ($Snap Int) $Ref)
(declare-fun __prim__int___box__%limited ($Snap Int) $Ref)
(declare-fun __prim__int___box__%stateless (Int) Bool)
(declare-fun __prim__int___box__%precondition ($Snap Int) Bool)
(declare-fun list___len__ ($Snap $Ref) Int)
(declare-fun list___len__%limited ($Snap $Ref) Int)
(declare-fun list___len__%stateless ($Ref) Bool)
(declare-fun list___len__%precondition ($Snap $Ref) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
(declare-fun py_range___len__ ($Snap $Ref) Int)
(declare-fun py_range___len__%limited ($Snap $Ref) Int)
(declare-fun py_range___len__%stateless ($Ref) Bool)
(declare-fun py_range___len__%precondition ($Snap $Ref) Bool)
(declare-fun dict___values__ ($Snap $Ref) Seq<$Ref>)
(declare-fun dict___values__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun dict___values__%stateless ($Ref) Bool)
(declare-fun dict___values__%precondition ($Snap $Ref) Bool)
(declare-fun dict___contains__ ($Snap $Ref $Ref) Bool)
(declare-fun dict___contains__%limited ($Snap $Ref $Ref) Bool)
(declare-fun dict___contains__%stateless ($Ref $Ref) Bool)
(declare-fun dict___contains__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun py_range___stop__ ($Snap $Ref) Int)
(declare-fun py_range___stop__%limited ($Snap $Ref) Int)
(declare-fun py_range___stop__%stateless ($Ref) Bool)
(declare-fun py_range___stop__%precondition ($Snap $Ref) Bool)
(declare-fun py_range___start__ ($Snap $Ref) Int)
(declare-fun py_range___start__%limited ($Snap $Ref) Int)
(declare-fun py_range___start__%stateless ($Ref) Bool)
(declare-fun py_range___start__%precondition ($Snap $Ref) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun list___getitem__ ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%limited ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%stateless ($Ref $Ref) Bool)
(declare-fun list___getitem__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___lt__ ($Snap Int Int) Bool)
(declare-fun int___lt__%limited ($Snap Int Int) Bool)
(declare-fun int___lt__%stateless (Int Int) Bool)
(declare-fun int___lt__%precondition ($Snap Int Int) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun py_range___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun py_range___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun py_range___sil_seq__%stateless ($Ref) Bool)
(declare-fun py_range___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun dict___getitem__ ($Snap $Ref $Ref) $Ref)
(declare-fun dict___getitem__%limited ($Snap $Ref $Ref) $Ref)
(declare-fun dict___getitem__%stateless ($Ref $Ref) Bool)
(declare-fun dict___getitem__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___ge__ ($Snap Int Int) Bool)
(declare-fun int___ge__%limited ($Snap Int Int) Bool)
(declare-fun int___ge__%stateless (Int Int) Bool)
(declare-fun int___ge__%precondition ($Snap Int Int) Bool)
(declare-fun py_range___create__ ($Snap Int Int Int) $Ref)
(declare-fun py_range___create__%limited ($Snap Int Int Int) $Ref)
(declare-fun py_range___create__%stateless (Int Int Int) Bool)
(declare-fun py_range___create__%precondition ($Snap Int Int Int) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
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
; /field_value_functions_axioms.smt2 [set_acc: Set[Ref]]
(assert (forall ((vs $FVF<set_acc>) (ws $FVF<set_acc>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_set_acc vs) ($FVF.domain_set_acc ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_set_acc vs))
            (= ($FVF.lookup_set_acc vs x) ($FVF.lookup_set_acc ws x)))
          :pattern (($FVF.lookup_set_acc vs x) ($FVF.lookup_set_acc ws x))
          :qid |qp.$FVF<set_acc>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<set_acc>To$Snap vs)
              ($SortWrappers.$FVF<set_acc>To$Snap ws)
              )
    :qid |qp.$FVF<set_acc>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_set_acc pm r))
    :pattern (($FVF.perm_set_acc pm r)))))
(assert (forall ((r $Ref) (f Set<$Ref>)) (!
    (= ($FVF.loc_set_acc f r) true)
    :pattern (($FVF.loc_set_acc f r)))))
; /field_value_functions_axioms.smt2 [dict_acc: Set[Ref]]
(assert (forall ((vs $FVF<dict_acc>) (ws $FVF<dict_acc>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_dict_acc vs) ($FVF.domain_dict_acc ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_dict_acc vs))
            (= ($FVF.lookup_dict_acc vs x) ($FVF.lookup_dict_acc ws x)))
          :pattern (($FVF.lookup_dict_acc vs x) ($FVF.lookup_dict_acc ws x))
          :qid |qp.$FVF<dict_acc>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<dict_acc>To$Snap vs)
              ($SortWrappers.$FVF<dict_acc>To$Snap ws)
              )
    :qid |qp.$FVF<dict_acc>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_dict_acc pm r))
    :pattern (($FVF.perm_dict_acc pm r)))))
(assert (forall ((r $Ref) (f Set<$Ref>)) (!
    (= ($FVF.loc_dict_acc f r) true)
    :pattern (($FVF.loc_dict_acc f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION py_range___val__----------
(declare-fun self@0@00 () $Ref)
(declare-fun result@1@00 () Seq<Int>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (py_range___val__%limited s@$ self@0@00) (py_range___val__ s@$ self@0@00))
  :pattern ((py_range___val__ s@$ self@0@00))
  :qid |quant-u-4328|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (py_range___val__%stateless self@0@00)
  :pattern ((py_range___val__%limited s@$ self@0@00))
  :qid |quant-u-4329|)))
; ---------- FUNCTION str___val__----------
(declare-fun self@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___val__%limited s@$ self@2@00) (str___val__ s@$ self@2@00))
  :pattern ((str___val__ s@$ self@2@00))
  :qid |quant-u-4330|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___val__%stateless self@2@00)
  :pattern ((str___val__%limited s@$ self@2@00))
  :qid |quant-u-4331|)))
; ---------- FUNCTION str___len__----------
(declare-fun self@4@00 () $Ref)
(declare-fun result@5@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@67@00 $Snap)
(assert (= $t@67@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@5@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (= (str___len__%limited s@$ self@4@00) (str___len__ s@$ self@4@00))
  :pattern ((str___len__ s@$ self@4@00))
  :qid |quant-u-4332|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (str___len__%stateless self@4@00)
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4333|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (str___len__%limited s@$ self@4@00))) (=>
    (str___len__%precondition s@$ self@4@00)
    (>= result@5@00 0)))
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4384|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (str___len__%limited s@$ self@4@00))) true)
  :pattern ((str___len__%limited s@$ self@4@00))
  :qid |quant-u-4385|)))
; ---------- FUNCTION __prim__bool___box__----------
(declare-fun prim@6@00 () Bool)
(declare-fun result@7@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@68@00 $Snap)
(assert (= $t@68@00 ($Snap.combine ($Snap.first $t@68@00) ($Snap.second $t@68@00))))
(assert (= ($Snap.first $t@68@00) $Snap.unit))
; [eval] typeof(result) == bool()
; [eval] typeof(result)
; [eval] bool()
(assert (= (typeof<PyType> result@7@00) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second $t@68@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@00))
    ($Snap.second ($Snap.second $t@68@00)))))
(assert (= ($Snap.first ($Snap.second $t@68@00)) $Snap.unit))
; [eval] bool___unbox__(result) == prim
; [eval] bool___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@7@00) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@7@00) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit result@7@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@7@00) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit result@7@00)))
(assert (= (bool___unbox__ $Snap.unit result@7@00) prim@6@00))
(assert (= ($Snap.second ($Snap.second $t@68@00)) $Snap.unit))
; [eval] int___unbox__(result) == (prim ? 1 : 0)
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@7@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@7@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@7@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@7@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@7@00)))
; [eval] (prim ? 1 : 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not prim@6@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not prim@6@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | prim@6@00 | live]
; [else-branch: 0 | !(prim@6@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | prim@6@00]
(assert prim@6@00)
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(prim@6@00)]
(assert (not prim@6@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not prim@6@00) prim@6@00))
(assert (= (int___unbox__ $Snap.unit result@7@00) (ite prim@6@00 1 0)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@6@00)
    (__prim__bool___box__ s@$ prim@6@00))
  :pattern ((__prim__bool___box__ s@$ prim@6@00))
  :qid |quant-u-4334|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (__prim__bool___box__%stateless prim@6@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-4335|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (and
      (= (typeof<PyType> result@7@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@7@00) prim@6@00)
      (= (int___unbox__%limited $Snap.unit result@7@00) (ite prim@6@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-4386|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-4387|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (bool___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-4388|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (int___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-4389|)))
; ---------- FUNCTION int___unbox__----------
(declare-fun box@8@00 () $Ref)
(declare-fun result@9@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> box@8@00) (as int<PyType>  PyType)))
(declare-const $t@69@00 $Snap)
(assert (= $t@69@00 ($Snap.combine ($Snap.first $t@69@00) ($Snap.second $t@69@00))))
(assert (= ($Snap.first $t@69@00) $Snap.unit))
; [eval] !issubtype(typeof(box), bool()) ==> __prim__int___box__(result) == box
; [eval] !issubtype(typeof(box), bool())
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(issubtype[Bool](typeof[PyType](box@8@00), bool[PyType])) | live]
; [else-branch: 1 | issubtype[Bool](typeof[PyType](box@8@00), bool[PyType]) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(issubtype[Bool](typeof[PyType](box@8@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
; [eval] __prim__int___box__(result) == box
; [eval] __prim__int___box__(result)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit result@9@00))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit result@9@00))
(pop) ; 3
(push) ; 3
; [else-branch: 1 | issubtype[Bool](typeof[PyType](box@8@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
  (and
    (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
    (__prim__int___box__%precondition $Snap.unit result@9@00))))
; Joined path conditions
(assert (or
  (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))))
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
  (= (__prim__int___box__ $Snap.unit result@9@00) box@8@00)))
(assert (= ($Snap.second $t@69@00) $Snap.unit))
; [eval] issubtype(typeof(box), bool()) ==> __prim__bool___box__(result != 0) == box
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | issubtype[Bool](typeof[PyType](box@8@00), bool[PyType]) | live]
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](box@8@00), bool[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | issubtype[Bool](typeof[PyType](box@8@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
; [eval] __prim__bool___box__(result != 0) == box
; [eval] __prim__bool___box__(result != 0)
; [eval] result != 0
(push) ; 4
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0))))
(pop) ; 4
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](box@8@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0))))))
; Joined path conditions
(assert (or
  (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))
  (= (__prim__bool___box__ $Snap.unit (not (= result@9@00 0))) box@8@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@8@00) (int___unbox__ s@$ box@8@00))
  :pattern ((int___unbox__ s@$ box@8@00))
  :qid |quant-u-4336|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (int___unbox__%stateless box@8@00)
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-4337|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (int___unbox__%precondition s@$ box@8@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@9@00) box@8@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@9@00 0)))
          box@8@00)))))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-4390|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@9@00)))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-4391|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-4392|)))
; ---------- FUNCTION bool___unbox__----------
(declare-fun box@10@00 () $Ref)
(declare-fun result@11@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> box@10@00) (as bool<PyType>  PyType)))
(declare-const $t@70@00 $Snap)
(assert (= $t@70@00 $Snap.unit))
; [eval] __prim__bool___box__(result) == box
; [eval] __prim__bool___box__(result)
(push) ; 2
(assert (__prim__bool___box__%precondition $Snap.unit result@11@00))
(pop) ; 2
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit result@11@00))
(assert (= (__prim__bool___box__ $Snap.unit result@11@00) box@10@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@10@00) (bool___unbox__ s@$ box@10@00))
  :pattern ((bool___unbox__ s@$ box@10@00))
  :qid |quant-u-4338|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (bool___unbox__%stateless box@10@00)
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4339|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (let ((result@11@00 (bool___unbox__%limited s@$ box@10@00))) (=>
    (bool___unbox__%precondition s@$ box@10@00)
    (= (__prim__bool___box__%limited $Snap.unit result@11@00) box@10@00)))
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4393|)))
(assert (forall ((s@$ $Snap) (box@10@00 $Ref)) (!
  (let ((result@11@00 (bool___unbox__%limited s@$ box@10@00))) (=>
    (bool___unbox__%precondition s@$ box@10@00)
    (__prim__bool___box__%precondition $Snap.unit result@11@00)))
  :pattern ((bool___unbox__%limited s@$ box@10@00))
  :qid |quant-u-4394|)))
; ---------- FUNCTION __prim__int___box__----------
(declare-fun prim@12@00 () Int)
(declare-fun result@13@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@71@00 $Snap)
(assert (= $t@71@00 ($Snap.combine ($Snap.first $t@71@00) ($Snap.second $t@71@00))))
(assert (= ($Snap.first $t@71@00) $Snap.unit))
; [eval] typeof(result) == int()
; [eval] typeof(result)
; [eval] int()
(assert (= (typeof<PyType> result@13@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second $t@71@00) $Snap.unit))
; [eval] int___unbox__(result) == prim
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@13@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@13@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@13@00)))
(assert (= (int___unbox__ $Snap.unit result@13@00) prim@12@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@12@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@12@00)
    (__prim__int___box__ s@$ prim@12@00))
  :pattern ((__prim__int___box__ s@$ prim@12@00))
  :qid |quant-u-4340|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Int)) (!
  (__prim__int___box__%stateless prim@12@00)
  :pattern ((__prim__int___box__%limited s@$ prim@12@00))
  :qid |quant-u-4341|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Int)) (!
  (let ((result@13@00 (__prim__int___box__%limited s@$ prim@12@00))) (=>
    (__prim__int___box__%precondition s@$ prim@12@00)
    (and
      (= (typeof<PyType> result@13@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@13@00) prim@12@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@12@00))
  :qid |quant-u-4395|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Int)) (!
  (let ((result@13@00 (__prim__int___box__%limited s@$ prim@12@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@12@00))
  :qid |quant-u-4396|)))
(assert (forall ((s@$ $Snap) (prim@12@00 Int)) (!
  (let ((result@13@00 (__prim__int___box__%limited s@$ prim@12@00))) (=>
    (__prim__int___box__%precondition s@$ prim@12@00)
    (int___unbox__%precondition $Snap.unit result@13@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@12@00))
  :qid |quant-u-4397|)))
; ---------- FUNCTION list___len__----------
(declare-fun self@14@00 () $Ref)
(declare-fun result@15@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@14@00) (list<PyType> (list_arg<PyType> (typeof<PyType> self@14@00) 0))))
(declare-const $k@72@00 $Perm)
(assert ($Perm.isReadVar $k@72@00))
(assert (<= $Perm.No $k@72@00))
(assert (=> (< $Perm.No $k@72@00) (not (= self@14@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (= (list___len__%limited s@$ self@14@00) (list___len__ s@$ self@14@00))
  :pattern ((list___len__ s@$ self@14@00))
  :qid |quant-u-4342|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (list___len__%stateless self@14@00)
  :pattern ((list___len__%limited s@$ self@14@00))
  :qid |quant-u-4343|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@72@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> self@14@00) (list<PyType> (list_arg<PyType> (typeof<PyType> self@14@00) 0))))
(assert (<= $Perm.No $k@72@00))
(assert (=> (< $Perm.No $k@72@00) (not (= self@14@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |self.list_acc|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@72@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= result@15@00 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@72@00)
    (=>
      (list___len__%precondition s@$ self@14@00)
      (=
        (list___len__ s@$ self@14@00)
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$))))))
  :pattern ((list___len__ s@$ self@14@00))
  :qid |quant-u-4398|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref)) (!
  true
  :pattern ((list___len__ s@$ self@14@00))
  :qid |quant-u-4399|)))
; ---------- FUNCTION _isDefined----------
(declare-fun id@16@00 () Int)
(declare-fun result@17@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (id@16@00 Int)) (!
  (= (_isDefined%limited s@$ id@16@00) (_isDefined s@$ id@16@00))
  :pattern ((_isDefined s@$ id@16@00))
  :qid |quant-u-4344|)))
(assert (forall ((s@$ $Snap) (id@16@00 Int)) (!
  (_isDefined%stateless id@16@00)
  :pattern ((_isDefined%limited s@$ id@16@00))
  :qid |quant-u-4345|)))
; ---------- FUNCTION py_range___len__----------
(declare-fun self@18@00 () $Ref)
(declare-fun result@19@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(assert (issubtype<Bool> (typeof<PyType> self@18@00) (as py_range<PyType>  PyType)))
(declare-const $t@73@00 $Snap)
(assert (= $t@73@00 $Snap.unit))
; [eval] result == |py_range___val__(self)|
; [eval] |py_range___val__(self)|
; [eval] py_range___val__(self)
(push) ; 2
(assert (py_range___val__%precondition $Snap.unit self@18@00))
(pop) ; 2
; Joined path conditions
(assert (py_range___val__%precondition $Snap.unit self@18@00))
(assert (= result@19@00 (Seq_length (py_range___val__ $Snap.unit self@18@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (= (py_range___len__%limited s@$ self@18@00) (py_range___len__ s@$ self@18@00))
  :pattern ((py_range___len__ s@$ self@18@00))
  :qid |quant-u-4346|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (py_range___len__%stateless self@18@00)
  :pattern ((py_range___len__%limited s@$ self@18@00))
  :qid |quant-u-4347|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (let ((result@19@00 (py_range___len__%limited s@$ self@18@00))) (=>
    (py_range___len__%precondition s@$ self@18@00)
    (= result@19@00 (Seq_length (py_range___val__ $Snap.unit self@18@00)))))
  :pattern ((py_range___len__%limited s@$ self@18@00))
  :qid |quant-u-4400|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref)) (!
  (let ((result@19@00 (py_range___len__%limited s@$ self@18@00))) (=>
    (py_range___len__%precondition s@$ self@18@00)
    (py_range___val__%precondition $Snap.unit self@18@00)))
  :pattern ((py_range___len__%limited s@$ self@18@00))
  :qid |quant-u-4401|)))
; ---------- FUNCTION dict___values__----------
(declare-fun self@20@00 () $Ref)
(declare-fun result@21@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(declare-const $k@74@00 $Perm)
(assert ($Perm.isReadVar $k@74@00))
(assert (<= $Perm.No $k@74@00))
(assert (=> (< $Perm.No $k@74@00) (not (= self@20@00 $Ref.null))))
(declare-const $k@75@00 $Perm)
(assert ($Perm.isReadVar $k@75@00))
(assert (<= $Perm.No $k@75@00))
(assert (=> (< $Perm.No $k@75@00) (not (= self@20@00 $Ref.null))))
(declare-const $t@76@00 $Snap)
(assert (= $t@76@00 $Snap.unit))
; [eval] |result| == |self.dict_acc|
; [eval] |result|
; [eval] |self.dict_acc|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@74@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length result@21@00)
  (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (= (dict___values__%limited s@$ self@20@00) (dict___values__ s@$ self@20@00))
  :pattern ((dict___values__ s@$ self@20@00))
  :qid |quant-u-4348|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (dict___values__%stateless self@20@00)
  :pattern ((dict___values__%limited s@$ self@20@00))
  :qid |quant-u-4349|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (let ((result@21@00 (dict___values__%limited s@$ self@20@00))) (and
    ($Perm.isReadVar $k@74@00)
    ($Perm.isReadVar $k@75@00)
    (=>
      (dict___values__%precondition s@$ self@20@00)
      (=
        (Seq_length result@21@00)
        (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))))
  :pattern ((dict___values__%limited s@$ self@20@00))
  :qid |quant-u-4402|)))
(assert (forall ((s@$ $Snap) (self@20@00 $Ref)) (!
  (let ((result@21@00 (dict___values__%limited s@$ self@20@00))) true)
  :pattern ((dict___values__%limited s@$ self@20@00))
  :qid |quant-u-4403|)))
; ---------- FUNCTION dict___contains__----------
(declare-fun self@22@00 () $Ref)
(declare-fun item@23@00 () $Ref)
(declare-fun result@24@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@22@00) (dict<PyType> (dict_arg<PyType> (typeof<PyType> self@22@00) 0) (dict_arg<PyType> (typeof<PyType> self@22@00) 1))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const $k@77@00 $Perm)
(assert ($Perm.isReadVar $k@77@00))
(assert (<= $Perm.No $k@77@00))
(assert (=> (< $Perm.No $k@77@00) (not (= self@22@00 $Ref.null))))
(declare-const $k@78@00 $Perm)
(assert ($Perm.isReadVar $k@78@00))
(assert (<= $Perm.No $k@78@00))
(assert (=> (< $Perm.No $k@78@00) (not (= self@22@00 $Ref.null))))
(declare-const $t@79@00 $Snap)
(assert (= $t@79@00 $Snap.unit))
; [eval] result == (item in self.dict_acc)
; [eval] (item in self.dict_acc)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@77@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  result@24@00
  (Set_in item@23@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (item@23@00 $Ref)) (!
  (=
    (dict___contains__%limited s@$ self@22@00 item@23@00)
    (dict___contains__ s@$ self@22@00 item@23@00))
  :pattern ((dict___contains__ s@$ self@22@00 item@23@00))
  :qid |quant-u-4350|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (item@23@00 $Ref)) (!
  (dict___contains__%stateless self@22@00 item@23@00)
  :pattern ((dict___contains__%limited s@$ self@22@00 item@23@00))
  :qid |quant-u-4351|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (item@23@00 $Ref)) (!
  (let ((result@24@00 (dict___contains__%limited s@$ self@22@00 item@23@00))) (and
    ($Perm.isReadVar $k@77@00)
    ($Perm.isReadVar $k@78@00)
    (=>
      (dict___contains__%precondition s@$ self@22@00 item@23@00)
      (=
        result@24@00
        (Set_in item@23@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))))))))
  :pattern ((dict___contains__%limited s@$ self@22@00 item@23@00))
  :qid |quant-u-4404|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (item@23@00 $Ref)) (!
  (let ((result@24@00 (dict___contains__%limited s@$ self@22@00 item@23@00))) true)
  :pattern ((dict___contains__%limited s@$ self@22@00 item@23@00))
  :qid |quant-u-4405|)))
; ---------- FUNCTION py_range___stop__----------
(declare-fun self@25@00 () $Ref)
(declare-fun result@26@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (=
    (py_range___stop__%limited s@$ self@25@00)
    (py_range___stop__ s@$ self@25@00))
  :pattern ((py_range___stop__ s@$ self@25@00))
  :qid |quant-u-4352|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (py_range___stop__%stateless self@25@00)
  :pattern ((py_range___stop__%limited s@$ self@25@00))
  :qid |quant-u-4353|)))
; ---------- FUNCTION py_range___start__----------
(declare-fun self@27@00 () $Ref)
(declare-fun result@28@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@27@00 $Ref)) (!
  (=
    (py_range___start__%limited s@$ self@27@00)
    (py_range___start__ s@$ self@27@00))
  :pattern ((py_range___start__ s@$ self@27@00))
  :qid |quant-u-4354|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref)) (!
  (py_range___start__%stateless self@27@00)
  :pattern ((py_range___start__%limited s@$ self@27@00))
  :qid |quant-u-4355|)))
; ---------- FUNCTION Level----------
(declare-fun r@29@00 () $Ref)
(declare-fun result@30@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@29@00 $Ref)) (!
  (= (Level%limited s@$ r@29@00) (Level s@$ r@29@00))
  :pattern ((Level s@$ r@29@00))
  :qid |quant-u-4356|)))
(assert (forall ((s@$ $Snap) (r@29@00 $Ref)) (!
  (Level%stateless r@29@00)
  :pattern ((Level%limited s@$ r@29@00))
  :qid |quant-u-4357|)))
; ---------- FUNCTION str___create__----------
(declare-fun len@31@00 () Int)
(declare-fun value@32@00 () Int)
(declare-fun result@33@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@80@00 $Snap)
(assert (= $t@80@00 ($Snap.combine ($Snap.first $t@80@00) ($Snap.second $t@80@00))))
(assert (= ($Snap.first $t@80@00) $Snap.unit))
; [eval] str___len__(result) == len
; [eval] str___len__(result)
(push) ; 2
(assert (str___len__%precondition $Snap.unit result@33@00))
(pop) ; 2
; Joined path conditions
(assert (str___len__%precondition $Snap.unit result@33@00))
(assert (= (str___len__ $Snap.unit result@33@00) len@31@00))
(assert (=
  ($Snap.second $t@80@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@80@00))
    ($Snap.second ($Snap.second $t@80@00)))))
(assert (= ($Snap.first ($Snap.second $t@80@00)) $Snap.unit))
; [eval] str___val__(result) == value
; [eval] str___val__(result)
(push) ; 2
(assert (str___val__%precondition $Snap.unit result@33@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit result@33@00))
(assert (= (str___val__ $Snap.unit result@33@00) value@32@00))
(assert (= ($Snap.second ($Snap.second $t@80@00)) $Snap.unit))
; [eval] typeof(result) == str()
; [eval] typeof(result)
; [eval] str()
(assert (= (typeof<PyType> result@33@00) (as str<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (=
    (str___create__%limited s@$ len@31@00 value@32@00)
    (str___create__ s@$ len@31@00 value@32@00))
  :pattern ((str___create__ s@$ len@31@00 value@32@00))
  :qid |quant-u-4358|)))
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (str___create__%stateless len@31@00 value@32@00)
  :pattern ((str___create__%limited s@$ len@31@00 value@32@00))
  :qid |quant-u-4359|)))
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (let ((result@33@00 (str___create__%limited s@$ len@31@00 value@32@00))) (=>
    (str___create__%precondition s@$ len@31@00 value@32@00)
    (and
      (= (str___len__ $Snap.unit result@33@00) len@31@00)
      (= (str___val__ $Snap.unit result@33@00) value@32@00)
      (= (typeof<PyType> result@33@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@31@00 value@32@00))
  :qid |quant-u-4406|)))
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (let ((result@33@00 (str___create__%limited s@$ len@31@00 value@32@00))) (=>
    (str___create__%precondition s@$ len@31@00 value@32@00)
    (str___len__%precondition $Snap.unit result@33@00)))
  :pattern ((str___create__%limited s@$ len@31@00 value@32@00))
  :qid |quant-u-4407|)))
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (let ((result@33@00 (str___create__%limited s@$ len@31@00 value@32@00))) (=>
    (str___create__%precondition s@$ len@31@00 value@32@00)
    (str___val__%precondition $Snap.unit result@33@00)))
  :pattern ((str___create__%limited s@$ len@31@00 value@32@00))
  :qid |quant-u-4408|)))
(assert (forall ((s@$ $Snap) (len@31@00 Int) (value@32@00 Int)) (!
  (let ((result@33@00 (str___create__%limited s@$ len@31@00 value@32@00))) true)
  :pattern ((str___create__%limited s@$ len@31@00 value@32@00))
  :qid |quant-u-4409|)))
; ---------- FUNCTION list___getitem__----------
(declare-fun self@34@00 () $Ref)
(declare-fun key@35@00 () $Ref)
(declare-fun result@36@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@34@00) (list<PyType> (list_arg<PyType> (typeof<PyType> self@34@00) 0))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> key@35@00) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(declare-const $k@81@00 $Perm)
(assert ($Perm.isReadVar $k@81@00))
(assert (<= $Perm.No $k@81@00))
(assert (=> (< $Perm.No $k@81@00) (not (= self@34@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@82@00 $Perm)
(assert ($Perm.isReadVar $k@82@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@82@00) (< $Perm.No $k@81@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@82@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@82@00))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))
(declare-fun letvar@83@00 ($Snap $Ref $Ref) Int)
(assert (=
  (letvar@83@00 s@$ self@34@00 key@35@00)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit key@35@00))
(pop) ; 2
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit key@35@00))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit key@35@00) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< (int___unbox__ $Snap.unit key@35@00) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | int___unbox__(_, key@35@00) < 0 | live]
; [else-branch: 3 | !(int___unbox__(_, key@35@00) < 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | int___unbox__(_, key@35@00) < 0]
(assert (< (int___unbox__ $Snap.unit key@35@00) 0))
; [eval] int___unbox__(key) >= -ln
; [eval] int___unbox__(key)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
; [eval] -ln
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(int___unbox__(_, key@35@00) < 0)]
(assert (not (< (int___unbox__ $Snap.unit key@35@00) 0)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (int___unbox__ $Snap.unit key@35@00) 0))
  (< (int___unbox__ $Snap.unit key@35@00) 0)))
(push) ; 2
; [then-branch: 4 | !(int___unbox__(_, key@35@00) < 0 ==> int___unbox__(_, key@35@00) >= 0 - list___len__((_, First:(Second:(Second:(s@$)))), self@34@00)) | live]
; [else-branch: 4 | int___unbox__(_, key@35@00) < 0 ==> int___unbox__(_, key@35@00) >= 0 - list___len__((_, First:(Second:(Second:(s@$)))), self@34@00) | live]
(push) ; 3
; [then-branch: 4 | !(int___unbox__(_, key@35@00) < 0 ==> int___unbox__(_, key@35@00) >= 0 - list___len__((_, First:(Second:(Second:(s@$)))), self@34@00))]
(assert (not
  (=>
    (< (int___unbox__ $Snap.unit key@35@00) 0)
    (>=
      (int___unbox__ $Snap.unit key@35@00)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))))))
(pop) ; 3
(push) ; 3
; [else-branch: 4 | int___unbox__(_, key@35@00) < 0 ==> int___unbox__(_, key@35@00) >= 0 - list___len__((_, First:(Second:(Second:(s@$)))), self@34@00)]
(assert (=>
  (< (int___unbox__ $Snap.unit key@35@00) 0)
  (>=
    (int___unbox__ $Snap.unit key@35@00)
    (-
      0
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)))))
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit key@35@00) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit key@35@00) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | int___unbox__(_, key@35@00) >= 0 | live]
; [else-branch: 5 | !(int___unbox__(_, key@35@00) >= 0) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | int___unbox__(_, key@35@00) >= 0]
(assert (>= (int___unbox__ $Snap.unit key@35@00) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(int___unbox__(_, key@35@00) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit key@35@00) 0)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (>= (int___unbox__ $Snap.unit key@35@00) 0))
  (>= (int___unbox__ $Snap.unit key@35@00) 0)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (< (int___unbox__ $Snap.unit key@35@00) 0)
    (>=
      (int___unbox__ $Snap.unit key@35@00)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))))
  (and
    (=>
      (< (int___unbox__ $Snap.unit key@35@00) 0)
      (>=
        (int___unbox__ $Snap.unit key@35@00)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))))
    (or
      (not (>= (int___unbox__ $Snap.unit key@35@00) 0))
      (>= (int___unbox__ $Snap.unit key@35@00) 0)))))
(assert (or
  (=>
    (< (int___unbox__ $Snap.unit key@35@00) 0)
    (>=
      (int___unbox__ $Snap.unit key@35@00)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))))
  (not
    (=>
      (< (int___unbox__ $Snap.unit key@35@00) 0)
      (>=
        (int___unbox__ $Snap.unit key@35@00)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)))))))
(assert (and
  (=>
    (< (int___unbox__ $Snap.unit key@35@00) 0)
    (>=
      (int___unbox__ $Snap.unit key@35@00)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00))))
  (=>
    (>= (int___unbox__ $Snap.unit key@35@00) 0)
    (<
      (int___unbox__ $Snap.unit key@35@00)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)))))
(declare-const $t@84@00 $Snap)
(assert (= $t@84@00 ($Snap.combine ($Snap.first $t@84@00) ($Snap.second $t@84@00))))
(assert (= ($Snap.first $t@84@00) $Snap.unit))
; [eval] result == (int___unbox__(key) >= 0 ? self.list_acc[int___unbox__(key)] : self.list_acc[list___len__(self) + int___unbox__(key)])
; [eval] (int___unbox__(key) >= 0 ? self.list_acc[int___unbox__(key)] : self.list_acc[list___len__(self) + int___unbox__(key)])
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 2
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit key@35@00) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit key@35@00) 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | int___unbox__(_, key@35@00) >= 0 | live]
; [else-branch: 6 | !(int___unbox__(_, key@35@00) >= 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | int___unbox__(_, key@35@00) >= 0]
(assert (>= (int___unbox__ $Snap.unit key@35@00) 0))
; [eval] self.list_acc[int___unbox__(key)]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@81@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (<
  (int___unbox__ $Snap.unit key@35@00)
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(push) ; 3
; [else-branch: 6 | !(int___unbox__(_, key@35@00) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit key@35@00) 0)))
; [eval] self.list_acc[list___len__(self) + int___unbox__(key)]
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@81@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] list___len__(self) + int___unbox__(key)
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@85@00 $Perm)
(assert ($Perm.isReadVar $k@85@00))
(push) ; 5
(assert (not (=> (< $Perm.No $k@85@00) (< $Perm.No $k@81@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@85@00)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@85@00))
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (>=
  (+
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)
    (int___unbox__ $Snap.unit key@35@00))
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  (+
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)
    (int___unbox__ $Snap.unit key@35@00))
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@85@00))
(assert (or
  (not (>= (int___unbox__ $Snap.unit key@35@00) 0))
  (>= (int___unbox__ $Snap.unit key@35@00) 0)))
(assert (=
  result@36@00
  (ite
    (>= (int___unbox__ $Snap.unit key@35@00) 0)
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
      (int___unbox__ $Snap.unit key@35@00))
    (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
      (+
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)
        (int___unbox__ $Snap.unit key@35@00))))))
(assert (= ($Snap.second $t@84@00) $Snap.unit))
; [eval] issubtype(typeof(result), list_arg(typeof(self), 0))
; [eval] typeof(result)
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> result@36@00) (list_arg<PyType> (typeof<PyType> self@34@00) 0)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (key@35@00 $Ref)) (!
  (=
    (list___getitem__%limited s@$ self@34@00 key@35@00)
    (list___getitem__ s@$ self@34@00 key@35@00))
  :pattern ((list___getitem__ s@$ self@34@00 key@35@00))
  :qid |quant-u-4360|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (key@35@00 $Ref)) (!
  (list___getitem__%stateless self@34@00 key@35@00)
  :pattern ((list___getitem__%limited s@$ self@34@00 key@35@00))
  :qid |quant-u-4361|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (key@35@00 $Ref)) (!
  (let ((result@36@00 (list___getitem__%limited s@$ self@34@00 key@35@00))) (and
    ($Perm.isReadVar $k@81@00)
    ($Perm.isReadVar $k@82@00)
    ($Perm.isReadVar $k@85@00)
    (=>
      (list___getitem__%precondition s@$ self@34@00 key@35@00)
      (and
        (=
          result@36@00
          (ite
            (>= (int___unbox__ $Snap.unit key@35@00) 0)
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (int___unbox__ $Snap.unit key@35@00))
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (+
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)
                (int___unbox__ $Snap.unit key@35@00)))))
        (issubtype<Bool> (typeof<PyType> result@36@00) (list_arg<PyType> (typeof<PyType> self@34@00) 0))))))
  :pattern ((list___getitem__%limited s@$ self@34@00 key@35@00))
  :qid |quant-u-4410|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (key@35@00 $Ref)) (!
  (let ((result@36@00 (list___getitem__%limited s@$ self@34@00 key@35@00))) (=>
    (list___getitem__%precondition s@$ self@34@00 key@35@00)
    (and
      (int___unbox__%precondition $Snap.unit key@35@00)
      (ite
        (>= (int___unbox__ $Snap.unit key@35@00) 0)
        (int___unbox__%precondition $Snap.unit key@35@00)
        (and
          (list___len__%precondition ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@34@00)
          (int___unbox__%precondition $Snap.unit key@35@00))))))
  :pattern ((list___getitem__%limited s@$ self@34@00 key@35@00))
  :qid |quant-u-4411|)))
(assert (forall ((s@$ $Snap) (self@34@00 $Ref) (key@35@00 $Ref)) (!
  (let ((result@36@00 (list___getitem__%limited s@$ self@34@00 key@35@00))) true)
  :pattern ((list___getitem__%limited s@$ self@34@00 key@35@00))
  :qid |quant-u-4412|)))
; ---------- FUNCTION int___lt__----------
(declare-fun self@37@00 () Int)
(declare-fun other@38@00 () Int)
(declare-fun result@39@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@37@00 Int) (other@38@00 Int)) (!
  (=
    (int___lt__%limited s@$ self@37@00 other@38@00)
    (int___lt__ s@$ self@37@00 other@38@00))
  :pattern ((int___lt__ s@$ self@37@00 other@38@00))
  :qid |quant-u-4362|)))
(assert (forall ((s@$ $Snap) (self@37@00 Int) (other@38@00 Int)) (!
  (int___lt__%stateless self@37@00 other@38@00)
  :pattern ((int___lt__%limited s@$ self@37@00 other@38@00))
  :qid |quant-u-4363|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self < other
(assert (= result@39@00 (< self@37@00 other@38@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@37@00 Int) (other@38@00 Int)) (!
  (=>
    (int___lt__%precondition s@$ self@37@00 other@38@00)
    (= (int___lt__ s@$ self@37@00 other@38@00) (< self@37@00 other@38@00)))
  :pattern ((int___lt__ s@$ self@37@00 other@38@00))
  :qid |quant-u-4413|)))
(assert (forall ((s@$ $Snap) (self@37@00 Int) (other@38@00 Int)) (!
  true
  :pattern ((int___lt__ s@$ self@37@00 other@38@00))
  :qid |quant-u-4414|)))
; ---------- FUNCTION __file__----------
(declare-fun result@40@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4364|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4365|)))
; ---------- FUNCTION _checkDefined----------
(declare-fun val@41@00 () $Ref)
(declare-fun id@42@00 () Int)
(declare-fun result@43@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] _isDefined(id)
(push) ; 2
(assert (_isDefined%precondition $Snap.unit id@42@00))
(pop) ; 2
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit id@42@00))
(assert (_isDefined $Snap.unit id@42@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@41@00 id@42@00)
    (_checkDefined s@$ val@41@00 id@42@00))
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-4366|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (_checkDefined%stateless val@41@00 id@42@00)
  :pattern ((_checkDefined%limited s@$ val@41@00 id@42@00))
  :qid |quant-u-4367|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (_isDefined%precondition $Snap.unit id@42@00))
(assert (_isDefined $Snap.unit id@42@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@43@00 val@41@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@41@00 id@42@00)
    (= (_checkDefined s@$ val@41@00 id@42@00) val@41@00))
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-4415|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-4416|)))
; ---------- FUNCTION py_range___sil_seq__----------
(declare-fun self@44@00 () $Ref)
(declare-fun result@45@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(assert (issubtype<Bool> (typeof<PyType> self@44@00) (as py_range<PyType>  PyType)))
(declare-const $t@86@00 $Snap)
(assert (= $t@86@00 ($Snap.combine ($Snap.first $t@86@00) ($Snap.second $t@86@00))))
(assert (= ($Snap.first $t@86@00) $Snap.unit))
; [eval] |result| == py_range___len__(self)
; [eval] |result|
; [eval] py_range___len__(self)
(push) ; 2
; [eval] issubtype(typeof(self), py_range())
; [eval] typeof(self)
; [eval] py_range()
(assert (py_range___len__%precondition $Snap.unit self@44@00))
(pop) ; 2
; Joined path conditions
(assert (py_range___len__%precondition $Snap.unit self@44@00))
(assert (= (Seq_length result@45@00) (py_range___len__ $Snap.unit self@44@00)))
(assert (=
  ($Snap.second $t@86@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@86@00))
    ($Snap.second ($Snap.second $t@86@00)))))
(assert (= ($Snap.first ($Snap.second $t@86@00)) $Snap.unit))
; [eval] (forall i: Int :: { result[i] } i >= 0 && i < |py_range___val__(self)| ==> result[i] == __prim__int___box__(py_range___val__(self)[i]))
(declare-const i@87@00 Int)
(push) ; 2
; [eval] i >= 0 && i < |py_range___val__(self)| ==> result[i] == __prim__int___box__(py_range___val__(self)[i])
; [eval] i >= 0 && i < |py_range___val__(self)|
; [eval] i >= 0
(push) ; 3
; [then-branch: 7 | !(i@87@00 >= 0) | live]
; [else-branch: 7 | i@87@00 >= 0 | live]
(push) ; 4
; [then-branch: 7 | !(i@87@00 >= 0)]
(assert (not (>= i@87@00 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 7 | i@87@00 >= 0]
(assert (>= i@87@00 0))
; [eval] i < |py_range___val__(self)|
; [eval] |py_range___val__(self)|
; [eval] py_range___val__(self)
(push) ; 5
(assert (py_range___val__%precondition $Snap.unit self@44@00))
(pop) ; 5
; Joined path conditions
(assert (py_range___val__%precondition $Snap.unit self@44@00))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@87@00 0)
  (and (>= i@87@00 0) (py_range___val__%precondition $Snap.unit self@44@00))))
(assert (or (>= i@87@00 0) (not (>= i@87@00 0))))
(push) ; 3
; [then-branch: 8 | i@87@00 >= 0 && i@87@00 < |py_range___val__(_, self@44@00)| | live]
; [else-branch: 8 | !(i@87@00 >= 0 && i@87@00 < |py_range___val__(_, self@44@00)|) | live]
(push) ; 4
; [then-branch: 8 | i@87@00 >= 0 && i@87@00 < |py_range___val__(_, self@44@00)|]
(assert (and
  (>= i@87@00 0)
  (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00)))))
; [eval] result[i] == __prim__int___box__(py_range___val__(self)[i])
; [eval] result[i]
(push) ; 5
(assert (not (< i@87@00 (Seq_length result@45@00))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] __prim__int___box__(py_range___val__(self)[i])
; [eval] py_range___val__(self)[i]
; [eval] py_range___val__(self)
(push) ; 5
(assert (py_range___val__%precondition $Snap.unit self@44@00))
(pop) ; 5
; Joined path conditions
(assert (py_range___val__%precondition $Snap.unit self@44@00))
(push) ; 5
(assert (__prim__int___box__%precondition $Snap.unit (Seq_index
  (py_range___val__ $Snap.unit self@44@00)
  i@87@00)))
(pop) ; 5
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (Seq_index
  (py_range___val__ $Snap.unit self@44@00)
  i@87@00)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(i@87@00 >= 0 && i@87@00 < |py_range___val__(_, self@44@00)|)]
(assert (not
  (and
    (>= i@87@00 0)
    (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= i@87@00 0)
    (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))
  (and
    (>= i@87@00 0)
    (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00)))
    (py_range___val__%precondition $Snap.unit self@44@00)
    (__prim__int___box__%precondition $Snap.unit (Seq_index
      (py_range___val__ $Snap.unit self@44@00)
      i@87@00)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@87@00 0)
      (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00)))))
  (and
    (>= i@87@00 0)
    (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@87@00 Int)) (!
  (and
    (=>
      (>= i@87@00 0)
      (and (>= i@87@00 0) (py_range___val__%precondition $Snap.unit self@44@00)))
    (or (>= i@87@00 0) (not (>= i@87@00 0)))
    (=>
      (and
        (>= i@87@00 0)
        (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))
      (and
        (>= i@87@00 0)
        (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00)))
        (py_range___val__%precondition $Snap.unit self@44@00)
        (__prim__int___box__%precondition $Snap.unit (Seq_index
          (py_range___val__ $Snap.unit self@44@00)
          i@87@00))))
    (or
      (not
        (and
          (>= i@87@00 0)
          (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00)))))
      (and
        (>= i@87@00 0)
        (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))))
  :pattern ((Seq_index result@45@00 i@87@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@536@12@536@145-aux|)))
(assert (forall ((i@87@00 Int)) (!
  (=>
    (and
      (>= i@87@00 0)
      (< i@87@00 (Seq_length (py_range___val__ $Snap.unit self@44@00))))
    (=
      (Seq_index result@45@00 i@87@00)
      (__prim__int___box__ $Snap.unit (Seq_index
        (py_range___val__ $Snap.unit self@44@00)
        i@87@00))))
  :pattern ((Seq_index result@45@00 i@87@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@536@12@536@145|)))
(assert (= ($Snap.second ($Snap.second $t@86@00)) $Snap.unit))
; [eval] (forall i: Ref :: { (i in result) } (i in result) == (typeof(i) == int() && (int___unbox__(i) in py_range___val__(self))))
(declare-const i@88@00 $Ref)
(push) ; 2
; [eval] (i in result) == (typeof(i) == int() && (int___unbox__(i) in py_range___val__(self)))
; [eval] (i in result)
; [eval] typeof(i) == int() && (int___unbox__(i) in py_range___val__(self))
; [eval] typeof(i) == int()
; [eval] typeof(i)
; [eval] int()
(push) ; 3
; [then-branch: 9 | typeof[PyType](i@88@00) != int[PyType] | live]
; [else-branch: 9 | typeof[PyType](i@88@00) == int[PyType] | live]
(push) ; 4
; [then-branch: 9 | typeof[PyType](i@88@00) != int[PyType]]
(assert (not (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | typeof[PyType](i@88@00) == int[PyType]]
(assert (= (typeof<PyType> i@88@00) (as int<PyType>  PyType)))
; [eval] (int___unbox__(i) in py_range___val__(self))
; [eval] py_range___val__(self)
(push) ; 5
(assert (py_range___val__%precondition $Snap.unit self@44@00))
(pop) ; 5
; Joined path conditions
(assert (py_range___val__%precondition $Snap.unit self@44@00))
; [eval] int___unbox__(i)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit i@88@00))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit i@88@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
  (and
    (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
    (py_range___val__%precondition $Snap.unit self@44@00)
    (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit i@88@00))))
(assert (or
  (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
  (not (= (typeof<PyType> i@88@00) (as int<PyType>  PyType)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@88@00 $Ref)) (!
  (and
    (=>
      (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
      (and
        (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
        (py_range___val__%precondition $Snap.unit self@44@00)
        (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit i@88@00)))
    (or
      (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
      (not (= (typeof<PyType> i@88@00) (as int<PyType>  PyType)))))
  :pattern ((Seq_contains result@45@00 i@88@00))
  :pattern ((Seq_contains_trigger result@45@00 i@88@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@537@12@537@132-aux|)))
(assert (forall ((i@88@00 $Ref)) (!
  (and
    (=>
      (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
      (and
        (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
        (py_range___val__%precondition $Snap.unit self@44@00)
        (issubtype<Bool> (typeof<PyType> i@88@00) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit i@88@00)))
    (or
      (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
      (not (= (typeof<PyType> i@88@00) (as int<PyType>  PyType)))))
  :pattern ((Seq_contains_trigger result@45@00 i@88@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@537@12@537@132-aux|)))
(assert (forall ((i@88@00 $Ref)) (!
  (=
    (Seq_contains result@45@00 i@88@00)
    (and
      (= (typeof<PyType> i@88@00) (as int<PyType>  PyType))
      (Seq_contains
        (py_range___val__ $Snap.unit self@44@00)
        (int___unbox__ $Snap.unit i@88@00))))
  :pattern ((Seq_contains result@45@00 i@88@00))
  :pattern ((Seq_contains_trigger result@45@00 i@88@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@537@12@537@132|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (=
    (py_range___sil_seq__%limited s@$ self@44@00)
    (py_range___sil_seq__ s@$ self@44@00))
  :pattern ((py_range___sil_seq__ s@$ self@44@00))
  :qid |quant-u-4368|)))
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (py_range___sil_seq__%stateless self@44@00)
  :pattern ((py_range___sil_seq__%limited s@$ self@44@00))
  :qid |quant-u-4369|)))
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (let ((result@45@00 (py_range___sil_seq__%limited s@$ self@44@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@44@00)
    (and
      (= (Seq_length result@45@00) (py_range___len__ $Snap.unit self@44@00))
      (forall ((i Int)) (!
        (=>
          (and
            (>= i 0)
            (< i (Seq_length (py_range___val__ $Snap.unit self@44@00))))
          (=
            (Seq_index result@45@00 i)
            (__prim__int___box__ $Snap.unit (Seq_index
              (py_range___val__ $Snap.unit self@44@00)
              i))))
        :pattern ((Seq_index result@45@00 i))
        ))
      (forall ((i $Ref)) (!
        (=
          (Seq_contains result@45@00 i)
          (and
            (= (typeof<PyType> i) (as int<PyType>  PyType))
            (Seq_contains
              (py_range___val__ $Snap.unit self@44@00)
              (int___unbox__ $Snap.unit i))))
        :pattern ((Seq_contains result@45@00 i))
        :pattern ((Seq_contains_trigger result@45@00 i))
        :pattern ((Seq_contains_trigger result@45@00 i))
        )))))
  :pattern ((py_range___sil_seq__%limited s@$ self@44@00))
  :qid |quant-u-4417|)))
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (let ((result@45@00 (py_range___sil_seq__%limited s@$ self@44@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@44@00)
    (py_range___len__%precondition $Snap.unit self@44@00)))
  :pattern ((py_range___sil_seq__%limited s@$ self@44@00))
  :qid |quant-u-4418|)))
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (let ((result@45@00 (py_range___sil_seq__%limited s@$ self@44@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@44@00)
    (forall ((i Int)) (!
      (and
        (=> (>= i 0) (py_range___val__%precondition $Snap.unit self@44@00))
        (=>
          (and
            (>= i 0)
            (< i (Seq_length (py_range___val__ $Snap.unit self@44@00))))
          (and
            (py_range___val__%precondition $Snap.unit self@44@00)
            (__prim__int___box__%precondition $Snap.unit (Seq_index
              (py_range___val__ $Snap.unit self@44@00)
              i)))))
      :pattern ((Seq_index result@45@00 i))
      ))))
  :pattern ((py_range___sil_seq__%limited s@$ self@44@00))
  :qid |quant-u-4419|)))
(assert (forall ((s@$ $Snap) (self@44@00 $Ref)) (!
  (let ((result@45@00 (py_range___sil_seq__%limited s@$ self@44@00))) (=>
    (py_range___sil_seq__%precondition s@$ self@44@00)
    (forall ((i $Ref)) (!
      (=>
        (= (typeof<PyType> i) (as int<PyType>  PyType))
        (and
          (py_range___val__%precondition $Snap.unit self@44@00)
          (int___unbox__%precondition $Snap.unit i)))
      :pattern ((Seq_contains result@45@00 i))
      :pattern ((Seq_contains_trigger result@45@00 i))
      :pattern ((Seq_contains_trigger result@45@00 i))
      :pattern ((Seq_contains_trigger result@45@00 i))
      ))))
  :pattern ((py_range___sil_seq__%limited s@$ self@44@00))
  :qid |quant-u-4420|)))
; ---------- FUNCTION Measure$check----------
(declare-fun map@46@00 () Seq<Measure$>)
(declare-fun key@47@00 () $Ref)
(declare-fun value@48@00 () Int)
(declare-fun result@49@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (map@46@00 Seq<Measure$>) (key@47@00 $Ref) (value@48@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@46@00 key@47@00 value@48@00)
    (Measure$check s@$ map@46@00 key@47@00 value@48@00))
  :pattern ((Measure$check s@$ map@46@00 key@47@00 value@48@00))
  :qid |quant-u-4370|)))
(assert (forall ((s@$ $Snap) (map@46@00 Seq<Measure$>) (key@47@00 $Ref) (value@48@00 Int)) (!
  (Measure$check%stateless map@46@00 key@47@00 value@48@00)
  :pattern ((Measure$check%limited s@$ map@46@00 key@47@00 value@48@00))
  :qid |quant-u-4371|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (forall m: Measure$ :: { (m in map) } (m in map) ==> Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value)
(declare-const m@89@00 Measure$)
(set-option :timeout 0)
(push) ; 2
; [eval] (m in map) ==> Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value
; [eval] (m in map)
(push) ; 3
; [then-branch: 10 | m@89@00 in map@46@00 | live]
; [else-branch: 10 | !(m@89@00 in map@46@00) | live]
(push) ; 4
; [then-branch: 10 | m@89@00 in map@46@00]
(assert (Seq_contains map@46@00 m@89@00))
; [eval] Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value
; [eval] Measure$guard(m) && Measure$key(m) == key
; [eval] Measure$guard(m)
(push) ; 5
; [then-branch: 11 | !(Measure$guard[Bool](m@89@00)) | live]
; [else-branch: 11 | Measure$guard[Bool](m@89@00) | live]
(push) ; 6
; [then-branch: 11 | !(Measure$guard[Bool](m@89@00))]
(assert (not (Measure$guard<Bool> m@89@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | Measure$guard[Bool](m@89@00)]
(assert (Measure$guard<Bool> m@89@00))
; [eval] Measure$key(m) == key
; [eval] Measure$key(m)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Measure$guard<Bool> m@89@00) (not (Measure$guard<Bool> m@89@00))))
(push) ; 5
; [then-branch: 12 | Measure$guard[Bool](m@89@00) && Measure$key[Ref](m@89@00) == key@47@00 | live]
; [else-branch: 12 | !(Measure$guard[Bool](m@89@00) && Measure$key[Ref](m@89@00) == key@47@00) | live]
(push) ; 6
; [then-branch: 12 | Measure$guard[Bool](m@89@00) && Measure$key[Ref](m@89@00) == key@47@00]
(assert (and (Measure$guard<Bool> m@89@00) (= (Measure$key<Ref> m@89@00) key@47@00)))
; [eval] Measure$value(m) > value
; [eval] Measure$value(m)
(pop) ; 6
(push) ; 6
; [else-branch: 12 | !(Measure$guard[Bool](m@89@00) && Measure$key[Ref](m@89@00) == key@47@00)]
(assert (not
  (and (Measure$guard<Bool> m@89@00) (= (Measure$key<Ref> m@89@00) key@47@00))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and (Measure$guard<Bool> m@89@00) (= (Measure$key<Ref> m@89@00) key@47@00)))
  (and (Measure$guard<Bool> m@89@00) (= (Measure$key<Ref> m@89@00) key@47@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 10 | !(m@89@00 in map@46@00)]
(assert (not (Seq_contains map@46@00 m@89@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (Seq_contains map@46@00 m@89@00)
  (and
    (Seq_contains map@46@00 m@89@00)
    (or (Measure$guard<Bool> m@89@00) (not (Measure$guard<Bool> m@89@00)))
    (or
      (not
        (and
          (Measure$guard<Bool> m@89@00)
          (= (Measure$key<Ref> m@89@00) key@47@00)))
      (and
        (Measure$guard<Bool> m@89@00)
        (= (Measure$key<Ref> m@89@00) key@47@00))))))
; Joined path conditions
(assert (or (not (Seq_contains map@46@00 m@89@00)) (Seq_contains map@46@00 m@89@00)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((m@89@00 Measure$)) (!
  (and
    (=>
      (Seq_contains map@46@00 m@89@00)
      (and
        (Seq_contains map@46@00 m@89@00)
        (or (Measure$guard<Bool> m@89@00) (not (Measure$guard<Bool> m@89@00)))
        (or
          (not
            (and
              (Measure$guard<Bool> m@89@00)
              (= (Measure$key<Ref> m@89@00) key@47@00)))
          (and
            (Measure$guard<Bool> m@89@00)
            (= (Measure$key<Ref> m@89@00) key@47@00)))))
    (or (not (Seq_contains map@46@00 m@89@00)) (Seq_contains map@46@00 m@89@00)))
  :pattern ((Seq_contains map@46@00 m@89@00))
  :pattern ((Seq_contains_trigger map@46@00 m@89@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@508@4@508@126-aux|)))
(assert (forall ((m@89@00 Measure$)) (!
  (and
    (=>
      (Seq_contains map@46@00 m@89@00)
      (and
        (Seq_contains map@46@00 m@89@00)
        (or (Measure$guard<Bool> m@89@00) (not (Measure$guard<Bool> m@89@00)))
        (or
          (not
            (and
              (Measure$guard<Bool> m@89@00)
              (= (Measure$key<Ref> m@89@00) key@47@00)))
          (and
            (Measure$guard<Bool> m@89@00)
            (= (Measure$key<Ref> m@89@00) key@47@00)))))
    (or (not (Seq_contains map@46@00 m@89@00)) (Seq_contains map@46@00 m@89@00)))
  :pattern ((Seq_contains_trigger map@46@00 m@89@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@508@4@508@126-aux|)))
(assert (=
  result@49@00
  (forall ((m@89@00 Measure$)) (!
    (=>
      (and
        (Seq_contains map@46@00 m@89@00)
        (and
          (Measure$guard<Bool> m@89@00)
          (= (Measure$key<Ref> m@89@00) key@47@00)))
      (> (Measure$value<Int> m@89@00) value@48@00))
    :pattern ((Seq_contains map@46@00 m@89@00))
    :pattern ((Seq_contains_trigger map@46@00 m@89@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationtest_forall.py.vpr@508@4@508@126|))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (map@46@00 Seq<Measure$>) (key@47@00 $Ref) (value@48@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@46@00 key@47@00 value@48@00)
    (=
      (Measure$check s@$ map@46@00 key@47@00 value@48@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@46@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@47@00)))
          (> (Measure$value<Int> m) value@48@00))
        :pattern ((Seq_contains map@46@00 m))
        :pattern ((Seq_contains_trigger map@46@00 m))
        :pattern ((Seq_contains_trigger map@46@00 m))
        ))))
  :pattern ((Measure$check s@$ map@46@00 key@47@00 value@48@00))
  :qid |quant-u-4421|)))
(assert (forall ((s@$ $Snap) (map@46@00 Seq<Measure$>) (key@47@00 $Ref) (value@48@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@46@00 key@47@00 value@48@00))
  :qid |quant-u-4422|)))
; ---------- FUNCTION str___eq__----------
(declare-fun self@50@00 () $Ref)
(declare-fun other@51@00 () $Ref)
(declare-fun result@52@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> self@50@00) (as str<PyType>  PyType)))
(declare-const $t@90@00 $Snap)
(assert (= $t@90@00 ($Snap.combine ($Snap.first $t@90@00) ($Snap.second $t@90@00))))
(assert (= ($Snap.first $t@90@00) $Snap.unit))
; [eval] (str___val__(self) == str___val__(other)) == result
; [eval] str___val__(self) == str___val__(other)
; [eval] str___val__(self)
(push) ; 2
(assert (str___val__%precondition $Snap.unit self@50@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit self@50@00))
; [eval] str___val__(other)
(push) ; 2
(assert (str___val__%precondition $Snap.unit other@51@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit other@51@00))
(assert (=
  (= (str___val__ $Snap.unit self@50@00) (str___val__ $Snap.unit other@51@00))
  result@52@00))
(assert (= ($Snap.second $t@90@00) $Snap.unit))
; [eval] result ==> str___len__(self) == str___len__(other)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not result@52@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not result@52@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | result@52@00 | live]
; [else-branch: 13 | !(result@52@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 13 | result@52@00]
(assert result@52@00)
; [eval] str___len__(self) == str___len__(other)
; [eval] str___len__(self)
(push) ; 4
(assert (str___len__%precondition $Snap.unit self@50@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit self@50@00))
; [eval] str___len__(other)
(push) ; 4
(assert (str___len__%precondition $Snap.unit other@51@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit other@51@00))
(pop) ; 3
(push) ; 3
; [else-branch: 13 | !(result@52@00)]
(assert (not result@52@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  result@52@00
  (and
    result@52@00
    (str___len__%precondition $Snap.unit self@50@00)
    (str___len__%precondition $Snap.unit other@51@00))))
; Joined path conditions
(assert (or (not result@52@00) result@52@00))
(assert (=>
  result@52@00
  (= (str___len__ $Snap.unit self@50@00) (str___len__ $Snap.unit other@51@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@50@00 $Ref) (other@51@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@50@00 other@51@00)
    (str___eq__ s@$ self@50@00 other@51@00))
  :pattern ((str___eq__ s@$ self@50@00 other@51@00))
  :qid |quant-u-4372|)))
(assert (forall ((s@$ $Snap) (self@50@00 $Ref) (other@51@00 $Ref)) (!
  (str___eq__%stateless self@50@00 other@51@00)
  :pattern ((str___eq__%limited s@$ self@50@00 other@51@00))
  :qid |quant-u-4373|)))
(assert (forall ((s@$ $Snap) (self@50@00 $Ref) (other@51@00 $Ref)) (!
  (let ((result@52@00 (str___eq__%limited s@$ self@50@00 other@51@00))) (=>
    (str___eq__%precondition s@$ self@50@00 other@51@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@50@00)
          (str___val__ $Snap.unit other@51@00))
        result@52@00)
      (=>
        result@52@00
        (=
          (str___len__ $Snap.unit self@50@00)
          (str___len__ $Snap.unit other@51@00))))))
  :pattern ((str___eq__%limited s@$ self@50@00 other@51@00))
  :qid |quant-u-4423|)))
(assert (forall ((s@$ $Snap) (self@50@00 $Ref) (other@51@00 $Ref)) (!
  (let ((result@52@00 (str___eq__%limited s@$ self@50@00 other@51@00))) (=>
    (str___eq__%precondition s@$ self@50@00 other@51@00)
    (and
      (str___val__%precondition $Snap.unit self@50@00)
      (str___val__%precondition $Snap.unit other@51@00))))
  :pattern ((str___eq__%limited s@$ self@50@00 other@51@00))
  :qid |quant-u-4424|)))
(assert (forall ((s@$ $Snap) (self@50@00 $Ref) (other@51@00 $Ref)) (!
  (let ((result@52@00 (str___eq__%limited s@$ self@50@00 other@51@00))) (=>
    (and (str___eq__%precondition s@$ self@50@00 other@51@00) result@52@00)
    (and
      (str___len__%precondition $Snap.unit self@50@00)
      (str___len__%precondition $Snap.unit other@51@00))))
  :pattern ((str___eq__%limited s@$ self@50@00 other@51@00))
  :qid |quant-u-4425|)))
; ---------- FUNCTION dict___getitem__----------
(declare-fun self@53@00 () $Ref)
(declare-fun key@54@00 () $Ref)
(declare-fun result@55@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@53@00) (dict<PyType> (dict_arg<PyType> (typeof<PyType> self@53@00) 0) (dict_arg<PyType> (typeof<PyType> self@53@00) 1))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const $k@91@00 $Perm)
(assert ($Perm.isReadVar $k@91@00))
(assert (<= $Perm.No $k@91@00))
(assert (=> (< $Perm.No $k@91@00) (not (= self@53@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(declare-const $k@92@00 $Perm)
(assert ($Perm.isReadVar $k@92@00))
(assert (<= $Perm.No $k@92@00))
(assert (=> (< $Perm.No $k@92@00) (not (= self@53@00 $Ref.null))))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] dict___contains__(self, key)
(push) ; 2
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@93@00 $Perm)
(assert ($Perm.isReadVar $k@93@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@93@00) (< $Perm.No $k@91@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@93@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@94@00 $Perm)
(assert ($Perm.isReadVar $k@94@00))
(set-option :timeout 0)
(push) ; 3
(assert (not (=> (< $Perm.No $k@94@00) (< $Perm.No $k@92@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.first ($Snap.second ($Snap.second s@$))))) self@53@00 key@54@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@93@00))
(assert ($Perm.isReadVar $k@94@00))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.first ($Snap.second ($Snap.second s@$))))) self@53@00 key@54@00))
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.first ($Snap.second ($Snap.second s@$))))) self@53@00 key@54@00))
(declare-const $t@95@00 $Snap)
(assert (= $t@95@00 ($Snap.combine ($Snap.first $t@95@00) ($Snap.second $t@95@00))))
(assert (= ($Snap.first $t@95@00) $Snap.unit))
; [eval] issubtype(typeof(result), dict_arg(typeof(self), 1))
; [eval] typeof(result)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> result@55@00) (dict_arg<PyType> (typeof<PyType> self@53@00) 1)))
(assert (=
  ($Snap.second $t@95@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@95@00))
    ($Snap.second ($Snap.second $t@95@00)))))
(assert (= ($Snap.first ($Snap.second $t@95@00)) $Snap.unit))
; [eval] (result in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 2
(declare-const $k@96@00 $Perm)
(assert ($Perm.isReadVar $k@96@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@96@00) (< $Perm.No $k@91@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@96@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@97@00 $Perm)
(assert ($Perm.isReadVar $k@97@00))
(set-option :timeout 0)
(push) ; 3
(assert (not (=> (< $Perm.No $k@97@00) (< $Perm.No $k@92@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@97@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second s@$))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@53@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@96@00))
(assert ($Perm.isReadVar $k@97@00))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second s@$))
  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@53@00))
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.first ($Snap.second ($Snap.second s@$)))) self@53@00)
  result@55@00))
(assert (= ($Snap.second ($Snap.second $t@95@00)) $Snap.unit))
; [eval] dict_get_helper(self.dict_acc, self.dict_acc2, key) == result
; [eval] dict_get_helper(self.dict_acc, self.dict_acc2, key)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@91@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@92@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (dict_get_helper<Ref> ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))) key@54@00)
  result@55@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (=
    (dict___getitem__%limited s@$ self@53@00 key@54@00)
    (dict___getitem__ s@$ self@53@00 key@54@00))
  :pattern ((dict___getitem__ s@$ self@53@00 key@54@00))
  :qid |quant-u-4374|)))
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (dict___getitem__%stateless self@53@00 key@54@00)
  :pattern ((dict___getitem__%limited s@$ self@53@00 key@54@00))
  :qid |quant-u-4375|)))
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (let ((result@55@00 (dict___getitem__%limited s@$ self@53@00 key@54@00))) (and
    ($Perm.isReadVar $k@91@00)
    ($Perm.isReadVar $k@92@00)
    ($Perm.isReadVar $k@93@00)
    ($Perm.isReadVar $k@94@00)
    ($Perm.isReadVar $k@96@00)
    ($Perm.isReadVar $k@97@00)
    (=>
      (dict___getitem__%precondition s@$ self@53@00 key@54@00)
      (and
        (issubtype<Bool> (typeof<PyType> result@55@00) (dict_arg<PyType> (typeof<PyType> self@53@00) 1))
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second s@$))
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@53@00)
          result@55@00)
        (=
          (dict_get_helper<Ref> ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))) key@54@00)
          result@55@00)))))
  :pattern ((dict___getitem__%limited s@$ self@53@00 key@54@00))
  :qid |quant-u-4426|)))
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (let ((result@55@00 (dict___getitem__%limited s@$ self@53@00 key@54@00))) true)
  :pattern ((dict___getitem__%limited s@$ self@53@00 key@54@00))
  :qid |quant-u-4427|)))
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (let ((result@55@00 (dict___getitem__%limited s@$ self@53@00 key@54@00))) (=>
    (dict___getitem__%precondition s@$ self@53@00 key@54@00)
    (dict___values__%precondition ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) self@53@00)))
  :pattern ((dict___getitem__%limited s@$ self@53@00 key@54@00))
  :qid |quant-u-4428|)))
(assert (forall ((s@$ $Snap) (self@53@00 $Ref) (key@54@00 $Ref)) (!
  (let ((result@55@00 (dict___getitem__%limited s@$ self@53@00 key@54@00))) true)
  :pattern ((dict___getitem__%limited s@$ self@53@00 key@54@00))
  :qid |quant-u-4429|)))
; ---------- FUNCTION int___ge__----------
(declare-fun self@56@00 () Int)
(declare-fun other@57@00 () Int)
(declare-fun result@58@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@56@00 Int) (other@57@00 Int)) (!
  (=
    (int___ge__%limited s@$ self@56@00 other@57@00)
    (int___ge__ s@$ self@56@00 other@57@00))
  :pattern ((int___ge__ s@$ self@56@00 other@57@00))
  :qid |quant-u-4376|)))
(assert (forall ((s@$ $Snap) (self@56@00 Int) (other@57@00 Int)) (!
  (int___ge__%stateless self@56@00 other@57@00)
  :pattern ((int___ge__%limited s@$ self@56@00 other@57@00))
  :qid |quant-u-4377|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self >= other
(assert (= result@58@00 (>= self@56@00 other@57@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@56@00 Int) (other@57@00 Int)) (!
  (=>
    (int___ge__%precondition s@$ self@56@00 other@57@00)
    (= (int___ge__ s@$ self@56@00 other@57@00) (>= self@56@00 other@57@00)))
  :pattern ((int___ge__ s@$ self@56@00 other@57@00))
  :qid |quant-u-4430|)))
(assert (forall ((s@$ $Snap) (self@56@00 Int) (other@57@00 Int)) (!
  true
  :pattern ((int___ge__ s@$ self@56@00 other@57@00))
  :qid |quant-u-4431|)))
; ---------- FUNCTION py_range___create__----------
(declare-fun start@59@00 () Int)
(declare-fun stop@60@00 () Int)
(declare-fun ctr@61@00 () Int)
(declare-fun result@62@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] stop >= start
(assert (>= stop@60@00 start@59@00))
(declare-const $t@98@00 $Snap)
(assert (= $t@98@00 ($Snap.combine ($Snap.first $t@98@00) ($Snap.second $t@98@00))))
(assert (= ($Snap.first $t@98@00) $Snap.unit))
; [eval] py_range___val__(result) == [start..stop)
; [eval] py_range___val__(result)
(push) ; 2
(assert (py_range___val__%precondition $Snap.unit result@62@00))
(pop) ; 2
; Joined path conditions
(assert (py_range___val__%precondition $Snap.unit result@62@00))
; [eval] [start..stop)
(assert (Seq_equal
  (py_range___val__ $Snap.unit result@62@00)
  (Seq_range start@59@00 stop@60@00)))
(assert (=
  ($Snap.second $t@98@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@98@00))
    ($Snap.second ($Snap.second $t@98@00)))))
(assert (= ($Snap.first ($Snap.second $t@98@00)) $Snap.unit))
; [eval] py_range___start__(result) == start
; [eval] py_range___start__(result)
(push) ; 2
(assert (py_range___start__%precondition $Snap.unit result@62@00))
(pop) ; 2
; Joined path conditions
(assert (py_range___start__%precondition $Snap.unit result@62@00))
(assert (= (py_range___start__ $Snap.unit result@62@00) start@59@00))
(assert (=
  ($Snap.second ($Snap.second $t@98@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@98@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@98@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@98@00))) $Snap.unit))
; [eval] py_range___stop__(result) == stop
; [eval] py_range___stop__(result)
(push) ; 2
(assert (py_range___stop__%precondition $Snap.unit result@62@00))
(pop) ; 2
; Joined path conditions
(assert (py_range___stop__%precondition $Snap.unit result@62@00))
(assert (= (py_range___stop__ $Snap.unit result@62@00) stop@60@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@98@00))) $Snap.unit))
; [eval] typeof(result) == py_range()
; [eval] typeof(result)
; [eval] py_range()
(assert (= (typeof<PyType> result@62@00) (as py_range<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (=
    (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00)
    (py_range___create__ s@$ start@59@00 stop@60@00 ctr@61@00))
  :pattern ((py_range___create__ s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4378|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (py_range___create__%stateless start@59@00 stop@60@00 ctr@61@00)
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4379|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (let ((result@62@00 (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))) (=>
    (py_range___create__%precondition s@$ start@59@00 stop@60@00 ctr@61@00)
    (and
      (Seq_equal
        (py_range___val__ $Snap.unit result@62@00)
        (Seq_range start@59@00 stop@60@00))
      (= (py_range___start__ $Snap.unit result@62@00) start@59@00)
      (= (py_range___stop__ $Snap.unit result@62@00) stop@60@00)
      (= (typeof<PyType> result@62@00) (as py_range<PyType>  PyType)))))
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4432|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (let ((result@62@00 (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))) (=>
    (py_range___create__%precondition s@$ start@59@00 stop@60@00 ctr@61@00)
    (py_range___val__%precondition $Snap.unit result@62@00)))
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4433|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (let ((result@62@00 (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))) (=>
    (py_range___create__%precondition s@$ start@59@00 stop@60@00 ctr@61@00)
    (py_range___start__%precondition $Snap.unit result@62@00)))
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4434|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (let ((result@62@00 (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))) (=>
    (py_range___create__%precondition s@$ start@59@00 stop@60@00 ctr@61@00)
    (py_range___stop__%precondition $Snap.unit result@62@00)))
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4435|)))
(assert (forall ((s@$ $Snap) (start@59@00 Int) (stop@60@00 Int) (ctr@61@00 Int)) (!
  (let ((result@62@00 (py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))) true)
  :pattern ((py_range___create__%limited s@$ start@59@00 stop@60@00 ctr@61@00))
  :qid |quant-u-4436|)))
; ---------- FUNCTION int___gt__----------
(declare-fun self@63@00 () Int)
(declare-fun other@64@00 () Int)
(declare-fun result@65@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@63@00 Int) (other@64@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@63@00 other@64@00)
    (int___gt__ s@$ self@63@00 other@64@00))
  :pattern ((int___gt__ s@$ self@63@00 other@64@00))
  :qid |quant-u-4380|)))
(assert (forall ((s@$ $Snap) (self@63@00 Int) (other@64@00 Int)) (!
  (int___gt__%stateless self@63@00 other@64@00)
  :pattern ((int___gt__%limited s@$ self@63@00 other@64@00))
  :qid |quant-u-4381|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] self > other
(assert (= result@65@00 (> self@63@00 other@64@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@63@00 Int) (other@64@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@63@00 other@64@00)
    (= (int___gt__ s@$ self@63@00 other@64@00) (> self@63@00 other@64@00)))
  :pattern ((int___gt__ s@$ self@63@00 other@64@00))
  :qid |quant-u-4437|)))
(assert (forall ((s@$ $Snap) (self@63@00 Int) (other@64@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@63@00 other@64@00))
  :qid |quant-u-4438|)))
; ---------- FUNCTION __name__----------
(declare-fun result@66@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4382|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4383|)))
; ---------- MustTerminate ----------
(declare-const r@99@00 $Ref)
; ---------- MustInvokeBounded ----------
(declare-const r@100@00 $Ref)
; ---------- MustInvokeUnbounded ----------
(declare-const r@101@00 $Ref)
; ---------- _MaySet ----------
(declare-const rec@102@00 $Ref)
(declare-const id@103@00 Int)