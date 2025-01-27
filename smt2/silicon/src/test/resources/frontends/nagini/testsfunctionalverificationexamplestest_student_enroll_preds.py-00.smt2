(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 22:59:56
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
(declare-sort $FVF<set_acc> 0)
(declare-sort $FVF<__previous> 0)
(declare-sort $PSF<Student_undecided> 0)
(declare-sort $PSF<Student_enrolled> 0)
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
(declare-fun $SortWrappers.$FVF<__previous>To$Snap ($FVF<__previous>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<__previous> ($Snap) $FVF<__previous>)
(assert (forall ((x $FVF<__previous>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<__previous>($SortWrappers.$FVF<__previous>To$Snap x)))
    :pattern (($SortWrappers.$FVF<__previous>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<__previous>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<__previous>To$Snap($SortWrappers.$SnapTo$FVF<__previous> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<__previous> x))
    :qid |$Snap.$FVF<__previous>To$SnapTo$FVF<__previous>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<Student_undecided>To$Snap ($PSF<Student_undecided>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Student_undecided> ($Snap) $PSF<Student_undecided>)
(assert (forall ((x $PSF<Student_undecided>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Student_undecided>($SortWrappers.$PSF<Student_undecided>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Student_undecided>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Student_undecided>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Student_undecided>To$Snap($SortWrappers.$SnapTo$PSF<Student_undecided> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Student_undecided> x))
    :qid |$Snap.$PSF<Student_undecided>To$SnapTo$PSF<Student_undecided>|
    )))
(declare-fun $SortWrappers.$PSF<Student_enrolled>To$Snap ($PSF<Student_enrolled>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Student_enrolled> ($Snap) $PSF<Student_enrolled>)
(assert (forall ((x $PSF<Student_enrolled>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Student_enrolled>($SortWrappers.$PSF<Student_enrolled>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Student_enrolled>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Student_enrolled>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Student_enrolled>To$Snap($SortWrappers.$SnapTo$PSF<Student_enrolled> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Student_enrolled> x))
    :qid |$Snap.$PSF<Student_enrolled>To$SnapTo$PSF<Student_enrolled>|
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
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
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
(declare-const Student<PyType> PyType)
(declare-const GradStudent<PyType> PyType)
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
; /field_value_functions_declarations.smt2 [set_acc: Set[Ref]]
(declare-fun $FVF.domain_set_acc ($FVF<set_acc>) Set<$Ref>)
(declare-fun $FVF.lookup_set_acc ($FVF<set_acc> $Ref) Set<$Ref>)
(declare-fun $FVF.after_set_acc ($FVF<set_acc> $FVF<set_acc>) Bool)
(declare-fun $FVF.loc_set_acc (Set<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_set_acc ($FPM $Ref) $Perm)
(declare-const $fvfTOP_set_acc $FVF<set_acc>)
; /field_value_functions_declarations.smt2 [__previous: Seq[Ref]]
(declare-fun $FVF.domain___previous ($FVF<__previous>) Set<$Ref>)
(declare-fun $FVF.lookup___previous ($FVF<__previous> $Ref) Seq<$Ref>)
(declare-fun $FVF.after___previous ($FVF<__previous> $FVF<__previous>) Bool)
(declare-fun $FVF.loc___previous (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm___previous ($FPM $Ref) $Perm)
(declare-const $fvfTOP___previous $FVF<__previous>)
; /predicate_snap_functions_declarations.smt2 [Student_undecided: Snap]
(declare-fun $PSF.domain_Student_undecided ($PSF<Student_undecided>) Set<$Snap>)
(declare-fun $PSF.lookup_Student_undecided ($PSF<Student_undecided> $Snap) $Snap)
(declare-fun $PSF.after_Student_undecided ($PSF<Student_undecided> $PSF<Student_undecided>) Bool)
(declare-fun $PSF.loc_Student_undecided ($Snap $Snap) Bool)
(declare-fun $PSF.perm_Student_undecided ($PPM $Snap) $Perm)
(declare-const $psfTOP_Student_undecided $PSF<Student_undecided>)
; /predicate_snap_functions_declarations.smt2 [Student_enrolled: Snap]
(declare-fun $PSF.domain_Student_enrolled ($PSF<Student_enrolled>) Set<$Snap>)
(declare-fun $PSF.lookup_Student_enrolled ($PSF<Student_enrolled> $Snap) $Snap)
(declare-fun $PSF.after_Student_enrolled ($PSF<Student_enrolled> $PSF<Student_enrolled>) Bool)
(declare-fun $PSF.loc_Student_enrolled ($Snap $Snap) Bool)
(declare-fun $PSF.perm_Student_enrolled ($PPM $Snap) $Perm)
(declare-const $psfTOP_Student_enrolled $PSF<Student_enrolled>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun PSeq___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun PSeq___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun PSeq___sil_seq__%stateless ($Ref) Bool)
(declare-fun PSeq___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun list___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun list___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun list___sil_seq__%stateless ($Ref) Bool)
(declare-fun list___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun PSeq___create__ ($Snap Seq<$Ref> PyType) $Ref)
(declare-fun PSeq___create__%limited ($Snap Seq<$Ref> PyType) $Ref)
(declare-fun PSeq___create__%stateless (Seq<$Ref> PyType) Bool)
(declare-fun PSeq___create__%precondition ($Snap Seq<$Ref> PyType) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun set___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun set___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun set___sil_seq__%stateless ($Ref) Bool)
(declare-fun set___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun PSeq___contains__ ($Snap $Ref $Ref) Bool)
(declare-fun PSeq___contains__%limited ($Snap $Ref $Ref) Bool)
(declare-fun PSeq___contains__%stateless ($Ref $Ref) Bool)
(declare-fun PSeq___contains__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun bool___unbox__ ($Snap $Ref) Bool)
(declare-fun bool___unbox__%limited ($Snap $Ref) Bool)
(declare-fun bool___unbox__%stateless ($Ref) Bool)
(declare-fun bool___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__bool___box__ ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%limited ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%stateless (Bool) Bool)
(declare-fun __prim__bool___box__%precondition ($Snap Bool) Bool)
(declare-fun int___unbox__ ($Snap $Ref) Int)
(declare-fun int___unbox__%limited ($Snap $Ref) Int)
(declare-fun int___unbox__%stateless ($Ref) Bool)
(declare-fun int___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__int___box__ ($Snap Int) $Ref)
(declare-fun __prim__int___box__%limited ($Snap Int) $Ref)
(declare-fun __prim__int___box__%stateless (Int) Bool)
(declare-fun __prim__int___box__%precondition ($Snap Int) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun list___contains__ ($Snap $Ref $Ref) Bool)
(declare-fun list___contains__%limited ($Snap $Ref $Ref) Bool)
(declare-fun list___contains__%stateless ($Ref $Ref) Bool)
(declare-fun list___contains__%precondition ($Snap $Ref $Ref) Bool)
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
(declare-fun Student_enrolled%trigger ($Snap $Ref $Ref) Bool)
(declare-fun Student_undecided%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> Student<PyType> traceback<PyType> dict_basic<PyType> type<PyType> GradStudent<PyType> set_basic<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
(assert (and
  (extends_<Bool> (as Student<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Student<PyType>  PyType))
    (as Student<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as GradStudent<PyType>  PyType) (as Student<PyType>  PyType))
  (=
    (get_basic<PyType> (as GradStudent<PyType>  PyType))
    (as GradStudent<PyType>  PyType))))
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
; /field_value_functions_axioms.smt2 [__previous: Seq[Ref]]
(assert (forall ((vs $FVF<__previous>) (ws $FVF<__previous>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain___previous vs) ($FVF.domain___previous ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain___previous vs))
            (= ($FVF.lookup___previous vs x) ($FVF.lookup___previous ws x)))
          :pattern (($FVF.lookup___previous vs x) ($FVF.lookup___previous ws x))
          :qid |qp.$FVF<__previous>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<__previous>To$Snap vs)
              ($SortWrappers.$FVF<__previous>To$Snap ws)
              )
    :qid |qp.$FVF<__previous>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm___previous pm r))
    :pattern (($FVF.perm___previous pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc___previous f r) true)
    :pattern (($FVF.loc___previous f r)))))
; /predicate_snap_functions_axioms.smt2 [Student_undecided: Snap]
(assert (forall ((vs $PSF<Student_undecided>) (ws $PSF<Student_undecided>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Student_undecided vs) ($PSF.domain_Student_undecided ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Student_undecided vs))
            (= ($PSF.lookup_Student_undecided vs x) ($PSF.lookup_Student_undecided ws x)))
          :pattern (($PSF.lookup_Student_undecided vs x) ($PSF.lookup_Student_undecided ws x))
          :qid |qp.$PSF<Student_undecided>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Student_undecided>To$Snap vs)
              ($SortWrappers.$PSF<Student_undecided>To$Snap ws)
              )
    :qid |qp.$PSF<Student_undecided>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Student_undecided pm s))
    :pattern (($PSF.perm_Student_undecided pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_Student_undecided f s) true)
    :pattern (($PSF.loc_Student_undecided f s)))))
; /predicate_snap_functions_axioms.smt2 [Student_enrolled: Snap]
(assert (forall ((vs $PSF<Student_enrolled>) (ws $PSF<Student_enrolled>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Student_enrolled vs) ($PSF.domain_Student_enrolled ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Student_enrolled vs))
            (= ($PSF.lookup_Student_enrolled vs x) ($PSF.lookup_Student_enrolled ws x)))
          :pattern (($PSF.lookup_Student_enrolled vs x) ($PSF.lookup_Student_enrolled ws x))
          :qid |qp.$PSF<Student_enrolled>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Student_enrolled>To$Snap vs)
              ($SortWrappers.$PSF<Student_enrolled>To$Snap ws)
              )
    :qid |qp.$PSF<Student_enrolled>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Student_enrolled pm s))
    :pattern (($PSF.perm_Student_enrolled pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_Student_enrolled f s) true)
    :pattern (($PSF.loc_Student_enrolled f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION str___val__----------
(declare-fun self@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-4294|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-4295|)))
; ---------- FUNCTION str___len__----------
(declare-fun self@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@46@00 $Snap)
(assert (= $t@46@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@3@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-4296|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4297|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4334|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4335|)))
; ---------- FUNCTION PSeq___sil_seq__----------
(declare-fun box@4@00 () $Ref)
(declare-fun result@5@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(assert (issubtype<Bool> (typeof<PyType> box@4@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> box@4@00) 0))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (= (PSeq___sil_seq__%limited s@$ box@4@00) (PSeq___sil_seq__ s@$ box@4@00))
  :pattern ((PSeq___sil_seq__ s@$ box@4@00))
  :qid |quant-u-4298|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (PSeq___sil_seq__%stateless box@4@00)
  :pattern ((PSeq___sil_seq__%limited s@$ box@4@00))
  :qid |quant-u-4299|)))
; ---------- FUNCTION _isDefined----------
(declare-fun id@6@00 () Int)
(declare-fun result@7@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (id@6@00 Int)) (!
  (= (_isDefined%limited s@$ id@6@00) (_isDefined s@$ id@6@00))
  :pattern ((_isDefined s@$ id@6@00))
  :qid |quant-u-4300|)))
(assert (forall ((s@$ $Snap) (id@6@00 Int)) (!
  (_isDefined%stateless id@6@00)
  :pattern ((_isDefined%limited s@$ id@6@00))
  :qid |quant-u-4301|)))
; ---------- FUNCTION Level----------
(declare-fun r@8@00 () $Ref)
(declare-fun result@9@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (= (Level%limited s@$ r@8@00) (Level s@$ r@8@00))
  :pattern ((Level s@$ r@8@00))
  :qid |quant-u-4302|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (Level%stateless r@8@00)
  :pattern ((Level%limited s@$ r@8@00))
  :qid |quant-u-4303|)))
; ---------- FUNCTION list___sil_seq__----------
(declare-fun self@10@00 () $Ref)
(declare-fun result@11@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $k@47@00 $Perm)
(assert ($Perm.isReadVar $k@47@00))
(assert (<= $Perm.No $k@47@00))
(assert (=> (< $Perm.No $k@47@00) (not (= self@10@00 $Ref.null))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (= (list___sil_seq__%limited s@$ self@10@00) (list___sil_seq__ s@$ self@10@00))
  :pattern ((list___sil_seq__ s@$ self@10@00))
  :qid |quant-u-4304|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (list___sil_seq__%stateless self@10@00)
  :pattern ((list___sil_seq__%limited s@$ self@10@00))
  :qid |quant-u-4305|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@47@00))
(assert (<= $Perm.No $k@47@00))
(assert (=> (< $Perm.No $k@47@00) (not (= self@10@00 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@47@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= result@11@00 ($SortWrappers.$SnapToSeq<$Ref> s@$)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@47@00)
    (=>
      (list___sil_seq__%precondition s@$ self@10@00)
      (= (list___sil_seq__ s@$ self@10@00) ($SortWrappers.$SnapToSeq<$Ref> s@$))))
  :pattern ((list___sil_seq__ s@$ self@10@00))
  :qid |quant-u-4336|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  true
  :pattern ((list___sil_seq__ s@$ self@10@00))
  :qid |quant-u-4337|)))
; ---------- FUNCTION str___create__----------
(declare-fun len@12@00 () Int)
(declare-fun value@13@00 () Int)
(declare-fun result@14@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@48@00 $Snap)
(assert (= $t@48@00 ($Snap.combine ($Snap.first $t@48@00) ($Snap.second $t@48@00))))
(assert (= ($Snap.first $t@48@00) $Snap.unit))
; [eval] str___len__(result) == len
; [eval] str___len__(result)
(push) ; 2
(assert (str___len__%precondition $Snap.unit result@14@00))
(pop) ; 2
; Joined path conditions
(assert (str___len__%precondition $Snap.unit result@14@00))
(assert (= (str___len__ $Snap.unit result@14@00) len@12@00))
(assert (=
  ($Snap.second $t@48@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@00))
    ($Snap.second ($Snap.second $t@48@00)))))
(assert (= ($Snap.first ($Snap.second $t@48@00)) $Snap.unit))
; [eval] str___val__(result) == value
; [eval] str___val__(result)
(push) ; 2
(assert (str___val__%precondition $Snap.unit result@14@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit result@14@00))
(assert (= (str___val__ $Snap.unit result@14@00) value@13@00))
(assert (= ($Snap.second ($Snap.second $t@48@00)) $Snap.unit))
; [eval] typeof(result) == str()
; [eval] typeof(result)
; [eval] str()
(assert (= (typeof<PyType> result@14@00) (as str<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (=
    (str___create__%limited s@$ len@12@00 value@13@00)
    (str___create__ s@$ len@12@00 value@13@00))
  :pattern ((str___create__ s@$ len@12@00 value@13@00))
  :qid |quant-u-4306|)))
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (str___create__%stateless len@12@00 value@13@00)
  :pattern ((str___create__%limited s@$ len@12@00 value@13@00))
  :qid |quant-u-4307|)))
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (let ((result@14@00 (str___create__%limited s@$ len@12@00 value@13@00))) (=>
    (str___create__%precondition s@$ len@12@00 value@13@00)
    (and
      (= (str___len__ $Snap.unit result@14@00) len@12@00)
      (= (str___val__ $Snap.unit result@14@00) value@13@00)
      (= (typeof<PyType> result@14@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@12@00 value@13@00))
  :qid |quant-u-4338|)))
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (let ((result@14@00 (str___create__%limited s@$ len@12@00 value@13@00))) (=>
    (str___create__%precondition s@$ len@12@00 value@13@00)
    (str___len__%precondition $Snap.unit result@14@00)))
  :pattern ((str___create__%limited s@$ len@12@00 value@13@00))
  :qid |quant-u-4339|)))
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (let ((result@14@00 (str___create__%limited s@$ len@12@00 value@13@00))) (=>
    (str___create__%precondition s@$ len@12@00 value@13@00)
    (str___val__%precondition $Snap.unit result@14@00)))
  :pattern ((str___create__%limited s@$ len@12@00 value@13@00))
  :qid |quant-u-4340|)))
(assert (forall ((s@$ $Snap) (len@12@00 Int) (value@13@00 Int)) (!
  (let ((result@14@00 (str___create__%limited s@$ len@12@00 value@13@00))) true)
  :pattern ((str___create__%limited s@$ len@12@00 value@13@00))
  :qid |quant-u-4341|)))
; ---------- FUNCTION PSeq___create__----------
(declare-fun prim@15@00 () Seq<$Ref>)
(declare-fun cont_type@16@00 () PyType)
(declare-fun result@17@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@49@00 $Snap)
(assert (= $t@49@00 ($Snap.combine ($Snap.first $t@49@00) ($Snap.second $t@49@00))))
(assert (= ($Snap.first $t@49@00) $Snap.unit))
; [eval] typeof(result) == PSeq(cont_type)
; [eval] typeof(result)
; [eval] PSeq(cont_type)
(assert (= (typeof<PyType> result@17@00) (PSeq<PyType> cont_type@16@00)))
(assert (= ($Snap.second $t@49@00) $Snap.unit))
; [eval] PSeq___sil_seq__(result) == prim
; [eval] PSeq___sil_seq__(result)
(push) ; 2
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@17@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@17@00) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@17@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@17@00) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit result@17@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@17@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@17@00) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit result@17@00)))
(assert (Seq_equal (PSeq___sil_seq__ $Snap.unit result@17@00) prim@15@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@15@00 Seq<$Ref>) (cont_type@16@00 PyType)) (!
  (=
    (PSeq___create__%limited s@$ prim@15@00 cont_type@16@00)
    (PSeq___create__ s@$ prim@15@00 cont_type@16@00))
  :pattern ((PSeq___create__ s@$ prim@15@00 cont_type@16@00))
  :qid |quant-u-4308|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Seq<$Ref>) (cont_type@16@00 PyType)) (!
  (PSeq___create__%stateless prim@15@00 cont_type@16@00)
  :pattern ((PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))
  :qid |quant-u-4309|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Seq<$Ref>) (cont_type@16@00 PyType)) (!
  (let ((result@17@00 (PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))) (=>
    (PSeq___create__%precondition s@$ prim@15@00 cont_type@16@00)
    (and
      (= (typeof<PyType> result@17@00) (PSeq<PyType> cont_type@16@00))
      (Seq_equal (PSeq___sil_seq__ $Snap.unit result@17@00) prim@15@00))))
  :pattern ((PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))
  :qid |quant-u-4342|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Seq<$Ref>) (cont_type@16@00 PyType)) (!
  (let ((result@17@00 (PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))) true)
  :pattern ((PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))
  :qid |quant-u-4343|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Seq<$Ref>) (cont_type@16@00 PyType)) (!
  (let ((result@17@00 (PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))) (=>
    (PSeq___create__%precondition s@$ prim@15@00 cont_type@16@00)
    (PSeq___sil_seq__%precondition $Snap.unit result@17@00)))
  :pattern ((PSeq___create__%limited s@$ prim@15@00 cont_type@16@00))
  :qid |quant-u-4344|)))
; ---------- FUNCTION Measure$check----------
(declare-fun map@18@00 () Seq<Measure$>)
(declare-fun key@19@00 () $Ref)
(declare-fun value@20@00 () Int)
(declare-fun result@21@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (map@18@00 Seq<Measure$>) (key@19@00 $Ref) (value@20@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@18@00 key@19@00 value@20@00)
    (Measure$check s@$ map@18@00 key@19@00 value@20@00))
  :pattern ((Measure$check s@$ map@18@00 key@19@00 value@20@00))
  :qid |quant-u-4310|)))
(assert (forall ((s@$ $Snap) (map@18@00 Seq<Measure$>) (key@19@00 $Ref) (value@20@00 Int)) (!
  (Measure$check%stateless map@18@00 key@19@00 value@20@00)
  :pattern ((Measure$check%limited s@$ map@18@00 key@19@00 value@20@00))
  :qid |quant-u-4311|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (forall m: Measure$ :: { (m in map) } (m in map) ==> Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value)
(declare-const m@50@00 Measure$)
(set-option :timeout 0)
(push) ; 2
; [eval] (m in map) ==> Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value
; [eval] (m in map)
(push) ; 3
; [then-branch: 0 | m@50@00 in map@18@00 | live]
; [else-branch: 0 | !(m@50@00 in map@18@00) | live]
(push) ; 4
; [then-branch: 0 | m@50@00 in map@18@00]
(assert (Seq_contains map@18@00 m@50@00))
; [eval] Measure$guard(m) && Measure$key(m) == key ==> Measure$value(m) > value
; [eval] Measure$guard(m) && Measure$key(m) == key
; [eval] Measure$guard(m)
(push) ; 5
; [then-branch: 1 | !(Measure$guard[Bool](m@50@00)) | live]
; [else-branch: 1 | Measure$guard[Bool](m@50@00) | live]
(push) ; 6
; [then-branch: 1 | !(Measure$guard[Bool](m@50@00))]
(assert (not (Measure$guard<Bool> m@50@00)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | Measure$guard[Bool](m@50@00)]
(assert (Measure$guard<Bool> m@50@00))
; [eval] Measure$key(m) == key
; [eval] Measure$key(m)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Measure$guard<Bool> m@50@00) (not (Measure$guard<Bool> m@50@00))))
(push) ; 5
; [then-branch: 2 | Measure$guard[Bool](m@50@00) && Measure$key[Ref](m@50@00) == key@19@00 | live]
; [else-branch: 2 | !(Measure$guard[Bool](m@50@00) && Measure$key[Ref](m@50@00) == key@19@00) | live]
(push) ; 6
; [then-branch: 2 | Measure$guard[Bool](m@50@00) && Measure$key[Ref](m@50@00) == key@19@00]
(assert (and (Measure$guard<Bool> m@50@00) (= (Measure$key<Ref> m@50@00) key@19@00)))
; [eval] Measure$value(m) > value
; [eval] Measure$value(m)
(pop) ; 6
(push) ; 6
; [else-branch: 2 | !(Measure$guard[Bool](m@50@00) && Measure$key[Ref](m@50@00) == key@19@00)]
(assert (not
  (and (Measure$guard<Bool> m@50@00) (= (Measure$key<Ref> m@50@00) key@19@00))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and (Measure$guard<Bool> m@50@00) (= (Measure$key<Ref> m@50@00) key@19@00)))
  (and (Measure$guard<Bool> m@50@00) (= (Measure$key<Ref> m@50@00) key@19@00))))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(m@50@00 in map@18@00)]
(assert (not (Seq_contains map@18@00 m@50@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (Seq_contains map@18@00 m@50@00)
  (and
    (Seq_contains map@18@00 m@50@00)
    (or (Measure$guard<Bool> m@50@00) (not (Measure$guard<Bool> m@50@00)))
    (or
      (not
        (and
          (Measure$guard<Bool> m@50@00)
          (= (Measure$key<Ref> m@50@00) key@19@00)))
      (and
        (Measure$guard<Bool> m@50@00)
        (= (Measure$key<Ref> m@50@00) key@19@00))))))
; Joined path conditions
(assert (or (not (Seq_contains map@18@00 m@50@00)) (Seq_contains map@18@00 m@50@00)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((m@50@00 Measure$)) (!
  (and
    (=>
      (Seq_contains map@18@00 m@50@00)
      (and
        (Seq_contains map@18@00 m@50@00)
        (or (Measure$guard<Bool> m@50@00) (not (Measure$guard<Bool> m@50@00)))
        (or
          (not
            (and
              (Measure$guard<Bool> m@50@00)
              (= (Measure$key<Ref> m@50@00) key@19@00)))
          (and
            (Measure$guard<Bool> m@50@00)
            (= (Measure$key<Ref> m@50@00) key@19@00)))))
    (or (not (Seq_contains map@18@00 m@50@00)) (Seq_contains map@18@00 m@50@00)))
  :pattern ((Seq_contains map@18@00 m@50@00))
  :pattern ((Seq_contains_trigger map@18@00 m@50@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@509@4@509@126-aux|)))
(assert (forall ((m@50@00 Measure$)) (!
  (and
    (=>
      (Seq_contains map@18@00 m@50@00)
      (and
        (Seq_contains map@18@00 m@50@00)
        (or (Measure$guard<Bool> m@50@00) (not (Measure$guard<Bool> m@50@00)))
        (or
          (not
            (and
              (Measure$guard<Bool> m@50@00)
              (= (Measure$key<Ref> m@50@00) key@19@00)))
          (and
            (Measure$guard<Bool> m@50@00)
            (= (Measure$key<Ref> m@50@00) key@19@00)))))
    (or (not (Seq_contains map@18@00 m@50@00)) (Seq_contains map@18@00 m@50@00)))
  :pattern ((Seq_contains_trigger map@18@00 m@50@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@509@4@509@126-aux|)))
(assert (=
  result@21@00
  (forall ((m@50@00 Measure$)) (!
    (=>
      (and
        (Seq_contains map@18@00 m@50@00)
        (and
          (Measure$guard<Bool> m@50@00)
          (= (Measure$key<Ref> m@50@00) key@19@00)))
      (> (Measure$value<Int> m@50@00) value@20@00))
    :pattern ((Seq_contains map@18@00 m@50@00))
    :pattern ((Seq_contains_trigger map@18@00 m@50@00))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@509@4@509@126|))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (map@18@00 Seq<Measure$>) (key@19@00 $Ref) (value@20@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@18@00 key@19@00 value@20@00)
    (=
      (Measure$check s@$ map@18@00 key@19@00 value@20@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@18@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@19@00)))
          (> (Measure$value<Int> m) value@20@00))
        :pattern ((Seq_contains map@18@00 m))
        :pattern ((Seq_contains_trigger map@18@00 m))
        :pattern ((Seq_contains_trigger map@18@00 m))
        ))))
  :pattern ((Measure$check s@$ map@18@00 key@19@00 value@20@00))
  :qid |quant-u-4345|)))
(assert (forall ((s@$ $Snap) (map@18@00 Seq<Measure$>) (key@19@00 $Ref) (value@20@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@18@00 key@19@00 value@20@00))
  :qid |quant-u-4346|)))
; ---------- FUNCTION str___eq__----------
(declare-fun self@22@00 () $Ref)
(declare-fun other@23@00 () $Ref)
(declare-fun result@24@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> self@22@00) (as str<PyType>  PyType)))
(declare-const $t@51@00 $Snap)
(assert (= $t@51@00 ($Snap.combine ($Snap.first $t@51@00) ($Snap.second $t@51@00))))
(assert (= ($Snap.first $t@51@00) $Snap.unit))
; [eval] (str___val__(self) == str___val__(other)) == result
; [eval] str___val__(self) == str___val__(other)
; [eval] str___val__(self)
(push) ; 2
(assert (str___val__%precondition $Snap.unit self@22@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit self@22@00))
; [eval] str___val__(other)
(push) ; 2
(assert (str___val__%precondition $Snap.unit other@23@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit other@23@00))
(assert (=
  (= (str___val__ $Snap.unit self@22@00) (str___val__ $Snap.unit other@23@00))
  result@24@00))
(assert (= ($Snap.second $t@51@00) $Snap.unit))
; [eval] result ==> str___len__(self) == str___len__(other)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not result@24@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not result@24@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | result@24@00 | live]
; [else-branch: 3 | !(result@24@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | result@24@00]
(assert result@24@00)
; [eval] str___len__(self) == str___len__(other)
; [eval] str___len__(self)
(push) ; 4
(assert (str___len__%precondition $Snap.unit self@22@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit self@22@00))
; [eval] str___len__(other)
(push) ; 4
(assert (str___len__%precondition $Snap.unit other@23@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit other@23@00))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(result@24@00)]
(assert (not result@24@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  result@24@00
  (and
    result@24@00
    (str___len__%precondition $Snap.unit self@22@00)
    (str___len__%precondition $Snap.unit other@23@00))))
; Joined path conditions
(assert (or (not result@24@00) result@24@00))
(assert (=>
  result@24@00
  (= (str___len__ $Snap.unit self@22@00) (str___len__ $Snap.unit other@23@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@22@00 other@23@00)
    (str___eq__ s@$ self@22@00 other@23@00))
  :pattern ((str___eq__ s@$ self@22@00 other@23@00))
  :qid |quant-u-4312|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (str___eq__%stateless self@22@00 other@23@00)
  :pattern ((str___eq__%limited s@$ self@22@00 other@23@00))
  :qid |quant-u-4313|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (let ((result@24@00 (str___eq__%limited s@$ self@22@00 other@23@00))) (=>
    (str___eq__%precondition s@$ self@22@00 other@23@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@22@00)
          (str___val__ $Snap.unit other@23@00))
        result@24@00)
      (=>
        result@24@00
        (=
          (str___len__ $Snap.unit self@22@00)
          (str___len__ $Snap.unit other@23@00))))))
  :pattern ((str___eq__%limited s@$ self@22@00 other@23@00))
  :qid |quant-u-4347|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (let ((result@24@00 (str___eq__%limited s@$ self@22@00 other@23@00))) (=>
    (str___eq__%precondition s@$ self@22@00 other@23@00)
    (and
      (str___val__%precondition $Snap.unit self@22@00)
      (str___val__%precondition $Snap.unit other@23@00))))
  :pattern ((str___eq__%limited s@$ self@22@00 other@23@00))
  :qid |quant-u-4348|)))
(assert (forall ((s@$ $Snap) (self@22@00 $Ref) (other@23@00 $Ref)) (!
  (let ((result@24@00 (str___eq__%limited s@$ self@22@00 other@23@00))) (=>
    (and (str___eq__%precondition s@$ self@22@00 other@23@00) result@24@00)
    (and
      (str___len__%precondition $Snap.unit self@22@00)
      (str___len__%precondition $Snap.unit other@23@00))))
  :pattern ((str___eq__%limited s@$ self@22@00 other@23@00))
  :qid |quant-u-4349|)))
; ---------- FUNCTION set___sil_seq__----------
(declare-fun self@25@00 () $Ref)
(declare-fun result@26@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), set(set_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] set(set_arg(typeof(self), 0))
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@25@00) (set<PyType> (set_arg<PyType> (typeof<PyType> self@25@00) 0))))
(declare-const $k@52@00 $Perm)
(assert ($Perm.isReadVar $k@52@00))
(assert (<= $Perm.No $k@52@00))
(assert (=> (< $Perm.No $k@52@00) (not (= self@25@00 $Ref.null))))
(declare-const $t@53@00 $Snap)
(assert (= $t@53@00 ($Snap.combine ($Snap.first $t@53@00) ($Snap.second $t@53@00))))
(assert (= ($Snap.first $t@53@00) $Snap.unit))
; [eval] |result| == |self.set_acc|
; [eval] |result|
; [eval] |self.set_acc|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@52@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Seq_length result@26@00)
  (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.second s@$)))))
(assert (=
  ($Snap.second $t@53@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@00))
    ($Snap.second ($Snap.second $t@53@00)))))
(assert (= ($Snap.first ($Snap.second $t@53@00)) $Snap.unit))
; [eval] (forall c: Ref :: { (c in result) } (c in self.set_acc) == (c in result))
(declare-const c@54@00 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] (c in self.set_acc) == (c in result)
; [eval] (c in self.set_acc)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@52@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (c in result)
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((c@54@00 $Ref)) (!
  (=
    (Set_in c@54@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.second s@$)))
    (Seq_contains result@26@00 c@54@00))
  :pattern ((Seq_contains result@26@00 c@54@00))
  :pattern ((Seq_contains_trigger result@26@00 c@54@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@531@12@531@83|)))
(assert (=
  ($Snap.second ($Snap.second $t@53@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@53@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@53@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@53@00))) $Snap.unit))
; [eval] (forall i: Int :: { result[i] } i >= 0 && i < |result| ==> !((result[i] in result[..i])))
(declare-const i@55@00 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] i >= 0 && i < |result| ==> !((result[i] in result[..i]))
; [eval] i >= 0 && i < |result|
; [eval] i >= 0
(push) ; 3
; [then-branch: 4 | !(i@55@00 >= 0) | live]
; [else-branch: 4 | i@55@00 >= 0 | live]
(push) ; 4
; [then-branch: 4 | !(i@55@00 >= 0)]
(assert (not (>= i@55@00 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 4 | i@55@00 >= 0]
(assert (>= i@55@00 0))
; [eval] i < |result|
; [eval] |result|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (>= i@55@00 0) (not (>= i@55@00 0))))
(push) ; 3
; [then-branch: 5 | i@55@00 >= 0 && i@55@00 < |result@26@00| | live]
; [else-branch: 5 | !(i@55@00 >= 0 && i@55@00 < |result@26@00|) | live]
(push) ; 4
; [then-branch: 5 | i@55@00 >= 0 && i@55@00 < |result@26@00|]
(assert (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00))))
; [eval] !((result[i] in result[..i]))
; [eval] (result[i] in result[..i])
; [eval] result[..i]
; [eval] result[i]
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(i@55@00 >= 0 && i@55@00 < |result@26@00|)]
(assert (not (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00))))
  (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00)))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@55@00 Int)) (!
  (and
    (or (>= i@55@00 0) (not (>= i@55@00 0)))
    (or
      (not (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00))))
      (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00)))))
  :pattern ((Seq_index result@26@00 i@55@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@532@12@532@99-aux|)))
(assert (forall ((i@55@00 Int)) (!
  (=>
    (and (>= i@55@00 0) (< i@55@00 (Seq_length result@26@00)))
    (not
      (Seq_contains
        (Seq_take result@26@00 i@55@00)
        (Seq_index result@26@00 i@55@00))))
  :pattern ((Seq_index result@26@00 i@55@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@532@12@532@99|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@53@00))) $Snap.unit))
; [eval] (forall r: Ref :: { (r in result) } (r in result) ==> issubtype(typeof(r), set_arg(typeof(self), 0)))
(declare-const r@56@00 $Ref)
(push) ; 2
; [eval] (r in result) ==> issubtype(typeof(r), set_arg(typeof(self), 0))
; [eval] (r in result)
(push) ; 3
; [then-branch: 6 | r@56@00 in result@26@00 | live]
; [else-branch: 6 | !(r@56@00 in result@26@00) | live]
(push) ; 4
; [then-branch: 6 | r@56@00 in result@26@00]
(assert (Seq_contains result@26@00 r@56@00))
; [eval] issubtype(typeof(r), set_arg(typeof(self), 0))
; [eval] typeof(r)
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(pop) ; 4
(push) ; 4
; [else-branch: 6 | !(r@56@00 in result@26@00)]
(assert (not (Seq_contains result@26@00 r@56@00)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains result@26@00 r@56@00))
  (Seq_contains result@26@00 r@56@00)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@56@00 $Ref)) (!
  (or
    (not (Seq_contains result@26@00 r@56@00))
    (Seq_contains result@26@00 r@56@00))
  :pattern ((Seq_contains result@26@00 r@56@00))
  :pattern ((Seq_contains_trigger result@26@00 r@56@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@533@12@533@111-aux|)))
(assert (forall ((r@56@00 $Ref)) (!
  (or
    (not (Seq_contains result@26@00 r@56@00))
    (Seq_contains result@26@00 r@56@00))
  :pattern ((Seq_contains_trigger result@26@00 r@56@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@533@12@533@111-aux|)))
(assert (forall ((r@56@00 $Ref)) (!
  (=>
    (Seq_contains result@26@00 r@56@00)
    (issubtype<Bool> (typeof<PyType> r@56@00) (set_arg<PyType> (typeof<PyType> self@25@00) 0)))
  :pattern ((Seq_contains result@26@00 r@56@00))
  :pattern ((Seq_contains_trigger result@26@00 r@56@00))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsfunctionalverificationexamplestest_student_enroll_preds.py.vpr@533@12@533@111|)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (= (set___sil_seq__%limited s@$ self@25@00) (set___sil_seq__ s@$ self@25@00))
  :pattern ((set___sil_seq__ s@$ self@25@00))
  :qid |quant-u-4314|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (set___sil_seq__%stateless self@25@00)
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4315|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (let ((result@26@00 (set___sil_seq__%limited s@$ self@25@00))) (and
    ($Perm.isReadVar $k@52@00)
    (=>
      (set___sil_seq__%precondition s@$ self@25@00)
      (and
        (=
          (Seq_length result@26@00)
          (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.second s@$))))
        (forall ((c $Ref)) (!
          (=
            (Set_in c ($SortWrappers.$SnapToSet<$Ref> ($Snap.second s@$)))
            (Seq_contains result@26@00 c))
          :pattern ((Seq_contains result@26@00 c))
          :pattern ((Seq_contains_trigger result@26@00 c))
          :pattern ((Seq_contains_trigger result@26@00 c))
          ))
        (forall ((i Int)) (!
          (=>
            (and (>= i 0) (< i (Seq_length result@26@00)))
            (not
              (Seq_contains (Seq_take result@26@00 i) (Seq_index result@26@00 i))))
          :pattern ((Seq_index result@26@00 i))
          ))
        (forall ((r $Ref)) (!
          (=>
            (Seq_contains result@26@00 r)
            (issubtype<Bool> (typeof<PyType> r) (set_arg<PyType> (typeof<PyType> self@25@00) 0)))
          :pattern ((Seq_contains result@26@00 r))
          :pattern ((Seq_contains_trigger result@26@00 r))
          :pattern ((Seq_contains_trigger result@26@00 r))
          ))))))
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4350|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (let ((result@26@00 (set___sil_seq__%limited s@$ self@25@00))) true)
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4351|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (let ((result@26@00 (set___sil_seq__%limited s@$ self@25@00))) true)
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4352|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (let ((result@26@00 (set___sil_seq__%limited s@$ self@25@00))) true)
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4353|)))
(assert (forall ((s@$ $Snap) (self@25@00 $Ref)) (!
  (let ((result@26@00 (set___sil_seq__%limited s@$ self@25@00))) true)
  :pattern ((set___sil_seq__%limited s@$ self@25@00))
  :qid |quant-u-4354|)))
; ---------- FUNCTION __file__----------
(declare-fun result@27@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4316|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4317|)))
; ---------- FUNCTION PSeq___contains__----------
(declare-fun self@28@00 () $Ref)
(declare-fun item@29@00 () $Ref)
(declare-fun result@30@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), PSeq(PSeq_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] PSeq(PSeq_arg(typeof(self), 0))
; [eval] PSeq_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@28@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> self@28@00) 0))))
(declare-const $t@57@00 $Snap)
(assert (= $t@57@00 ($Snap.combine ($Snap.first $t@57@00) ($Snap.second $t@57@00))))
(assert (= ($Snap.first $t@57@00) $Snap.unit))
; [eval] result == (item in PSeq___sil_seq__(self))
; [eval] (item in PSeq___sil_seq__(self))
; [eval] PSeq___sil_seq__(self)
(push) ; 2
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(assert (PSeq___sil_seq__%precondition $Snap.unit self@28@00))
(pop) ; 2
; Joined path conditions
(assert (PSeq___sil_seq__%precondition $Snap.unit self@28@00))
(assert (=
  result@30@00
  (Seq_contains (PSeq___sil_seq__ $Snap.unit self@28@00) item@29@00)))
(assert (= ($Snap.second $t@57@00) $Snap.unit))
; [eval] result ==> issubtype(typeof(item), PSeq_arg(typeof(self), 0))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not result@30@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not result@30@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | result@30@00 | live]
; [else-branch: 7 | !(result@30@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | result@30@00]
(assert result@30@00)
; [eval] issubtype(typeof(item), PSeq_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] PSeq_arg(typeof(self), 0)
; [eval] typeof(self)
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(result@30@00)]
(assert (not result@30@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not result@30@00) result@30@00))
(assert (=>
  result@30@00
  (issubtype<Bool> (typeof<PyType> item@29@00) (PSeq_arg<PyType> (typeof<PyType> self@28@00) 0))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (item@29@00 $Ref)) (!
  (=
    (PSeq___contains__%limited s@$ self@28@00 item@29@00)
    (PSeq___contains__ s@$ self@28@00 item@29@00))
  :pattern ((PSeq___contains__ s@$ self@28@00 item@29@00))
  :qid |quant-u-4318|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (item@29@00 $Ref)) (!
  (PSeq___contains__%stateless self@28@00 item@29@00)
  :pattern ((PSeq___contains__%limited s@$ self@28@00 item@29@00))
  :qid |quant-u-4319|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (item@29@00 $Ref)) (!
  (let ((result@30@00 (PSeq___contains__%limited s@$ self@28@00 item@29@00))) (=>
    (PSeq___contains__%precondition s@$ self@28@00 item@29@00)
    (and
      (=
        result@30@00
        (Seq_contains (PSeq___sil_seq__ $Snap.unit self@28@00) item@29@00))
      (=>
        result@30@00
        (issubtype<Bool> (typeof<PyType> item@29@00) (PSeq_arg<PyType> (typeof<PyType> self@28@00) 0))))))
  :pattern ((PSeq___contains__%limited s@$ self@28@00 item@29@00))
  :qid |quant-u-4355|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (item@29@00 $Ref)) (!
  (let ((result@30@00 (PSeq___contains__%limited s@$ self@28@00 item@29@00))) (=>
    (PSeq___contains__%precondition s@$ self@28@00 item@29@00)
    (PSeq___sil_seq__%precondition $Snap.unit self@28@00)))
  :pattern ((PSeq___contains__%limited s@$ self@28@00 item@29@00))
  :qid |quant-u-4356|)))
(assert (forall ((s@$ $Snap) (self@28@00 $Ref) (item@29@00 $Ref)) (!
  (let ((result@30@00 (PSeq___contains__%limited s@$ self@28@00 item@29@00))) true)
  :pattern ((PSeq___contains__%limited s@$ self@28@00 item@29@00))
  :qid |quant-u-4357|)))
; ---------- FUNCTION bool___unbox__----------
(declare-fun box@31@00 () $Ref)
(declare-fun result@32@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> box@31@00) (as bool<PyType>  PyType)))
(declare-const $t@58@00 $Snap)
(assert (= $t@58@00 $Snap.unit))
; [eval] __prim__bool___box__(result) == box
; [eval] __prim__bool___box__(result)
(push) ; 2
(assert (__prim__bool___box__%precondition $Snap.unit result@32@00))
(pop) ; 2
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit result@32@00))
(assert (= (__prim__bool___box__ $Snap.unit result@32@00) box@31@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@31@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@31@00) (bool___unbox__ s@$ box@31@00))
  :pattern ((bool___unbox__ s@$ box@31@00))
  :qid |quant-u-4320|)))
(assert (forall ((s@$ $Snap) (box@31@00 $Ref)) (!
  (bool___unbox__%stateless box@31@00)
  :pattern ((bool___unbox__%limited s@$ box@31@00))
  :qid |quant-u-4321|)))
(assert (forall ((s@$ $Snap) (box@31@00 $Ref)) (!
  (let ((result@32@00 (bool___unbox__%limited s@$ box@31@00))) (=>
    (bool___unbox__%precondition s@$ box@31@00)
    (= (__prim__bool___box__%limited $Snap.unit result@32@00) box@31@00)))
  :pattern ((bool___unbox__%limited s@$ box@31@00))
  :qid |quant-u-4358|)))
(assert (forall ((s@$ $Snap) (box@31@00 $Ref)) (!
  (let ((result@32@00 (bool___unbox__%limited s@$ box@31@00))) (=>
    (bool___unbox__%precondition s@$ box@31@00)
    (__prim__bool___box__%precondition $Snap.unit result@32@00)))
  :pattern ((bool___unbox__%limited s@$ box@31@00))
  :qid |quant-u-4359|)))
; ---------- FUNCTION __prim__bool___box__----------
(declare-fun prim@33@00 () Bool)
(declare-fun result@34@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@59@00 $Snap)
(assert (= $t@59@00 ($Snap.combine ($Snap.first $t@59@00) ($Snap.second $t@59@00))))
(assert (= ($Snap.first $t@59@00) $Snap.unit))
; [eval] typeof(result) == bool()
; [eval] typeof(result)
; [eval] bool()
(assert (= (typeof<PyType> result@34@00) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second $t@59@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@00))
    ($Snap.second ($Snap.second $t@59@00)))))
(assert (= ($Snap.first ($Snap.second $t@59@00)) $Snap.unit))
; [eval] bool___unbox__(result) == prim
; [eval] bool___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@34@00) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@34@00) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit result@34@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@34@00) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit result@34@00)))
(assert (= (bool___unbox__ $Snap.unit result@34@00) prim@33@00))
(assert (= ($Snap.second ($Snap.second $t@59@00)) $Snap.unit))
; [eval] int___unbox__(result) == (prim ? 1 : 0)
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@34@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@34@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@34@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@34@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@34@00)))
; [eval] (prim ? 1 : 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not prim@33@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not prim@33@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | prim@33@00 | live]
; [else-branch: 8 | !(prim@33@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 8 | prim@33@00]
(assert prim@33@00)
(pop) ; 3
(push) ; 3
; [else-branch: 8 | !(prim@33@00)]
(assert (not prim@33@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not prim@33@00) prim@33@00))
(assert (= (int___unbox__ $Snap.unit result@34@00) (ite prim@33@00 1 0)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@33@00)
    (__prim__bool___box__ s@$ prim@33@00))
  :pattern ((__prim__bool___box__ s@$ prim@33@00))
  :qid |quant-u-4322|)))
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (__prim__bool___box__%stateless prim@33@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@33@00))
  :qid |quant-u-4323|)))
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (let ((result@34@00 (__prim__bool___box__%limited s@$ prim@33@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@33@00)
    (and
      (= (typeof<PyType> result@34@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@34@00) prim@33@00)
      (= (int___unbox__%limited $Snap.unit result@34@00) (ite prim@33@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@33@00))
  :qid |quant-u-4360|)))
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (let ((result@34@00 (__prim__bool___box__%limited s@$ prim@33@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@33@00))
  :qid |quant-u-4361|)))
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (let ((result@34@00 (__prim__bool___box__%limited s@$ prim@33@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@33@00)
    (bool___unbox__%precondition $Snap.unit result@34@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@33@00))
  :qid |quant-u-4362|)))
(assert (forall ((s@$ $Snap) (prim@33@00 Bool)) (!
  (let ((result@34@00 (__prim__bool___box__%limited s@$ prim@33@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@33@00)
    (int___unbox__%precondition $Snap.unit result@34@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@33@00))
  :qid |quant-u-4363|)))
; ---------- FUNCTION int___unbox__----------
(declare-fun box@35@00 () $Ref)
(declare-fun result@36@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> box@35@00) (as int<PyType>  PyType)))
(declare-const $t@60@00 $Snap)
(assert (= $t@60@00 ($Snap.combine ($Snap.first $t@60@00) ($Snap.second $t@60@00))))
(assert (= ($Snap.first $t@60@00) $Snap.unit))
; [eval] !issubtype(typeof(box), bool()) ==> __prim__int___box__(result) == box
; [eval] !issubtype(typeof(box), bool())
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | !(issubtype[Bool](typeof[PyType](box@35@00), bool[PyType])) | live]
; [else-branch: 9 | issubtype[Bool](typeof[PyType](box@35@00), bool[PyType]) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | !(issubtype[Bool](typeof[PyType](box@35@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
; [eval] __prim__int___box__(result) == box
; [eval] __prim__int___box__(result)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit result@36@00))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit result@36@00))
(pop) ; 3
(push) ; 3
; [else-branch: 9 | issubtype[Bool](typeof[PyType](box@35@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
  (and
    (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
    (__prim__int___box__%precondition $Snap.unit result@36@00))))
; Joined path conditions
(assert (or
  (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))))
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
  (= (__prim__int___box__ $Snap.unit result@36@00) box@35@00)))
(assert (= ($Snap.second $t@60@00) $Snap.unit))
; [eval] issubtype(typeof(box), bool()) ==> __prim__bool___box__(result != 0) == box
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | issubtype[Bool](typeof[PyType](box@35@00), bool[PyType]) | live]
; [else-branch: 10 | !(issubtype[Bool](typeof[PyType](box@35@00), bool[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | issubtype[Bool](typeof[PyType](box@35@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
; [eval] __prim__bool___box__(result != 0) == box
; [eval] __prim__bool___box__(result != 0)
; [eval] result != 0
(push) ; 4
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@36@00 0))))
(pop) ; 4
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@36@00 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 10 | !(issubtype[Bool](typeof[PyType](box@35@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@36@00 0))))))
; Joined path conditions
(assert (or
  (not (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))
  (= (__prim__bool___box__ $Snap.unit (not (= result@36@00 0))) box@35@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@35@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@35@00) (int___unbox__ s@$ box@35@00))
  :pattern ((int___unbox__ s@$ box@35@00))
  :qid |quant-u-4324|)))
(assert (forall ((s@$ $Snap) (box@35@00 $Ref)) (!
  (int___unbox__%stateless box@35@00)
  :pattern ((int___unbox__%limited s@$ box@35@00))
  :qid |quant-u-4325|)))
(assert (forall ((s@$ $Snap) (box@35@00 $Ref)) (!
  (let ((result@36@00 (int___unbox__%limited s@$ box@35@00))) (=>
    (int___unbox__%precondition s@$ box@35@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@36@00) box@35@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@36@00 0)))
          box@35@00)))))
  :pattern ((int___unbox__%limited s@$ box@35@00))
  :qid |quant-u-4364|)))
(assert (forall ((s@$ $Snap) (box@35@00 $Ref)) (!
  (let ((result@36@00 (int___unbox__%limited s@$ box@35@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@35@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@36@00)))
  :pattern ((int___unbox__%limited s@$ box@35@00))
  :qid |quant-u-4365|)))
(assert (forall ((s@$ $Snap) (box@35@00 $Ref)) (!
  (let ((result@36@00 (int___unbox__%limited s@$ box@35@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@35@00)
      (issubtype<Bool> (typeof<PyType> box@35@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@36@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@35@00))
  :qid |quant-u-4366|)))
; ---------- FUNCTION __prim__int___box__----------
(declare-fun prim@37@00 () Int)
(declare-fun result@38@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (= ($Snap.first $t@61@00) $Snap.unit))
; [eval] typeof(result) == int()
; [eval] typeof(result)
; [eval] int()
(assert (= (typeof<PyType> result@38@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second $t@61@00) $Snap.unit))
; [eval] int___unbox__(result) == prim
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@38@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@38@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@38@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@38@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@38@00)))
(assert (= (int___unbox__ $Snap.unit result@38@00) prim@37@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@37@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@37@00)
    (__prim__int___box__ s@$ prim@37@00))
  :pattern ((__prim__int___box__ s@$ prim@37@00))
  :qid |quant-u-4326|)))
(assert (forall ((s@$ $Snap) (prim@37@00 Int)) (!
  (__prim__int___box__%stateless prim@37@00)
  :pattern ((__prim__int___box__%limited s@$ prim@37@00))
  :qid |quant-u-4327|)))
(assert (forall ((s@$ $Snap) (prim@37@00 Int)) (!
  (let ((result@38@00 (__prim__int___box__%limited s@$ prim@37@00))) (=>
    (__prim__int___box__%precondition s@$ prim@37@00)
    (and
      (= (typeof<PyType> result@38@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@38@00) prim@37@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@37@00))
  :qid |quant-u-4367|)))
(assert (forall ((s@$ $Snap) (prim@37@00 Int)) (!
  (let ((result@38@00 (__prim__int___box__%limited s@$ prim@37@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@37@00))
  :qid |quant-u-4368|)))
(assert (forall ((s@$ $Snap) (prim@37@00 Int)) (!
  (let ((result@38@00 (__prim__int___box__%limited s@$ prim@37@00))) (=>
    (__prim__int___box__%precondition s@$ prim@37@00)
    (int___unbox__%precondition $Snap.unit result@38@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@37@00))
  :qid |quant-u-4369|)))
; ---------- FUNCTION _checkDefined----------
(declare-fun val@39@00 () $Ref)
(declare-fun id@40@00 () Int)
(declare-fun result@41@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] _isDefined(id)
(push) ; 2
(assert (_isDefined%precondition $Snap.unit id@40@00))
(pop) ; 2
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit id@40@00))
(assert (_isDefined $Snap.unit id@40@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@39@00 $Ref) (id@40@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@39@00 id@40@00)
    (_checkDefined s@$ val@39@00 id@40@00))
  :pattern ((_checkDefined s@$ val@39@00 id@40@00))
  :qid |quant-u-4328|)))
(assert (forall ((s@$ $Snap) (val@39@00 $Ref) (id@40@00 Int)) (!
  (_checkDefined%stateless val@39@00 id@40@00)
  :pattern ((_checkDefined%limited s@$ val@39@00 id@40@00))
  :qid |quant-u-4329|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (_isDefined%precondition $Snap.unit id@40@00))
(assert (_isDefined $Snap.unit id@40@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@41@00 val@39@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@39@00 $Ref) (id@40@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@39@00 id@40@00)
    (= (_checkDefined s@$ val@39@00 id@40@00) val@39@00))
  :pattern ((_checkDefined s@$ val@39@00 id@40@00))
  :qid |quant-u-4370|)))
(assert (forall ((s@$ $Snap) (val@39@00 $Ref) (id@40@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@39@00 id@40@00))
  :qid |quant-u-4371|)))
; ---------- FUNCTION list___contains__----------
(declare-fun self@42@00 () $Ref)
(declare-fun item@43@00 () $Ref)
(declare-fun result@44@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@42@00) (list<PyType> (list_arg<PyType> (typeof<PyType> self@42@00) 0))))
(declare-const $k@62@00 $Perm)
(assert ($Perm.isReadVar $k@62@00))
(assert (<= $Perm.No $k@62@00))
(assert (=> (< $Perm.No $k@62@00) (not (= self@42@00 $Ref.null))))
(declare-const $t@63@00 $Snap)
(assert (= $t@63@00 $Snap.unit))
; [eval] result == (item in self.list_acc)
; [eval] (item in self.list_acc)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@62@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  result@44@00
  (Seq_contains ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$)) item@43@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@42@00 $Ref) (item@43@00 $Ref)) (!
  (=
    (list___contains__%limited s@$ self@42@00 item@43@00)
    (list___contains__ s@$ self@42@00 item@43@00))
  :pattern ((list___contains__ s@$ self@42@00 item@43@00))
  :qid |quant-u-4330|)))
(assert (forall ((s@$ $Snap) (self@42@00 $Ref) (item@43@00 $Ref)) (!
  (list___contains__%stateless self@42@00 item@43@00)
  :pattern ((list___contains__%limited s@$ self@42@00 item@43@00))
  :qid |quant-u-4331|)))
(assert (forall ((s@$ $Snap) (self@42@00 $Ref) (item@43@00 $Ref)) (!
  (let ((result@44@00 (list___contains__%limited s@$ self@42@00 item@43@00))) (and
    ($Perm.isReadVar $k@62@00)
    (=>
      (list___contains__%precondition s@$ self@42@00 item@43@00)
      (=
        result@44@00
        (Seq_contains
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$))
          item@43@00)))))
  :pattern ((list___contains__%limited s@$ self@42@00 item@43@00))
  :qid |quant-u-4372|)))
(assert (forall ((s@$ $Snap) (self@42@00 $Ref) (item@43@00 $Ref)) (!
  (let ((result@44@00 (list___contains__%limited s@$ self@42@00 item@43@00))) true)
  :pattern ((list___contains__%limited s@$ self@42@00 item@43@00))
  :qid |quant-u-4373|)))
; ---------- FUNCTION __name__----------
(declare-fun result@45@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4332|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4333|)))
; ---------- MustTerminate ----------
(declare-const r@64@00 $Ref)
; ---------- MustInvokeBounded ----------
(declare-const r@65@00 $Ref)
; ---------- MustInvokeUnbounded ----------
(declare-const r@66@00 $Ref)
; ---------- _MaySet ----------
(declare-const rec@67@00 $Ref)
(declare-const id@68@00 Int)
; ---------- Student_enrolled ----------
(declare-const self_1@69@00 $Ref)
(declare-const course_name_0@70@00 $Ref)
(push) ; 1
(declare-const $t@71@00 $Snap)
(assert (= $t@71@00 ($Snap.combine ($Snap.first $t@71@00) ($Snap.second $t@71@00))))
(assert (= ($Snap.first $t@71@00) $Snap.unit))
(assert (=
  ($Snap.second $t@71@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@71@00))
    ($Snap.second ($Snap.second $t@71@00)))))
(assert (= ($Snap.first ($Snap.second $t@71@00)) $Snap.unit))
; [eval] issubtype(typeof(self_1), Student())
; [eval] typeof(self_1)
; [eval] Student()
(assert (issubtype<Bool> (typeof<PyType> self_1@69@00) (as Student<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@71@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@71@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@71@00))) $Snap.unit))
; [eval] issubtype(typeof(course_name_0), str())
; [eval] typeof(course_name_0)
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> course_name_0@70@00) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@71@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))
; [eval] issubtype(typeof(self_1), Student())
; [eval] typeof(self_1)
; [eval] Student()
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_1@69@00) (as Student<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | issubtype[Bool](typeof[PyType](self_1@69@00), Student[PyType]) | live]
; [else-branch: 11 | !(issubtype[Bool](typeof[PyType](self_1@69@00), Student[PyType])) | dead]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 11 | issubtype[Bool](typeof[PyType](self_1@69@00), Student[PyType])]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))))
(assert (not (= self_1@69@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.Student_courses), list(str()))
; [eval] typeof(self_1.Student_courses)
; [eval] list(str())
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) (list<PyType> (as str<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))
  $Snap.unit))
; [eval] list___contains__(self_1.Student_courses, course_name_0)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) (list<PyType> (list_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) 0)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) (list<PyType> (list_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) 0))))
(declare-const $k@72@00 $Perm)
(assert ($Perm.isReadVar $k@72@00))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@72@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (list___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))) course_name_0@70@00))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@72@00))
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) (list<PyType> (list_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) 0)))
  (list___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))) course_name_0@70@00)))
(assert (list___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))) course_name_0@70@00))
; [eval] issubtype(typeof(self_1), GradStudent())
; [eval] typeof(self_1)
; [eval] GradStudent()
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_1@69@00) (as GradStudent<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> self_1@69@00) (as GradStudent<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | issubtype[Bool](typeof[PyType](self_1@69@00), GradStudent[PyType]) | live]
; [else-branch: 12 | !(issubtype[Bool](typeof[PyType](self_1@69@00), GradStudent[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | issubtype[Bool](typeof[PyType](self_1@69@00), GradStudent[PyType])]
(assert (issubtype<Bool> (typeof<PyType> self_1@69@00) (as GradStudent<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.GradStudent_research_only), bool())
; [eval] typeof(self_1.GradStudent_research_only)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))
  $Snap.unit))
; [eval] !bool___unbox__(self_1.GradStudent_research_only)
; [eval] bool___unbox__(self_1.GradStudent_research_only)
(push) ; 4
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))))
(pop) ; 4
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))))))
(assert (not
  (bool___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00)))))))))
(pop) ; 3
(push) ; 3
; [else-branch: 12 | !(issubtype[Bool](typeof[PyType](self_1@69@00), GradStudent[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> self_1@69@00) (as GradStudent<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@71@00))))
  $Snap.unit))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Student_undecided ----------
(declare-const self_2@73@00 $Ref)
(push) ; 1
(declare-const $t@74@00 $Snap)
(assert (= $t@74@00 ($Snap.combine ($Snap.first $t@74@00) ($Snap.second $t@74@00))))
(assert (= ($Snap.first $t@74@00) $Snap.unit))
(assert (=
  ($Snap.second $t@74@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@00))
    ($Snap.second ($Snap.second $t@74@00)))))
(assert (= ($Snap.first ($Snap.second $t@74@00)) $Snap.unit))
; [eval] issubtype(typeof(self_2), Student())
; [eval] typeof(self_2)
; [eval] Student()
(assert (issubtype<Bool> (typeof<PyType> self_2@73@00) (as Student<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@74@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@74@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@74@00))))))
; [eval] issubtype(typeof(self_2), Student())
; [eval] typeof(self_2)
; [eval] Student()
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_2@73@00) (as Student<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | issubtype[Bool](typeof[PyType](self_2@73@00), Student[PyType]) | live]
; [else-branch: 13 | !(issubtype[Bool](typeof[PyType](self_2@73@00), Student[PyType])) | dead]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 13 | issubtype[Bool](typeof[PyType](self_2@73@00), Student[PyType])]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@74@00)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@74@00))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@74@00)))))))
(assert (not (= self_2@73@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@74@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@74@00)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@74@00))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@74@00)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Student_courses), list(str()))
; [eval] typeof(self_2.Student_courses)
; [eval] list(str())
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@74@00)))))) (list<PyType> (as str<PyType>  PyType))))
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@74@00)))))
    $Ref.null)))
; [eval] issubtype(typeof(self_2), GradStudent())
; [eval] typeof(self_2)
; [eval] GradStudent()
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_2@73@00) (as GradStudent<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> self_2@73@00) (as GradStudent<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | issubtype[Bool](typeof[PyType](self_2@73@00), GradStudent[PyType]) | live]
; [else-branch: 14 | !(issubtype[Bool](typeof[PyType](self_2@73@00), GradStudent[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | issubtype[Bool](typeof[PyType](self_2@73@00), GradStudent[PyType])]
(assert (issubtype<Bool> (typeof<PyType> self_2@73@00) (as GradStudent<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@74@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.GradStudent_research_only), bool())
; [eval] typeof(self_2.GradStudent_research_only)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))
  $Snap.unit))
; [eval] bool___unbox__(self_2.GradStudent_research_only)
(push) ; 4
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))))
(pop) ; 4
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))))
(assert (bool___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@00)))))))
(pop) ; 3
(push) ; 3
; [else-branch: 14 | !(issubtype[Bool](typeof[PyType](self_2@73@00), GradStudent[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> self_2@73@00) (as GradStudent<PyType>  PyType))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@74@00))) $Snap.unit))
(pop) ; 3
(pop) ; 2
(pop) ; 1
