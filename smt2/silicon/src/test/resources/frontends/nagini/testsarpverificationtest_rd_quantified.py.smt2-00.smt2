(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:30:09
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
(declare-sort ARP_field_functions 0)
(declare-sort ARPLog 0)
(declare-sort ThreadingID 0)
(declare-sort _Name 0)
(declare-sort Measure$ 0)
(declare-sort $FVF<Clazz_x> 0)
(declare-sort $FVF<Clazz_seq> 0)
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
(declare-fun $SortWrappers.ARP_field_functionsTo$Snap (ARP_field_functions) $Snap)
(declare-fun $SortWrappers.$SnapToARP_field_functions ($Snap) ARP_field_functions)
(assert (forall ((x ARP_field_functions)) (!
    (= x ($SortWrappers.$SnapToARP_field_functions($SortWrappers.ARP_field_functionsTo$Snap x)))
    :pattern (($SortWrappers.ARP_field_functionsTo$Snap x))
    :qid |$Snap.$SnapToARP_field_functionsTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ARP_field_functionsTo$Snap($SortWrappers.$SnapToARP_field_functions x)))
    :pattern (($SortWrappers.$SnapToARP_field_functions x))
    :qid |$Snap.ARP_field_functionsTo$SnapToARP_field_functions|
    )))
(declare-fun $SortWrappers.ARPLogTo$Snap (ARPLog) $Snap)
(declare-fun $SortWrappers.$SnapToARPLog ($Snap) ARPLog)
(assert (forall ((x ARPLog)) (!
    (= x ($SortWrappers.$SnapToARPLog($SortWrappers.ARPLogTo$Snap x)))
    :pattern (($SortWrappers.ARPLogTo$Snap x))
    :qid |$Snap.$SnapToARPLogTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ARPLogTo$Snap($SortWrappers.$SnapToARPLog x)))
    :pattern (($SortWrappers.$SnapToARPLog x))
    :qid |$Snap.ARPLogTo$SnapToARPLog|
    )))
(declare-fun $SortWrappers.ThreadingIDTo$Snap (ThreadingID) $Snap)
(declare-fun $SortWrappers.$SnapToThreadingID ($Snap) ThreadingID)
(assert (forall ((x ThreadingID)) (!
    (= x ($SortWrappers.$SnapToThreadingID($SortWrappers.ThreadingIDTo$Snap x)))
    :pattern (($SortWrappers.ThreadingIDTo$Snap x))
    :qid |$Snap.$SnapToThreadingIDTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ThreadingIDTo$Snap($SortWrappers.$SnapToThreadingID x)))
    :pattern (($SortWrappers.$SnapToThreadingID x))
    :qid |$Snap.ThreadingIDTo$SnapToThreadingID|
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
(declare-fun $SortWrappers.$FVF<Clazz_x>To$Snap ($FVF<Clazz_x>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap) $FVF<Clazz_x>)
(assert (forall ((x $FVF<Clazz_x>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Clazz_x>($SortWrappers.$FVF<Clazz_x>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Clazz_x>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Clazz_x>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Clazz_x>To$Snap($SortWrappers.$SnapTo$FVF<Clazz_x> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Clazz_x> x))
    :qid |$Snap.$FVF<Clazz_x>To$SnapTo$FVF<Clazz_x>|
    )))
(declare-fun $SortWrappers.$FVF<Clazz_seq>To$Snap ($FVF<Clazz_seq>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Clazz_seq> ($Snap) $FVF<Clazz_seq>)
(assert (forall ((x $FVF<Clazz_seq>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Clazz_seq>($SortWrappers.$FVF<Clazz_seq>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Clazz_seq>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Clazz_seq>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Clazz_seq>To$Snap($SortWrappers.$SnapTo$FVF<Clazz_seq> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Clazz_seq> x))
    :qid |$Snap.$FVF<Clazz_seq>To$SnapTo$FVF<Clazz_seq>|
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
(declare-const ARPLog_Nil<ARPLog> ARPLog)
(declare-fun ARPLog_Cons<ARPLog> ($Ref Int $Perm Int ARPLog) ARPLog)
(declare-fun ARPLog_head_ref_Cons<Ref> (ARPLog) $Ref)
(declare-fun ARPLog_head_fieldId_Cons<Int> (ARPLog) Int)
(declare-fun ARPLog_head_permission_Cons<Perm> (ARPLog) $Perm)
(declare-fun ARPLog_head_level_Cons<Int> (ARPLog) Int)
(declare-fun ARPLog_tail_Cons<ARPLog> (ARPLog) ARPLog)
(declare-fun ARPLog_type<Int> (ARPLog) Int)
(declare-const ARPLog_type_Nil<Int> Int)
(declare-const ARPLog_type_Cons<Int> Int)
(declare-fun ARPLog_is_Nil<Bool> (ARPLog) Bool)
(declare-fun ARPLog_is_Cons<Bool> (ARPLog) Bool)
(declare-fun ARPLog_max_level<Int> (ARPLog) Int)
(declare-fun ARPLog_sum_gt<Perm> ($Ref Int Int ARPLog) $Perm)
(declare-fun ARPLog_sum<Perm> ($Ref Int Int ARPLog) $Perm)
(declare-const field__val<Int> Int)
(declare-const field___container<Int> Int)
(declare-const field___iter_index<Int> Int)
(declare-const field___previous<Int> Int)
(declare-const field_list_acc<Int> Int)
(declare-const field_set_acc<Int> Int)
(declare-const field_dict_acc<Int> Int)
(declare-const field_dict_acc2<Int> Int)
(declare-const field_Measure$acc<Int> Int)
(declare-const field_Clazz_x<Int> Int)
(declare-const field_Clazz_y<Int> Int)
(declare-const field_Clazz_seq<Int> Int)
(declare-fun predicate__thread_start<Int> ($Ref) Int)
(declare-fun predicate__thread_post<Int> ($Ref) Int)
(declare-fun predicate__MaySet<Int> ($Ref Int) Int)
(declare-const __init___threading<ThreadingID> ThreadingID)
(declare-const append_threading<ThreadingID> ThreadingID)
(declare-const extend_threading<ThreadingID> ThreadingID)
(declare-const reverse_threading<ThreadingID> ThreadingID)
(declare-const __setitem___threading<ThreadingID> ThreadingID)
(declare-const __iter___threading<ThreadingID> ThreadingID)
(declare-const __getitem_slice___threading<ThreadingID> ThreadingID)
(declare-const __add___threading<ThreadingID> ThreadingID)
(declare-const __mul___threading<ThreadingID> ThreadingID)
(declare-const __init___threading_0<ThreadingID> ThreadingID)
(declare-const add_threading<ThreadingID> ThreadingID)
(declare-const remove_threading<ThreadingID> ThreadingID)
(declare-const clear_threading<ThreadingID> ThreadingID)
(declare-const __iter___threading_0<ThreadingID> ThreadingID)
(declare-const __init___threading_1<ThreadingID> ThreadingID)
(declare-const keys_threading<ThreadingID> ThreadingID)
(declare-const __setitem___threading_0<ThreadingID> ThreadingID)
(declare-const __iter___threading_1<ThreadingID> ThreadingID)
(declare-const values_threading<ThreadingID> ThreadingID)
(declare-const split_threading<ThreadingID> ThreadingID)
(declare-const __iter___threading_2<ThreadingID> ThreadingID)
(declare-const __next___threading<ThreadingID> ThreadingID)
(declare-const __del___threading<ThreadingID> ThreadingID)
(declare-const __init___threading_2<ThreadingID> ThreadingID)
(declare-const m1_threading<ThreadingID> ThreadingID)
(declare-const m1_1_threading<ThreadingID> ThreadingID)
(declare-const m2_threading<ThreadingID> ThreadingID)
(declare-const m2_1_threading<ThreadingID> ThreadingID)
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
(declare-const Place<PyType> PyType)
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
(declare-const __prim__Seq_type<PyType> PyType)
(declare-const Clazz<PyType> PyType)
(declare-fun _combine<_Name> (_Name _Name) _Name)
(declare-fun _single<_Name> (Int) _Name)
(declare-fun _get_combined_prefix<_Name> (_Name) _Name)
(declare-fun _get_combined_name<_Name> (_Name) _Name)
(declare-fun _get_value<Int> (_Name) Int)
(declare-fun _is_single<Bool> (_Name) Bool)
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
; /field_value_functions_declarations.smt2 [Clazz_x: Ref]
(declare-fun $FVF.domain_Clazz_x ($FVF<Clazz_x>) Set<$Ref>)
(declare-fun $FVF.lookup_Clazz_x ($FVF<Clazz_x> $Ref) $Ref)
(declare-fun $FVF.after_Clazz_x ($FVF<Clazz_x> $FVF<Clazz_x>) Bool)
(declare-fun $FVF.loc_Clazz_x ($Ref $Ref) Bool)
(declare-fun $FVF.perm_Clazz_x ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Clazz_x $FVF<Clazz_x>)
; /field_value_functions_declarations.smt2 [Clazz_seq: Ref]
(declare-fun $FVF.domain_Clazz_seq ($FVF<Clazz_seq>) Set<$Ref>)
(declare-fun $FVF.lookup_Clazz_seq ($FVF<Clazz_seq> $Ref) $Ref)
(declare-fun $FVF.after_Clazz_seq ($FVF<Clazz_seq> $FVF<Clazz_seq>) Bool)
(declare-fun $FVF.loc_Clazz_seq ($Ref $Ref) Bool)
(declare-fun $FVF.perm_Clazz_seq ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Clazz_seq $FVF<Clazz_seq>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
(declare-fun PSeq___sil_seq__ ($Snap $Ref) Seq<$Ref>)
(declare-fun PSeq___sil_seq__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun PSeq___sil_seq__%stateless ($Ref) Bool)
(declare-fun PSeq___sil_seq__%precondition ($Snap $Ref) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun object___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun object___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun object___eq__%stateless ($Ref $Ref) Bool)
(declare-fun object___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun rd_token ($Snap $Ref) $Perm)
(declare-fun rd_token%limited ($Snap $Ref) $Perm)
(declare-fun rd_token%stateless ($Ref) Bool)
(declare-fun rd_token%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun _asserting ($Snap $Ref Bool) $Ref)
(declare-fun _asserting%limited ($Snap $Ref Bool) $Ref)
(declare-fun _asserting%stateless ($Ref Bool) Bool)
(declare-fun _asserting%precondition ($Snap $Ref Bool) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun rdw ($Snap) $Perm)
(declare-fun rdw%limited ($Snap) $Perm)
(declare-const rdw%stateless Bool)
(declare-fun rdw%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun rd ($Snap) $Perm)
(declare-fun rd%limited ($Snap) $Perm)
(declare-const rd%stateless Bool)
(declare-fun rd%precondition ($Snap) Bool)
(declare-fun PSeq___create__ ($Snap Seq<$Ref> PyType) $Ref)
(declare-fun PSeq___create__%limited ($Snap Seq<$Ref> PyType) $Ref)
(declare-fun PSeq___create__%stateless (Seq<$Ref> PyType) Bool)
(declare-fun PSeq___create__%precondition ($Snap Seq<$Ref> PyType) Bool)
(declare-fun _joinable ($Snap $Ref) Bool)
(declare-fun _joinable%limited ($Snap $Ref) Bool)
(declare-fun _joinable%stateless ($Ref) Bool)
(declare-fun _joinable%precondition ($Snap $Ref) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
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
(declare-fun _int_to_bool ($Snap Int) Bool)
(declare-fun _int_to_bool%limited ($Snap Int) Bool)
(declare-fun _int_to_bool%stateless (Int) Bool)
(declare-fun _int_to_bool%precondition ($Snap Int) Bool)
(declare-fun epsilonRd ($Snap) $Perm)
(declare-fun epsilonRd%limited ($Snap) $Perm)
(declare-const epsilonRd%stateless Bool)
(declare-fun epsilonRd%precondition ($Snap) Bool)
(declare-fun globalRd ($Snap) $Perm)
(declare-fun globalRd%limited ($Snap) $Perm)
(declare-const globalRd%stateless Bool)
(declare-fun globalRd%precondition ($Snap) Bool)
(declare-fun __name__ ($Snap) $Ref)
(declare-fun __name__%limited ($Snap) $Ref)
(declare-const __name__%stateless Bool)
(declare-fun __name__%precondition ($Snap) Bool)
(declare-fun rdc ($Snap Int) $Perm)
(declare-fun rdc%limited ($Snap Int) $Perm)
(declare-fun rdc%stateless (Int) Bool)
(declare-fun rdc%precondition ($Snap Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun MustTerminate%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeCredit%trigger ($Snap $Ref) Bool)
(declare-fun _thread_start%trigger ($Snap $Ref) Bool)
(declare-fun _thread_post%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct ARPLog_type_Cons<Int> field___previous<Int> field_Clazz_x<Int> field_Measure$acc<Int> field_dict_acc<Int> field_Clazz_y<Int> ARPLog_type_Nil<Int> field_Clazz_seq<Int> field_list_acc<Int> field_set_acc<Int> field___iter_index<Int> field__val<Int> field___container<Int> field_dict_acc2<Int>))
(assert (distinct append_threading<ThreadingID> __iter___threading<ThreadingID> __add___threading<ThreadingID> __init___threading_2<ThreadingID> remove_threading<ThreadingID> __init___threading_1<ThreadingID> keys_threading<ThreadingID> __init___threading<ThreadingID> __getitem_slice___threading<ThreadingID> extend_threading<ThreadingID> __iter___threading_1<ThreadingID> __setitem___threading<ThreadingID> __init___threading_0<ThreadingID> __iter___threading_0<ThreadingID> clear_threading<ThreadingID> values_threading<ThreadingID> __iter___threading_2<ThreadingID> add_threading<ThreadingID> m2_threading<ThreadingID> __mul___threading<ThreadingID> m2_1_threading<ThreadingID> __del___threading<ThreadingID> m1_1_threading<ThreadingID> __next___threading<ThreadingID> m1_threading<ThreadingID> reverse_threading<ThreadingID> split_threading<ThreadingID> __setitem___threading_0<ThreadingID>))
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> Clazz<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
(assert (forall ((arp_quant_head_ref $Ref) (arp_quant_head_fieldId Int) (arp_quant_head_permission $Perm) (arp_quant_head_level Int) (arp_quant_tail ARPLog)) (!
  (and
    (=
      (ARPLog_head_ref_Cons<Ref> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
      arp_quant_head_ref)
    (and
      (=
        (ARPLog_head_fieldId_Cons<Int> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
        arp_quant_head_fieldId)
      (and
        (=
          (ARPLog_head_permission_Cons<Perm> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
          arp_quant_head_permission)
        (and
          (=
            (ARPLog_head_level_Cons<Int> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
            arp_quant_head_level)
          (=
            (ARPLog_tail_Cons<ARPLog> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
            arp_quant_tail)))))
  :pattern ((ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
  :qid |prog.ARPLog_destruct_over_construct_Cons|)))
(assert (forall ((arp_quant_log ARPLog)) (!
  (=>
    (ARPLog_is_Cons<Bool> arp_quant_log)
    (=
      arp_quant_log
      (ARPLog_Cons<ARPLog> (ARPLog_head_ref_Cons<Ref> arp_quant_log) (ARPLog_head_fieldId_Cons<Int> arp_quant_log) (ARPLog_head_permission_Cons<Perm> arp_quant_log) (ARPLog_head_level_Cons<Int> arp_quant_log) (ARPLog_tail_Cons<ARPLog> arp_quant_log))))
  :pattern ((ARPLog_head_ref_Cons<Ref> arp_quant_log))
  :pattern ((ARPLog_head_fieldId_Cons<Int> arp_quant_log))
  :pattern ((ARPLog_head_permission_Cons<Perm> arp_quant_log))
  :pattern ((ARPLog_head_level_Cons<Int> arp_quant_log))
  :pattern ((ARPLog_tail_Cons<ARPLog> arp_quant_log))
  :qid |prog.ARPLog_construct_over_destruct_Cons|)))
(assert (=
  (ARPLog_type<Int> (as ARPLog_Nil<ARPLog>  ARPLog))
  (as ARPLog_type_Nil<Int>  Int)))
(assert (forall ((arp_quant_head_ref $Ref) (arp_quant_head_fieldId Int) (arp_quant_head_permission $Perm) (arp_quant_head_level Int) (arp_quant_tail ARPLog)) (!
  (=
    (ARPLog_type<Int> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail))
    (as ARPLog_type_Cons<Int>  Int))
  :pattern ((ARPLog_type<Int> (ARPLog_Cons<ARPLog> arp_quant_head_ref arp_quant_head_fieldId arp_quant_head_permission arp_quant_head_level arp_quant_tail)))
  :qid |prog.ARPLog_type_of_Cons|)))
(assert (forall ((arp_quant_log ARPLog)) (!
  (or
    (= (ARPLog_type<Int> arp_quant_log) (as ARPLog_type_Nil<Int>  Int))
    (= (ARPLog_type<Int> arp_quant_log) (as ARPLog_type_Cons<Int>  Int)))
  :pattern ((ARPLog_is_Nil<Bool> arp_quant_log))
  :pattern ((ARPLog_is_Cons<Bool> arp_quant_log))
  :pattern ((ARPLog_type<Int> arp_quant_log))
  :qid |prog.ARPLog_type_existence|)))
(assert (forall ((arp_quant_log ARPLog)) (!
  (=
    (= (ARPLog_type<Int> arp_quant_log) (as ARPLog_type_Nil<Int>  Int))
    (ARPLog_is_Nil<Bool> arp_quant_log))
  :pattern ((ARPLog_is_Nil<Bool> arp_quant_log))
  :pattern ((ARPLog_type<Int> arp_quant_log))
  :qid |prog.ARPLog_type_is_Nil|)))
(assert (forall ((arp_quant_log ARPLog)) (!
  (=
    (= (ARPLog_type<Int> arp_quant_log) (as ARPLog_type_Cons<Int>  Int))
    (ARPLog_is_Cons<Bool> arp_quant_log))
  :pattern ((ARPLog_is_Cons<Bool> arp_quant_log))
  :pattern ((ARPLog_type<Int> arp_quant_log))
  :qid |prog.ARPLog_type_is_Cons|)))
(assert (forall ((arp_quant_log ARPLog)) (!
  (= (ARPLog_max_level<Int> arp_quant_log) 6)
  :pattern ((ARPLog_max_level<Int> arp_quant_log))
  :qid |prog.ARPLog_log_max_level|)))
(assert (forall ((arp_quant_ref $Ref) (arp_quant_fieldId Int) (arp_quant_level Int) (arp_quant_log ARPLog)) (!
  (and
    (=>
      (>= arp_quant_level (ARPLog_max_level<Int> arp_quant_log))
      (=
        (ARPLog_sum_gt<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log)
        $Perm.No))
    (=>
      (< arp_quant_level (ARPLog_max_level<Int> arp_quant_log))
      (=
        (ARPLog_sum_gt<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log)
        (+
          (ARPLog_sum_gt<Perm> arp_quant_ref arp_quant_fieldId (+
            arp_quant_level
            1) arp_quant_log)
          (ARPLog_sum<Perm> arp_quant_ref arp_quant_fieldId (+ arp_quant_level 1) arp_quant_log)))))
  :pattern ((ARPLog_sum_gt<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log))
  :qid |prog.ARPLog_sum_gt_of_log|)))
(assert (forall ((arp_quant_ref $Ref) (arp_quant_fieldId Int) (arp_quant_level Int) (arp_quant_log ARPLog)) (!
  (and
    (=>
      (ARPLog_is_Nil<Bool> arp_quant_log)
      (=
        (ARPLog_sum<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log)
        $Perm.No))
    (=>
      (ARPLog_is_Cons<Bool> arp_quant_log)
      (=
        (ARPLog_sum<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log)
        (+
          (ARPLog_sum<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level (ARPLog_tail_Cons<ARPLog> arp_quant_log))
          (ite
            (and
              (= (ARPLog_head_ref_Cons<Ref> arp_quant_log) arp_quant_ref)
              (and
                (=
                  (ARPLog_head_fieldId_Cons<Int> arp_quant_log)
                  arp_quant_fieldId)
                (= (ARPLog_head_level_Cons<Int> arp_quant_log) arp_quant_level)))
            (ARPLog_head_permission_Cons<Perm> arp_quant_log)
            $Perm.No)))))
  :pattern ((ARPLog_sum<Perm> arp_quant_ref arp_quant_fieldId arp_quant_level arp_quant_log))
  :qid |prog.ARPLog_sum_of_log|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field__val<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start__val|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field___container<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start___container|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field___iter_index<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start___iter_index|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field___previous<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start___previous|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_list_acc<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_list_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_set_acc<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_set_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_dict_acc<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_dict_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_dict_acc2<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_dict_acc2|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_Measure$acc<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_Measure$acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_Clazz_x<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_Clazz_x|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_Clazz_y<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_Clazz_y|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (as field_Clazz_seq<Int>  Int)))
  :pattern ((predicate__thread_start<Int> t))
  :qid |prog.ARP__thread_start_Clazz_seq|)))
(assert (forall ((t $Ref) (t_1 $Ref)) (!
  (not (= (predicate__thread_start<Int> t) (predicate__thread_post<Int> t_1)))
  :pattern ((predicate__thread_start<Int> t) (predicate__thread_post<Int> t_1))
  :qid |prog.ARP__thread_start__thread_post|)))
(assert (forall ((t $Ref) (rec_0 $Ref) (id_0 Int)) (!
  (not (= (predicate__thread_start<Int> t) (predicate__MaySet<Int> rec_0 id_0)))
  :pattern ((predicate__thread_start<Int> t) (predicate__MaySet<Int> rec_0 id_0))
  :qid |prog.ARP__thread_start__MaySet|)))
(assert (forall ((t $Ref) (t_0 $Ref)) (!
  (=>
    (= (predicate__thread_start<Int> t) (predicate__thread_start<Int> t_0))
    (= t t_0))
  :pattern ((predicate__thread_start<Int> t) (predicate__thread_start<Int> t_0))
  :qid |prog.ARP__thread_start|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field__val<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post__val|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field___container<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post___container|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field___iter_index<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post___iter_index|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field___previous<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post___previous|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_list_acc<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_list_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_set_acc<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_set_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_dict_acc<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_dict_acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_dict_acc2<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_dict_acc2|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_Measure$acc<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_Measure$acc|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_Clazz_x<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_Clazz_x|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_Clazz_y<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_Clazz_y|)))
(assert (forall ((t $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (as field_Clazz_seq<Int>  Int)))
  :pattern ((predicate__thread_post<Int> t))
  :qid |prog.ARP__thread_post_Clazz_seq|)))
(assert (forall ((t $Ref) (t_3 $Ref)) (!
  (not (= (predicate__thread_post<Int> t) (predicate__thread_start<Int> t_3)))
  :pattern ((predicate__thread_post<Int> t) (predicate__thread_start<Int> t_3))
  :qid |prog.ARP__thread_post__thread_start|)))
(assert (forall ((t $Ref) (rec_1 $Ref) (id_1 Int)) (!
  (not (= (predicate__thread_post<Int> t) (predicate__MaySet<Int> rec_1 id_1)))
  :pattern ((predicate__thread_post<Int> t) (predicate__MaySet<Int> rec_1 id_1))
  :qid |prog.ARP__thread_post__MaySet|)))
(assert (forall ((t $Ref) (t_2 $Ref)) (!
  (=>
    (= (predicate__thread_post<Int> t) (predicate__thread_post<Int> t_2))
    (= t t_2))
  :pattern ((predicate__thread_post<Int> t) (predicate__thread_post<Int> t_2))
  :qid |prog.ARP__thread_post|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field__val<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet__val|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field___container<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet___container|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field___iter_index<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet___iter_index|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field___previous<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet___previous|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_list_acc<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_list_acc|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_set_acc<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_set_acc|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_dict_acc<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_dict_acc|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_dict_acc2<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_dict_acc2|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_Measure$acc<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_Measure$acc|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_Clazz_x<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_Clazz_x|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_Clazz_y<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_Clazz_y|)))
(assert (forall ((rec $Ref) (id Int)) (!
  (not (= (predicate__MaySet<Int> rec id) (as field_Clazz_seq<Int>  Int)))
  :pattern ((predicate__MaySet<Int> rec id))
  :qid |prog.ARP__MaySet_Clazz_seq|)))
(assert (forall ((rec $Ref) (id Int) (t_4 $Ref)) (!
  (not (= (predicate__MaySet<Int> rec id) (predicate__thread_start<Int> t_4)))
  :pattern ((predicate__MaySet<Int> rec id) (predicate__thread_start<Int> t_4))
  :qid |prog.ARP__MaySet__thread_start|)))
(assert (forall ((rec $Ref) (id Int) (t_5 $Ref)) (!
  (not (= (predicate__MaySet<Int> rec id) (predicate__thread_post<Int> t_5)))
  :pattern ((predicate__MaySet<Int> rec id) (predicate__thread_post<Int> t_5))
  :qid |prog.ARP__MaySet__thread_post|)))
(assert (forall ((rec $Ref) (id Int) (rec_2 $Ref) (id_2 Int)) (!
  (=>
    (= (predicate__MaySet<Int> rec id) (predicate__MaySet<Int> rec_2 id_2))
    (and (= rec rec_2) (= id id_2)))
  :pattern ((predicate__MaySet<Int> rec id) (predicate__MaySet<Int> rec_2 id_2))
  :qid |prog.ARP__MaySet|)))
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
(assert (and
  (extends_<Bool> (as Place<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as Place<PyType>  PyType)) (as Place<PyType>  PyType))))
(assert (forall ((var0 PyType)) (!
  (and
    (extends_<Bool> (list<PyType> var0) (as object<PyType>  PyType))
    (= (get_basic<PyType> (list<PyType> var0)) (as list_basic<PyType>  PyType)))
  :pattern ((list<PyType> var0))
  :qid |prog.subtype_list|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (list<PyType> arg0)) (= (list_arg<PyType> Z 0) arg0))
  :pattern ((list<PyType> arg0) (list_arg<PyType> Z 0))
  :pattern ((issubtype<Bool> Z (list<PyType> arg0)))
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
  :pattern ((issubtype<Bool> Z (set<PyType> arg0)))
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
  :pattern ((issubtype<Bool> Z (dict<PyType> arg0 arg1)))
  :qid |prog.dict_args0|)))
(assert (forall ((Z PyType) (arg0 PyType) (arg1 PyType)) (!
  (=>
    (issubtype<Bool> Z (dict<PyType> arg0 arg1))
    (= (dict_arg<PyType> Z 1) arg1))
  :pattern ((dict<PyType> arg0 arg1) (dict_arg<PyType> Z 1))
  :pattern ((issubtype<Bool> Z (dict<PyType> arg0 arg1)))
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
  :pattern ((issubtype<Bool> Z (PSeq<PyType> arg0)))
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
  :pattern ((issubtype<Bool> Z (PSet<PyType> arg0)))
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
  :pattern ((issubtype<Bool> Z (PMultiset<PyType> arg0)))
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
  :pattern ((issubtype<Bool> Z (Iterator<PyType> arg0)))
  :qid |prog.Iterator_args0|)))
(assert (and
  (extends_<Bool> (as Thread_0<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as Thread_0<PyType>  PyType))
    (as Thread_0<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as type<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as type<PyType>  PyType)) (as type<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as __prim__Seq_type<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as __prim__Seq_type<PyType>  PyType))
    (as __prim__Seq_type<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as Clazz<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as Clazz<PyType>  PyType)) (as Clazz<PyType>  PyType))))
(assert (forall ((n _Name)) (!
  (or
    (= n (_single<_Name> (_get_value<Int> n)))
    (=
      n
      (_combine<_Name> (_get_combined_prefix<_Name> n) (_get_combined_name<_Name> n))))
  :pattern ((_single<_Name> (_get_value<Int> n)))
  :pattern ((_combine<_Name> (_get_combined_prefix<_Name> n) (_get_combined_name<_Name> n)))
  :qid |prog.all_single_or_combined|)))
(assert (forall ((i Int)) (!
  (_is_single<Bool> (_single<_Name> i))
  :pattern ((_single<_Name> i))
  :qid |prog.single_is_single|)))
(assert (forall ((n1 _Name) (n2 _Name)) (!
  (not (_is_single<Bool> (_combine<_Name> n1 n2)))
  :pattern ((_combine<_Name> n1 n2))
  :qid |prog.combined_is_not_single|)))
(assert (forall ((i Int)) (!
  (= (_get_value<Int> (_single<_Name> i)) i)
  :pattern ((_single<_Name> i))
  :qid |prog.decompose_single|)))
(assert (forall ((n1 _Name) (n2 _Name)) (!
  (= (_get_combined_prefix<_Name> (_combine<_Name> n1 n2)) n1)
  :pattern ((_combine<_Name> n1 n2))
  :qid |prog.decompose_combined_prefix|)))
(assert (forall ((n1 _Name) (n2 _Name)) (!
  (= (_get_combined_name<_Name> (_combine<_Name> n1 n2)) n2)
  :pattern ((_combine<_Name> n1 n2))
  :qid |prog.decompose_combined_name|)))
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
; /field_value_functions_axioms.smt2 [Clazz_x: Ref]
(assert (forall ((vs $FVF<Clazz_x>) (ws $FVF<Clazz_x>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Clazz_x vs) ($FVF.domain_Clazz_x ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Clazz_x vs))
            (= ($FVF.lookup_Clazz_x vs x) ($FVF.lookup_Clazz_x ws x)))
          :pattern (($FVF.lookup_Clazz_x vs x) ($FVF.lookup_Clazz_x ws x))
          :qid |qp.$FVF<Clazz_x>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Clazz_x>To$Snap vs)
              ($SortWrappers.$FVF<Clazz_x>To$Snap ws)
              )
    :qid |qp.$FVF<Clazz_x>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Clazz_x pm r))
    :pattern (($FVF.perm_Clazz_x pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_Clazz_x f r) true)
    :pattern (($FVF.loc_Clazz_x f r)))))
; /field_value_functions_axioms.smt2 [Clazz_seq: Ref]
(assert (forall ((vs $FVF<Clazz_seq>) (ws $FVF<Clazz_seq>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Clazz_seq vs) ($FVF.domain_Clazz_seq ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Clazz_seq vs))
            (= ($FVF.lookup_Clazz_seq vs x) ($FVF.lookup_Clazz_seq ws x)))
          :pattern (($FVF.lookup_Clazz_seq vs x) ($FVF.lookup_Clazz_seq ws x))
          :qid |qp.$FVF<Clazz_seq>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Clazz_seq>To$Snap vs)
              ($SortWrappers.$FVF<Clazz_seq>To$Snap ws)
              )
    :qid |qp.$FVF<Clazz_seq>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Clazz_seq pm r))
    :pattern (($FVF.perm_Clazz_seq pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_Clazz_seq f r) true)
    :pattern (($FVF.loc_Clazz_seq f r)))))
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
  :qid |quant-u-4133|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-4134|)))
; ---------- FUNCTION str___len__----------
(declare-fun self@2@00 () $Ref)
(declare-fun result@3@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@50@00 $Snap)
(assert (= $t@50@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@3@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-4135|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4136|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4183|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4184|)))
; ---------- FUNCTION _isDefined----------
(declare-fun id@4@00 () Int)
(declare-fun result@5@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (= (_isDefined%limited s@$ id@4@00) (_isDefined s@$ id@4@00))
  :pattern ((_isDefined s@$ id@4@00))
  :qid |quant-u-4137|)))
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (_isDefined%stateless id@4@00)
  :pattern ((_isDefined%limited s@$ id@4@00))
  :qid |quant-u-4138|)))
; ---------- FUNCTION PSeq___sil_seq__----------
(declare-fun box@6@00 () $Ref)
(declare-fun result@7@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(assert (issubtype<Bool> (typeof<PyType> box@6@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> box@6@00) 0))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (= (PSeq___sil_seq__%limited s@$ box@6@00) (PSeq___sil_seq__ s@$ box@6@00))
  :pattern ((PSeq___sil_seq__ s@$ box@6@00))
  :qid |quant-u-4139|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (PSeq___sil_seq__%stateless box@6@00)
  :pattern ((PSeq___sil_seq__%limited s@$ box@6@00))
  :qid |quant-u-4140|)))
; ---------- FUNCTION Level----------
(declare-fun r@8@00 () $Ref)
(declare-fun result@9@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (= (Level%limited s@$ r@8@00) (Level s@$ r@8@00))
  :pattern ((Level s@$ r@8@00))
  :qid |quant-u-4141|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (Level%stateless r@8@00)
  :pattern ((Level%limited s@$ r@8@00))
  :qid |quant-u-4142|)))
; ---------- FUNCTION object___eq__----------
(declare-fun self@10@00 () $Ref)
(declare-fun other@11@00 () $Ref)
(declare-fun result@12@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@51@00 $Snap)
(assert (= $t@51@00 ($Snap.combine ($Snap.first $t@51@00) ($Snap.second $t@51@00))))
(assert (= ($Snap.first $t@51@00) $Snap.unit))
; [eval] self == other ==> result
; [eval] self == other
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= self@10@00 other@11@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= self@10@00 other@11@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | self@10@00 == other@11@00 | live]
; [else-branch: 0 | self@10@00 != other@11@00 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | self@10@00 == other@11@00]
(assert (= self@10@00 other@11@00))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | self@10@00 != other@11@00]
(assert (not (= self@10@00 other@11@00)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= self@10@00 other@11@00)) (= self@10@00 other@11@00)))
(assert (=> (= self@10@00 other@11@00) result@12@00))
(assert (= ($Snap.second $t@51@00) $Snap.unit))
; [eval] (self == null) != (other == null) ==> !result
; [eval] (self == null) != (other == null)
; [eval] self == null
; [eval] other == null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | self@10@00 == Null != other@11@00 == Null | live]
; [else-branch: 1 | self@10@00 == Null == other@11@00 == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | self@10@00 == Null != other@11@00 == Null]
(assert (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null))))
; [eval] !result
(pop) ; 3
(push) ; 3
; [else-branch: 1 | self@10@00 == Null == other@11@00 == Null]
(assert (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or
  (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null))
  (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))))
(assert (=>
  (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))
  (not result@12@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (=
    (object___eq__%limited s@$ self@10@00 other@11@00)
    (object___eq__ s@$ self@10@00 other@11@00))
  :pattern ((object___eq__ s@$ self@10@00 other@11@00))
  :qid |quant-u-4143|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (object___eq__%stateless self@10@00 other@11@00)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4144|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) (=>
    (object___eq__%precondition s@$ self@10@00 other@11@00)
    (and
      (=> (= self@10@00 other@11@00) result@12@00)
      (=>
        (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))
        (not result@12@00)))))
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4185|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) true)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4186|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) true)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4187|)))
; ---------- FUNCTION rd_token----------
(declare-fun tk@13@00 () $Ref)
(declare-fun result@14@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@52@00 $Snap)
(assert (= $t@52@00 ($Snap.combine ($Snap.first $t@52@00) ($Snap.second $t@52@00))))
(assert (= ($Snap.first $t@52@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@14@00))
(assert (= ($Snap.second $t@52@00) $Snap.unit))
; [eval] result < write
(assert (< result@14@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (= (rd_token%limited s@$ tk@13@00) (rd_token s@$ tk@13@00))
  :pattern ((rd_token s@$ tk@13@00))
  :qid |quant-u-4145|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (rd_token%stateless tk@13@00)
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4146|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (let ((result@14@00 (rd_token%limited s@$ tk@13@00))) (=>
    (rd_token%precondition s@$ tk@13@00)
    (and (< $Perm.No result@14@00) (< result@14@00 $Perm.Write))))
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4188|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (let ((result@14@00 (rd_token%limited s@$ tk@13@00))) true)
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4189|)))
; ---------- FUNCTION str___create__----------
(declare-fun len@15@00 () Int)
(declare-fun value@16@00 () Int)
(declare-fun result@17@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@53@00 $Snap)
(assert (= $t@53@00 ($Snap.combine ($Snap.first $t@53@00) ($Snap.second $t@53@00))))
(assert (= ($Snap.first $t@53@00) $Snap.unit))
; [eval] str___len__(result) == len
; [eval] str___len__(result)
(push) ; 2
(assert (str___len__%precondition $Snap.unit result@17@00))
(pop) ; 2
; Joined path conditions
(assert (str___len__%precondition $Snap.unit result@17@00))
(assert (= (str___len__ $Snap.unit result@17@00) len@15@00))
(assert (=
  ($Snap.second $t@53@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@00))
    ($Snap.second ($Snap.second $t@53@00)))))
(assert (= ($Snap.first ($Snap.second $t@53@00)) $Snap.unit))
; [eval] str___val__(result) == value
; [eval] str___val__(result)
(push) ; 2
(assert (str___val__%precondition $Snap.unit result@17@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit result@17@00))
(assert (= (str___val__ $Snap.unit result@17@00) value@16@00))
(assert (= ($Snap.second ($Snap.second $t@53@00)) $Snap.unit))
; [eval] typeof(result) == str()
; [eval] typeof(result)
; [eval] str()
(assert (= (typeof<PyType> result@17@00) (as str<PyType>  PyType)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (=
    (str___create__%limited s@$ len@15@00 value@16@00)
    (str___create__ s@$ len@15@00 value@16@00))
  :pattern ((str___create__ s@$ len@15@00 value@16@00))
  :qid |quant-u-4147|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (str___create__%stateless len@15@00 value@16@00)
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4148|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (and
      (= (str___len__ $Snap.unit result@17@00) len@15@00)
      (= (str___val__ $Snap.unit result@17@00) value@16@00)
      (= (typeof<PyType> result@17@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4190|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (str___len__%precondition $Snap.unit result@17@00)))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4191|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (str___val__%precondition $Snap.unit result@17@00)))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4192|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) true)
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4193|)))
; ---------- FUNCTION _asserting----------
(declare-fun val@18@00 () $Ref)
(declare-fun ass@19@00 () Bool)
(declare-fun result@20@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert ass@19@00)
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (=
    (_asserting%limited s@$ val@18@00 ass@19@00)
    (_asserting s@$ val@18@00 ass@19@00))
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4149|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (_asserting%stateless val@18@00 ass@19@00)
  :pattern ((_asserting%limited s@$ val@18@00 ass@19@00))
  :qid |quant-u-4150|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert ass@19@00)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@20@00 val@18@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (=>
    (_asserting%precondition s@$ val@18@00 ass@19@00)
    (= (_asserting s@$ val@18@00 ass@19@00) val@18@00))
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4194|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  true
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4195|)))
; ---------- FUNCTION __file__----------
(declare-fun result@21@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4151|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4152|)))
; ---------- FUNCTION rdw----------
(declare-fun result@22@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (rdw%limited s@$) (rdw s@$))
  :pattern ((rdw s@$))
  :qid |quant-u-4153|)))
(assert (forall ((s@$ $Snap)) (!
  (as rdw%stateless  Bool)
  :pattern ((rdw%limited s@$))
  :qid |quant-u-4154|)))
; ---------- FUNCTION _checkDefined----------
(declare-fun val@23@00 () $Ref)
(declare-fun id@24@00 () Int)
(declare-fun result@25@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] _isDefined(id)
(push) ; 2
(assert (_isDefined%precondition $Snap.unit id@24@00))
(pop) ; 2
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit id@24@00))
(assert (_isDefined $Snap.unit id@24@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@23@00 id@24@00)
    (_checkDefined s@$ val@23@00 id@24@00))
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4155|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (_checkDefined%stateless val@23@00 id@24@00)
  :pattern ((_checkDefined%limited s@$ val@23@00 id@24@00))
  :qid |quant-u-4156|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert (_isDefined%precondition $Snap.unit id@24@00))
(assert (_isDefined $Snap.unit id@24@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@25@00 val@23@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@23@00 id@24@00)
    (= (_checkDefined s@$ val@23@00 id@24@00) val@23@00))
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4196|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4197|)))
; ---------- FUNCTION rd----------
(declare-fun result@26@00 () $Perm)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (rd%limited s@$) (rd s@$))
  :pattern ((rd s@$))
  :qid |quant-u-4157|)))
(assert (forall ((s@$ $Snap)) (!
  (as rd%stateless  Bool)
  :pattern ((rd%limited s@$))
  :qid |quant-u-4158|)))
; ---------- FUNCTION PSeq___create__----------
(declare-fun prim@27@00 () Seq<$Ref>)
(declare-fun cont_type@28@00 () PyType)
(declare-fun result@29@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@54@00 $Snap)
(assert (= $t@54@00 ($Snap.combine ($Snap.first $t@54@00) ($Snap.second $t@54@00))))
(assert (= ($Snap.first $t@54@00) $Snap.unit))
; [eval] typeof(result) == PSeq(cont_type)
; [eval] typeof(result)
; [eval] PSeq(cont_type)
(assert (= (typeof<PyType> result@29@00) (PSeq<PyType> cont_type@28@00)))
(assert (= ($Snap.second $t@54@00) $Snap.unit))
; [eval] PSeq___sil_seq__(result) == prim
; [eval] PSeq___sil_seq__(result)
(push) ; 2
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@29@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@29@00) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@29@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@29@00) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit result@29@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@29@00) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> result@29@00) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit result@29@00)))
(assert (Seq_equal (PSeq___sil_seq__ $Snap.unit result@29@00) prim@27@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (=
    (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00)
    (PSeq___create__ s@$ prim@27@00 cont_type@28@00))
  :pattern ((PSeq___create__ s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4159|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (PSeq___create__%stateless prim@27@00 cont_type@28@00)
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4160|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) (=>
    (PSeq___create__%precondition s@$ prim@27@00 cont_type@28@00)
    (and
      (= (typeof<PyType> result@29@00) (PSeq<PyType> cont_type@28@00))
      (Seq_equal (PSeq___sil_seq__ $Snap.unit result@29@00) prim@27@00))))
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4198|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) true)
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4199|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) (=>
    (PSeq___create__%precondition s@$ prim@27@00 cont_type@28@00)
    (PSeq___sil_seq__%precondition $Snap.unit result@29@00)))
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4200|)))
; ---------- FUNCTION _joinable----------
(declare-fun t@30@00 () $Ref)
(declare-fun result@31@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (t@30@00 $Ref)) (!
  (= (_joinable%limited s@$ t@30@00) (_joinable s@$ t@30@00))
  :pattern ((_joinable s@$ t@30@00))
  :qid |quant-u-4161|)))
(assert (forall ((s@$ $Snap) (t@30@00 $Ref)) (!
  (_joinable%stateless t@30@00)
  :pattern ((_joinable%limited s@$ t@30@00))
  :qid |quant-u-4162|)))
; ---------- FUNCTION str___eq__----------
(declare-fun self@32@00 () $Ref)
(declare-fun other@33@00 () $Ref)
(declare-fun result@34@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> self@32@00) (as str<PyType>  PyType)))
(declare-const $t@55@00 $Snap)
(assert (= $t@55@00 ($Snap.combine ($Snap.first $t@55@00) ($Snap.second $t@55@00))))
(assert (= ($Snap.first $t@55@00) $Snap.unit))
; [eval] (str___val__(self) == str___val__(other)) == result
; [eval] str___val__(self) == str___val__(other)
; [eval] str___val__(self)
(push) ; 2
(assert (str___val__%precondition $Snap.unit self@32@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit self@32@00))
; [eval] str___val__(other)
(push) ; 2
(assert (str___val__%precondition $Snap.unit other@33@00))
(pop) ; 2
; Joined path conditions
(assert (str___val__%precondition $Snap.unit other@33@00))
(assert (=
  (= (str___val__ $Snap.unit self@32@00) (str___val__ $Snap.unit other@33@00))
  result@34@00))
(assert (= ($Snap.second $t@55@00) $Snap.unit))
; [eval] result ==> str___len__(self) == str___len__(other)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not result@34@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not result@34@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | result@34@00 | live]
; [else-branch: 2 | !(result@34@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | result@34@00]
(assert result@34@00)
; [eval] str___len__(self) == str___len__(other)
; [eval] str___len__(self)
(push) ; 4
(assert (str___len__%precondition $Snap.unit self@32@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit self@32@00))
; [eval] str___len__(other)
(push) ; 4
(assert (str___len__%precondition $Snap.unit other@33@00))
(pop) ; 4
; Joined path conditions
(assert (str___len__%precondition $Snap.unit other@33@00))
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(result@34@00)]
(assert (not result@34@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  result@34@00
  (and
    result@34@00
    (str___len__%precondition $Snap.unit self@32@00)
    (str___len__%precondition $Snap.unit other@33@00))))
; Joined path conditions
(assert (or (not result@34@00) result@34@00))
(assert (=>
  result@34@00
  (= (str___len__ $Snap.unit self@32@00) (str___len__ $Snap.unit other@33@00))))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@32@00 other@33@00)
    (str___eq__ s@$ self@32@00 other@33@00))
  :pattern ((str___eq__ s@$ self@32@00 other@33@00))
  :qid |quant-u-4163|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (str___eq__%stateless self@32@00 other@33@00)
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4164|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (str___eq__%precondition s@$ self@32@00 other@33@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@32@00)
          (str___val__ $Snap.unit other@33@00))
        result@34@00)
      (=>
        result@34@00
        (=
          (str___len__ $Snap.unit self@32@00)
          (str___len__ $Snap.unit other@33@00))))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4201|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (str___eq__%precondition s@$ self@32@00 other@33@00)
    (and
      (str___val__%precondition $Snap.unit self@32@00)
      (str___val__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4202|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (and (str___eq__%precondition s@$ self@32@00 other@33@00) result@34@00)
    (and
      (str___len__%precondition $Snap.unit self@32@00)
      (str___len__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4203|)))
; ---------- FUNCTION __prim__bool___box__----------
(declare-fun prim@35@00 () Bool)
(declare-fun result@36@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@56@00 $Snap)
(assert (= $t@56@00 ($Snap.combine ($Snap.first $t@56@00) ($Snap.second $t@56@00))))
(assert (= ($Snap.first $t@56@00) $Snap.unit))
; [eval] typeof(result) == bool()
; [eval] typeof(result)
; [eval] bool()
(assert (= (typeof<PyType> result@36@00) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second $t@56@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@00))
    ($Snap.second ($Snap.second $t@56@00)))))
(assert (= ($Snap.first ($Snap.second $t@56@00)) $Snap.unit))
; [eval] bool___unbox__(result) == prim
; [eval] bool___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@36@00) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@36@00) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit result@36@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@36@00) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit result@36@00)))
(assert (= (bool___unbox__ $Snap.unit result@36@00) prim@35@00))
(assert (= ($Snap.second ($Snap.second $t@56@00)) $Snap.unit))
; [eval] int___unbox__(result) == (prim ? 1 : 0)
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@36@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@36@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@36@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@36@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@36@00)))
; [eval] (prim ? 1 : 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not prim@35@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not prim@35@00))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | prim@35@00 | live]
; [else-branch: 3 | !(prim@35@00) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | prim@35@00]
(assert prim@35@00)
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(prim@35@00)]
(assert (not prim@35@00))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not prim@35@00) prim@35@00))
(assert (= (int___unbox__ $Snap.unit result@36@00) (ite prim@35@00 1 0)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@35@00)
    (__prim__bool___box__ s@$ prim@35@00))
  :pattern ((__prim__bool___box__ s@$ prim@35@00))
  :qid |quant-u-4165|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (__prim__bool___box__%stateless prim@35@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4166|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (and
      (= (typeof<PyType> result@36@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@36@00) prim@35@00)
      (= (int___unbox__%limited $Snap.unit result@36@00) (ite prim@35@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4204|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4205|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (bool___unbox__%precondition $Snap.unit result@36@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4206|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (int___unbox__%precondition $Snap.unit result@36@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4207|)))
; ---------- FUNCTION int___unbox__----------
(declare-fun box@37@00 () $Ref)
(declare-fun result@38@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> box@37@00) (as int<PyType>  PyType)))
(declare-const $t@57@00 $Snap)
(assert (= $t@57@00 ($Snap.combine ($Snap.first $t@57@00) ($Snap.second $t@57@00))))
(assert (= ($Snap.first $t@57@00) $Snap.unit))
; [eval] !issubtype(typeof(box), bool()) ==> __prim__int___box__(result) == box
; [eval] !issubtype(typeof(box), bool())
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | !(issubtype[Bool](typeof[PyType](box@37@00), bool[PyType])) | live]
; [else-branch: 4 | issubtype[Bool](typeof[PyType](box@37@00), bool[PyType]) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | !(issubtype[Bool](typeof[PyType](box@37@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
; [eval] __prim__int___box__(result) == box
; [eval] __prim__int___box__(result)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit result@38@00))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit result@38@00))
(pop) ; 3
(push) ; 3
; [else-branch: 4 | issubtype[Bool](typeof[PyType](box@37@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
  (and
    (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
    (__prim__int___box__%precondition $Snap.unit result@38@00))))
; Joined path conditions
(assert (or
  (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))))
(assert (=>
  (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
  (= (__prim__int___box__ $Snap.unit result@38@00) box@37@00)))
(assert (= ($Snap.second $t@57@00) $Snap.unit))
; [eval] issubtype(typeof(box), bool()) ==> __prim__bool___box__(result != 0) == box
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | issubtype[Bool](typeof[PyType](box@37@00), bool[PyType]) | live]
; [else-branch: 5 | !(issubtype[Bool](typeof[PyType](box@37@00), bool[PyType])) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | issubtype[Bool](typeof[PyType](box@37@00), bool[PyType])]
(assert (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
; [eval] __prim__bool___box__(result != 0) == box
; [eval] __prim__bool___box__(result != 0)
; [eval] result != 0
(push) ; 4
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@38@00 0))))
(pop) ; 4
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit (not (= result@38@00 0))))
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(issubtype[Bool](typeof[PyType](box@37@00), bool[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@38@00 0))))))
; Joined path conditions
(assert (or
  (not (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
  (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
(assert (=>
  (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))
  (= (__prim__bool___box__ $Snap.unit (not (= result@38@00 0))) box@37@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@37@00) (int___unbox__ s@$ box@37@00))
  :pattern ((int___unbox__ s@$ box@37@00))
  :qid |quant-u-4167|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (int___unbox__%stateless box@37@00)
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4168|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (let ((result@38@00 (int___unbox__%limited s@$ box@37@00))) (=>
    (int___unbox__%precondition s@$ box@37@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@38@00) box@37@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@38@00 0)))
          box@37@00)))))
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4208|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (let ((result@38@00 (int___unbox__%limited s@$ box@37@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@37@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@38@00)))
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4209|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (let ((result@38@00 (int___unbox__%limited s@$ box@37@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@37@00)
      (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@38@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4210|)))
; ---------- FUNCTION bool___unbox__----------
(declare-fun box@39@00 () $Ref)
(declare-fun result@40@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> box@39@00) (as bool<PyType>  PyType)))
(declare-const $t@58@00 $Snap)
(assert (= $t@58@00 $Snap.unit))
; [eval] __prim__bool___box__(result) == box
; [eval] __prim__bool___box__(result)
(push) ; 2
(assert (__prim__bool___box__%precondition $Snap.unit result@40@00))
(pop) ; 2
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit result@40@00))
(assert (= (__prim__bool___box__ $Snap.unit result@40@00) box@39@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@39@00) (bool___unbox__ s@$ box@39@00))
  :pattern ((bool___unbox__ s@$ box@39@00))
  :qid |quant-u-4169|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (bool___unbox__%stateless box@39@00)
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4170|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (let ((result@40@00 (bool___unbox__%limited s@$ box@39@00))) (=>
    (bool___unbox__%precondition s@$ box@39@00)
    (= (__prim__bool___box__%limited $Snap.unit result@40@00) box@39@00)))
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4211|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (let ((result@40@00 (bool___unbox__%limited s@$ box@39@00))) (=>
    (bool___unbox__%precondition s@$ box@39@00)
    (__prim__bool___box__%precondition $Snap.unit result@40@00)))
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4212|)))
; ---------- FUNCTION __prim__int___box__----------
(declare-fun prim@41@00 () Int)
(declare-fun result@42@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@59@00 $Snap)
(assert (= $t@59@00 ($Snap.combine ($Snap.first $t@59@00) ($Snap.second $t@59@00))))
(assert (= ($Snap.first $t@59@00) $Snap.unit))
; [eval] typeof(result) == int()
; [eval] typeof(result)
; [eval] int()
(assert (= (typeof<PyType> result@42@00) (as int<PyType>  PyType)))
(assert (= ($Snap.second $t@59@00) $Snap.unit))
; [eval] int___unbox__(result) == prim
; [eval] int___unbox__(result)
(push) ; 2
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> result@42@00) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> result@42@00) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit result@42@00))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> result@42@00) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit result@42@00)))
(assert (= (int___unbox__ $Snap.unit result@42@00) prim@41@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@41@00)
    (__prim__int___box__ s@$ prim@41@00))
  :pattern ((__prim__int___box__ s@$ prim@41@00))
  :qid |quant-u-4171|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (__prim__int___box__%stateless prim@41@00)
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4172|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) (=>
    (__prim__int___box__%precondition s@$ prim@41@00)
    (and
      (= (typeof<PyType> result@42@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@42@00) prim@41@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4213|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4214|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) (=>
    (__prim__int___box__%precondition s@$ prim@41@00)
    (int___unbox__%precondition $Snap.unit result@42@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4215|)))
; ---------- FUNCTION _int_to_bool----------
(declare-fun i@43@00 () Int)
(declare-fun result@44@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (i@43@00 Int)) (!
  (= (_int_to_bool%limited s@$ i@43@00) (_int_to_bool s@$ i@43@00))
  :pattern ((_int_to_bool s@$ i@43@00))
  :qid |quant-u-4173|)))
(assert (forall ((s@$ $Snap) (i@43@00 Int)) (!
  (_int_to_bool%stateless i@43@00)
  :pattern ((_int_to_bool%limited s@$ i@43@00))
  :qid |quant-u-4174|)))
; ---------- FUNCTION epsilonRd----------
(declare-fun result@45@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@60@00 $Snap)
(assert (= $t@60@00 ($Snap.combine ($Snap.first $t@60@00) ($Snap.second $t@60@00))))
(assert (= ($Snap.first $t@60@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@45@00))
(assert (= ($Snap.second $t@60@00) $Snap.unit))
; [eval] result < write
(assert (< result@45@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (epsilonRd%limited s@$) (epsilonRd s@$))
  :pattern ((epsilonRd s@$))
  :qid |quant-u-4175|)))
(assert (forall ((s@$ $Snap)) (!
  (as epsilonRd%stateless  Bool)
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4176|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@45@00 (epsilonRd%limited s@$))) (=>
    (epsilonRd%precondition s@$)
    (and (< $Perm.No result@45@00) (< result@45@00 $Perm.Write))))
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4216|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@45@00 (epsilonRd%limited s@$))) true)
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4217|)))
; ---------- FUNCTION globalRd----------
(declare-fun result@46@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (= ($Snap.first $t@61@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@46@00))
(assert (= ($Snap.second $t@61@00) $Snap.unit))
; [eval] result < write
(assert (< result@46@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (globalRd%limited s@$) (globalRd s@$))
  :pattern ((globalRd s@$))
  :qid |quant-u-4177|)))
(assert (forall ((s@$ $Snap)) (!
  (as globalRd%stateless  Bool)
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4178|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@46@00 (globalRd%limited s@$))) (=>
    (globalRd%precondition s@$)
    (and (< $Perm.No result@46@00) (< result@46@00 $Perm.Write))))
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4218|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@46@00 (globalRd%limited s@$))) true)
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4219|)))
; ---------- FUNCTION __name__----------
(declare-fun result@47@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4179|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4180|)))
; ---------- FUNCTION rdc----------
(declare-fun count@48@00 () Int)
(declare-fun result@49@00 () $Perm)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap) (count@48@00 Int)) (!
  (= (rdc%limited s@$ count@48@00) (rdc s@$ count@48@00))
  :pattern ((rdc s@$ count@48@00))
  :qid |quant-u-4181|)))
(assert (forall ((s@$ $Snap) (count@48@00 Int)) (!
  (rdc%stateless count@48@00)
  :pattern ((rdc%limited s@$ count@48@00))
  :qid |quant-u-4182|)))
; ---------- MustTerminate ----------
(declare-const r@62@00 $Ref)
; ---------- MustInvokeBounded ----------
(declare-const r@63@00 $Ref)
; ---------- MustInvokeUnbounded ----------
(declare-const r@64@00 $Ref)
; ---------- MustInvokeCredit ----------
(declare-const r@65@00 $Ref)
; ---------- _thread_start ----------
(declare-const t@66@00 $Ref)
; ---------- _thread_post ----------
(declare-const t@67@00 $Ref)
; ---------- _MaySet ----------
(declare-const rec@68@00 $Ref)
(declare-const id@69@00 Int)
