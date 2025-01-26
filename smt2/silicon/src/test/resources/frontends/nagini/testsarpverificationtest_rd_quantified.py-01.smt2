(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:28:05
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
(assert (distinct field_list_acc<Int> ARPLog_type_Nil<Int> field_Clazz_seq<Int> field_Clazz_y<Int> field___previous<Int> field___iter_index<Int> field___container<Int> field_set_acc<Int> field_dict_acc2<Int> field_Measure$acc<Int> field_Clazz_x<Int> ARPLog_type_Cons<Int> field__val<Int> field_dict_acc<Int>))
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
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-4691|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-4692|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-4693|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4694|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4741|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-4742|)))
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (= (_isDefined%limited s@$ id@4@00) (_isDefined s@$ id@4@00))
  :pattern ((_isDefined s@$ id@4@00))
  :qid |quant-u-4695|)))
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (_isDefined%stateless id@4@00)
  :pattern ((_isDefined%limited s@$ id@4@00))
  :qid |quant-u-4696|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (= (PSeq___sil_seq__%limited s@$ box@6@00) (PSeq___sil_seq__ s@$ box@6@00))
  :pattern ((PSeq___sil_seq__ s@$ box@6@00))
  :qid |quant-u-4697|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (PSeq___sil_seq__%stateless box@6@00)
  :pattern ((PSeq___sil_seq__%limited s@$ box@6@00))
  :qid |quant-u-4698|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (= (Level%limited s@$ r@8@00) (Level s@$ r@8@00))
  :pattern ((Level s@$ r@8@00))
  :qid |quant-u-4699|)))
(assert (forall ((s@$ $Snap) (r@8@00 $Ref)) (!
  (Level%stateless r@8@00)
  :pattern ((Level%limited s@$ r@8@00))
  :qid |quant-u-4700|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (=
    (object___eq__%limited s@$ self@10@00 other@11@00)
    (object___eq__ s@$ self@10@00 other@11@00))
  :pattern ((object___eq__ s@$ self@10@00 other@11@00))
  :qid |quant-u-4701|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (object___eq__%stateless self@10@00 other@11@00)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4702|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) (=>
    (object___eq__%precondition s@$ self@10@00 other@11@00)
    (and
      (=> (= self@10@00 other@11@00) result@12@00)
      (=>
        (not (= (= self@10@00 $Ref.null) (= other@11@00 $Ref.null)))
        (not result@12@00)))))
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4743|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) true)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4744|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref) (other@11@00 $Ref)) (!
  (let ((result@12@00 (object___eq__%limited s@$ self@10@00 other@11@00))) true)
  :pattern ((object___eq__%limited s@$ self@10@00 other@11@00))
  :qid |quant-u-4745|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (= (rd_token%limited s@$ tk@13@00) (rd_token s@$ tk@13@00))
  :pattern ((rd_token s@$ tk@13@00))
  :qid |quant-u-4703|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (rd_token%stateless tk@13@00)
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4704|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (let ((result@14@00 (rd_token%limited s@$ tk@13@00))) (=>
    (rd_token%precondition s@$ tk@13@00)
    (and (< $Perm.No result@14@00) (< result@14@00 $Perm.Write))))
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4746|)))
(assert (forall ((s@$ $Snap) (tk@13@00 $Ref)) (!
  (let ((result@14@00 (rd_token%limited s@$ tk@13@00))) true)
  :pattern ((rd_token%limited s@$ tk@13@00))
  :qid |quant-u-4747|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (=
    (str___create__%limited s@$ len@15@00 value@16@00)
    (str___create__ s@$ len@15@00 value@16@00))
  :pattern ((str___create__ s@$ len@15@00 value@16@00))
  :qid |quant-u-4705|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (str___create__%stateless len@15@00 value@16@00)
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4706|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (and
      (= (str___len__ $Snap.unit result@17@00) len@15@00)
      (= (str___val__ $Snap.unit result@17@00) value@16@00)
      (= (typeof<PyType> result@17@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4748|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (str___len__%precondition $Snap.unit result@17@00)))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4749|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) (=>
    (str___create__%precondition s@$ len@15@00 value@16@00)
    (str___val__%precondition $Snap.unit result@17@00)))
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4750|)))
(assert (forall ((s@$ $Snap) (len@15@00 Int) (value@16@00 Int)) (!
  (let ((result@17@00 (str___create__%limited s@$ len@15@00 value@16@00))) true)
  :pattern ((str___create__%limited s@$ len@15@00 value@16@00))
  :qid |quant-u-4751|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (=
    (_asserting%limited s@$ val@18@00 ass@19@00)
    (_asserting s@$ val@18@00 ass@19@00))
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4707|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (_asserting%stateless val@18@00 ass@19@00)
  :pattern ((_asserting%limited s@$ val@18@00 ass@19@00))
  :qid |quant-u-4708|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  (=>
    (_asserting%precondition s@$ val@18@00 ass@19@00)
    (= (_asserting s@$ val@18@00 ass@19@00) val@18@00))
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4752|)))
(assert (forall ((s@$ $Snap) (val@18@00 $Ref) (ass@19@00 Bool)) (!
  true
  :pattern ((_asserting s@$ val@18@00 ass@19@00))
  :qid |quant-u-4753|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-4709|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-4710|)))
(assert (forall ((s@$ $Snap)) (!
  (= (rdw%limited s@$) (rdw s@$))
  :pattern ((rdw s@$))
  :qid |quant-u-4711|)))
(assert (forall ((s@$ $Snap)) (!
  (as rdw%stateless  Bool)
  :pattern ((rdw%limited s@$))
  :qid |quant-u-4712|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@23@00 id@24@00)
    (_checkDefined s@$ val@23@00 id@24@00))
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4713|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (_checkDefined%stateless val@23@00 id@24@00)
  :pattern ((_checkDefined%limited s@$ val@23@00 id@24@00))
  :qid |quant-u-4714|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@23@00 id@24@00)
    (= (_checkDefined s@$ val@23@00 id@24@00) val@23@00))
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4754|)))
(assert (forall ((s@$ $Snap) (val@23@00 $Ref) (id@24@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@23@00 id@24@00))
  :qid |quant-u-4755|)))
(assert (forall ((s@$ $Snap)) (!
  (= (rd%limited s@$) (rd s@$))
  :pattern ((rd s@$))
  :qid |quant-u-4715|)))
(assert (forall ((s@$ $Snap)) (!
  (as rd%stateless  Bool)
  :pattern ((rd%limited s@$))
  :qid |quant-u-4716|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (=
    (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00)
    (PSeq___create__ s@$ prim@27@00 cont_type@28@00))
  :pattern ((PSeq___create__ s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4717|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (PSeq___create__%stateless prim@27@00 cont_type@28@00)
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4718|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) (=>
    (PSeq___create__%precondition s@$ prim@27@00 cont_type@28@00)
    (and
      (= (typeof<PyType> result@29@00) (PSeq<PyType> cont_type@28@00))
      (Seq_equal (PSeq___sil_seq__ $Snap.unit result@29@00) prim@27@00))))
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4756|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) true)
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4757|)))
(assert (forall ((s@$ $Snap) (prim@27@00 Seq<$Ref>) (cont_type@28@00 PyType)) (!
  (let ((result@29@00 (PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))) (=>
    (PSeq___create__%precondition s@$ prim@27@00 cont_type@28@00)
    (PSeq___sil_seq__%precondition $Snap.unit result@29@00)))
  :pattern ((PSeq___create__%limited s@$ prim@27@00 cont_type@28@00))
  :qid |quant-u-4758|)))
(assert (forall ((s@$ $Snap) (t@30@00 $Ref)) (!
  (= (_joinable%limited s@$ t@30@00) (_joinable s@$ t@30@00))
  :pattern ((_joinable s@$ t@30@00))
  :qid |quant-u-4719|)))
(assert (forall ((s@$ $Snap) (t@30@00 $Ref)) (!
  (_joinable%stateless t@30@00)
  :pattern ((_joinable%limited s@$ t@30@00))
  :qid |quant-u-4720|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@32@00 other@33@00)
    (str___eq__ s@$ self@32@00 other@33@00))
  :pattern ((str___eq__ s@$ self@32@00 other@33@00))
  :qid |quant-u-4721|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (str___eq__%stateless self@32@00 other@33@00)
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4722|)))
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
  :qid |quant-u-4759|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (str___eq__%precondition s@$ self@32@00 other@33@00)
    (and
      (str___val__%precondition $Snap.unit self@32@00)
      (str___val__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4760|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (and (str___eq__%precondition s@$ self@32@00 other@33@00) result@34@00)
    (and
      (str___len__%precondition $Snap.unit self@32@00)
      (str___len__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-4761|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@35@00)
    (__prim__bool___box__ s@$ prim@35@00))
  :pattern ((__prim__bool___box__ s@$ prim@35@00))
  :qid |quant-u-4723|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (__prim__bool___box__%stateless prim@35@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4724|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (and
      (= (typeof<PyType> result@36@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@36@00) prim@35@00)
      (= (int___unbox__%limited $Snap.unit result@36@00) (ite prim@35@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4762|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4763|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (bool___unbox__%precondition $Snap.unit result@36@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4764|)))
(assert (forall ((s@$ $Snap) (prim@35@00 Bool)) (!
  (let ((result@36@00 (__prim__bool___box__%limited s@$ prim@35@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@35@00)
    (int___unbox__%precondition $Snap.unit result@36@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@35@00))
  :qid |quant-u-4765|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@37@00) (int___unbox__ s@$ box@37@00))
  :pattern ((int___unbox__ s@$ box@37@00))
  :qid |quant-u-4725|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (int___unbox__%stateless box@37@00)
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4726|)))
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
  :qid |quant-u-4766|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (let ((result@38@00 (int___unbox__%limited s@$ box@37@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@37@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@38@00)))
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4767|)))
(assert (forall ((s@$ $Snap) (box@37@00 $Ref)) (!
  (let ((result@38@00 (int___unbox__%limited s@$ box@37@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@37@00)
      (issubtype<Bool> (typeof<PyType> box@37@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@38@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@37@00))
  :qid |quant-u-4768|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@39@00) (bool___unbox__ s@$ box@39@00))
  :pattern ((bool___unbox__ s@$ box@39@00))
  :qid |quant-u-4727|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (bool___unbox__%stateless box@39@00)
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4728|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (let ((result@40@00 (bool___unbox__%limited s@$ box@39@00))) (=>
    (bool___unbox__%precondition s@$ box@39@00)
    (= (__prim__bool___box__%limited $Snap.unit result@40@00) box@39@00)))
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4769|)))
(assert (forall ((s@$ $Snap) (box@39@00 $Ref)) (!
  (let ((result@40@00 (bool___unbox__%limited s@$ box@39@00))) (=>
    (bool___unbox__%precondition s@$ box@39@00)
    (__prim__bool___box__%precondition $Snap.unit result@40@00)))
  :pattern ((bool___unbox__%limited s@$ box@39@00))
  :qid |quant-u-4770|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@41@00)
    (__prim__int___box__ s@$ prim@41@00))
  :pattern ((__prim__int___box__ s@$ prim@41@00))
  :qid |quant-u-4729|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (__prim__int___box__%stateless prim@41@00)
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4730|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) (=>
    (__prim__int___box__%precondition s@$ prim@41@00)
    (and
      (= (typeof<PyType> result@42@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@42@00) prim@41@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4771|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4772|)))
(assert (forall ((s@$ $Snap) (prim@41@00 Int)) (!
  (let ((result@42@00 (__prim__int___box__%limited s@$ prim@41@00))) (=>
    (__prim__int___box__%precondition s@$ prim@41@00)
    (int___unbox__%precondition $Snap.unit result@42@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@41@00))
  :qid |quant-u-4773|)))
(assert (forall ((s@$ $Snap) (i@43@00 Int)) (!
  (= (_int_to_bool%limited s@$ i@43@00) (_int_to_bool s@$ i@43@00))
  :pattern ((_int_to_bool s@$ i@43@00))
  :qid |quant-u-4731|)))
(assert (forall ((s@$ $Snap) (i@43@00 Int)) (!
  (_int_to_bool%stateless i@43@00)
  :pattern ((_int_to_bool%limited s@$ i@43@00))
  :qid |quant-u-4732|)))
(assert (forall ((s@$ $Snap)) (!
  (= (epsilonRd%limited s@$) (epsilonRd s@$))
  :pattern ((epsilonRd s@$))
  :qid |quant-u-4733|)))
(assert (forall ((s@$ $Snap)) (!
  (as epsilonRd%stateless  Bool)
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4734|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@45@00 (epsilonRd%limited s@$))) (=>
    (epsilonRd%precondition s@$)
    (and (< $Perm.No result@45@00) (< result@45@00 $Perm.Write))))
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4774|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@45@00 (epsilonRd%limited s@$))) true)
  :pattern ((epsilonRd%limited s@$))
  :qid |quant-u-4775|)))
(assert (forall ((s@$ $Snap)) (!
  (= (globalRd%limited s@$) (globalRd s@$))
  :pattern ((globalRd s@$))
  :qid |quant-u-4735|)))
(assert (forall ((s@$ $Snap)) (!
  (as globalRd%stateless  Bool)
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4736|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@46@00 (globalRd%limited s@$))) (=>
    (globalRd%precondition s@$)
    (and (< $Perm.No result@46@00) (< result@46@00 $Perm.Write))))
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4776|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@46@00 (globalRd%limited s@$))) true)
  :pattern ((globalRd%limited s@$))
  :qid |quant-u-4777|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-4737|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-4738|)))
(assert (forall ((s@$ $Snap) (count@48@00 Int)) (!
  (= (rdc%limited s@$ count@48@00) (rdc s@$ count@48@00))
  :pattern ((rdc s@$ count@48@00))
  :qid |quant-u-4739|)))
(assert (forall ((s@$ $Snap) (count@48@00 Int)) (!
  (rdc%stateless count@48@00)
  :pattern ((rdc%limited s@$ count@48@00))
  :qid |quant-u-4740|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Clazz___init__ ----------
(declare-const _cthread_155@0@01 $Ref)
(declare-const _caller_measures_155@1@01 Seq<Measure$>)
(declare-const _residue_155@2@01 $Perm)
(declare-const self@3@01 $Ref)
(declare-const Clazz___init___rd@4@01 $Perm)
(declare-const _current_wait_level_155@5@01 $Perm)
(declare-const _cthread_155@6@01 $Ref)
(declare-const _caller_measures_155@7@01 Seq<Measure$>)
(declare-const _residue_155@8@01 $Perm)
(declare-const self@9@01 $Ref)
(declare-const Clazz___init___rd@10@01 $Perm)
(declare-const _current_wait_level_155@11@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] none < Clazz___init___rd
(assert (< $Perm.No Clazz___init___rd@10@01))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] Clazz___init___rd < write
(assert (< Clazz___init___rd@10@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] _cthread_155 != null
(assert (not (= _cthread_155@6@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_155), Thread_0())
; [eval] typeof(_cthread_155)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_155@6@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] self != null
(assert (not (= self@9@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self), Clazz())
; [eval] typeof(self)
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> self@9@01) (as Clazz<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] self != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(assert (= ($Snap.first $t@13@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_155)
(assert (=
  ($Snap.second $t@13@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@01))
    ($Snap.second ($Snap.second $t@13@01)))))
(assert (= ($Snap.first ($Snap.second $t@13@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_155)
(assert (=
  ($Snap.second ($Snap.second $t@13@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@13@01))) $Snap.unit))
; [eval] _residue_155 <= _current_wait_level_155
(assert (<= _residue_155@8@01 _current_wait_level_155@11@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@13@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self.Clazz_x), int())
; [eval] typeof(self.Clazz_x)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(self.Clazz_y), int())
; [eval] typeof(self.Clazz_y)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@14@01 $Ref)
; [exec]
; var self_4: Ref
(declare-const self_4@15@01 $Ref)
; [exec]
; var _cwl_155: Perm
(declare-const _cwl_155@16@01 $Perm)
; [exec]
; var _method_measures_155: Seq[Measure$]
(declare-const _method_measures_155@17@01 Seq<Measure$>)
; [exec]
; _method_measures_155 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == Clazz()
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 $Snap.unit))
; [eval] typeof(self) == Clazz()
; [eval] typeof(self)
; [eval] Clazz()
(assert (= (typeof<PyType> self@9@01) (as Clazz<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_4 := self
; [eval] perm(_MaySet(self_4, 4443106262936097725)) > none
; [eval] perm(_MaySet(self_4, 4443106262936097725))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | True]
; [exec]
; exhale acc(_MaySet(self_4, 4443106262936097725), write)
; [exec]
; inhale acc(self_4.Clazz_x, write)
(declare-const $t@19@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_4.Clazz_x := __prim__int___box__(5)
; [eval] __prim__int___box__(5)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 5))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 5))
(declare-const Clazz_x@20@01 $Ref)
(assert (= Clazz_x@20@01 (__prim__int___box__ $Snap.unit 5)))
; [eval] perm(_MaySet(self_4, 4443387737912808381)) > none
; [eval] perm(_MaySet(self_4, 4443387737912808381))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | True | live]
; [else-branch: 1 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | True]
; [exec]
; exhale acc(_MaySet(self_4, 4443387737912808381), write)
; [exec]
; inhale acc(self_4.Clazz_y, write)
(declare-const $t@21@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_4.Clazz_y := __prim__int___box__(3)
; [eval] __prim__int___box__(3)
(set-option :timeout 0)
(push) ; 5
(assert (__prim__int___box__%precondition $Snap.unit 3))
(pop) ; 5
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 3))
(declare-const Clazz_y@22@01 $Ref)
(assert (= Clazz_y@22@01 (__prim__int___box__ $Snap.unit 3)))
; [eval] perm(_MaySet(self_4, 5360430194665457863784229955)) > none
; [eval] perm(_MaySet(self_4, 5360430194665457863784229955))
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | True | live]
; [else-branch: 2 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | True]
; [exec]
; exhale acc(_MaySet(self_4, 5360430194665457863784229955), write)
; [exec]
; inhale acc(self_4.Clazz_seq, write)
(declare-const $t@23@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_4.Clazz_seq := PSeq___create__(Seq(self_4), Clazz())
; [eval] PSeq___create__(Seq(self_4), Clazz())
; [eval] Seq(self_4)
(assert (= (Seq_length (Seq_singleton self@9@01)) 1))
; [eval] Clazz()
(set-option :timeout 0)
(push) ; 6
(assert (PSeq___create__%precondition $Snap.unit (Seq_singleton self@9@01) (as Clazz<PyType>  PyType)))
(pop) ; 6
; Joined path conditions
(assert (PSeq___create__%precondition $Snap.unit (Seq_singleton self@9@01) (as Clazz<PyType>  PyType)))
(declare-const Clazz_seq@24@01 $Ref)
(assert (=
  Clazz_seq@24@01
  (PSeq___create__ $Snap.unit (Seq_singleton self@9@01) (as Clazz<PyType>  PyType))))
; [exec]
; label __end
; [eval] issubtype(typeof(self.Clazz_x), int())
; [eval] typeof(self.Clazz_x)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> Clazz_x@20@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Clazz_x@20@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(self.Clazz_y), int())
; [eval] typeof(self.Clazz_y)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> Clazz_y@22@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Clazz_y@22@01) (as int<PyType>  PyType)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 5
; [eval] !(perm(_MaySet(self_4, 5360430194665457863784229955)) > none)
; [eval] perm(_MaySet(self_4, 5360430194665457863784229955)) > none
; [eval] perm(_MaySet(self_4, 5360430194665457863784229955))
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 5
; [else-branch: 3 | True]
(pop) ; 5
(pop) ; 4
; [eval] !(perm(_MaySet(self_4, 4443387737912808381)) > none)
; [eval] perm(_MaySet(self_4, 4443387737912808381)) > none
; [eval] perm(_MaySet(self_4, 4443387737912808381))
; [then-branch: 4 | False | dead]
; [else-branch: 4 | True | live]
(push) ; 4
; [else-branch: 4 | True]
(pop) ; 4
(pop) ; 3
; [eval] !(perm(_MaySet(self_4, 4443106262936097725)) > none)
; [eval] perm(_MaySet(self_4, 4443106262936097725)) > none
; [eval] perm(_MaySet(self_4, 4443106262936097725))
; [then-branch: 5 | False | dead]
; [else-branch: 5 | True | live]
(push) ; 3
; [else-branch: 5 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Clazz_m1 ----------
(declare-const _cthread_156@25@01 $Ref)
(declare-const _caller_measures_156@26@01 Seq<Measure$>)
(declare-const _residue_156@27@01 $Perm)
(declare-const self_0@28@01 $Ref)
(declare-const b@29@01 $Ref)
(declare-const Clazz_m1_rd@30@01 $Perm)
(declare-const _current_wait_level_156@31@01 $Perm)
(declare-const _cthread_156@32@01 $Ref)
(declare-const _caller_measures_156@33@01 Seq<Measure$>)
(declare-const _residue_156@34@01 $Perm)
(declare-const self_0@35@01 $Ref)
(declare-const b@36@01 $Ref)
(declare-const Clazz_m1_rd@37@01 $Perm)
(declare-const _current_wait_level_156@38@01 $Perm)
(push) ; 1
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 ($Snap.combine ($Snap.first $t@39@01) ($Snap.second $t@39@01))))
(assert (= ($Snap.first $t@39@01) $Snap.unit))
; [eval] none < Clazz_m1_rd
(assert (< $Perm.No Clazz_m1_rd@37@01))
(assert (=
  ($Snap.second $t@39@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@39@01))
    ($Snap.second ($Snap.second $t@39@01)))))
(assert (= ($Snap.first ($Snap.second $t@39@01)) $Snap.unit))
; [eval] Clazz_m1_rd < write
(assert (< Clazz_m1_rd@37@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@39@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@39@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@39@01))) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@32@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@39@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@32@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0), Clazz())
; [eval] typeof(self_0)
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> self_0@35@01) (as Clazz<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b@36@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))
  $Snap.unit))
; [eval] self_0 != null
(assert (not (= self_0@35@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))
  $Snap.unit))
; [eval] !object___eq__(self_0, null)
; [eval] object___eq__(self_0, null)
(push) ; 2
(assert (object___eq__%precondition $Snap.unit self_0@35@01 $Ref.null))
(pop) ; 2
; Joined path conditions
(assert (object___eq__%precondition $Snap.unit self_0@35@01 $Ref.null))
(assert (not (object___eq__ $Snap.unit self_0@35@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No Clazz_m1_rd@37@01))
(assert (<= Clazz_m1_rd@37@01 $Perm.Write))
(assert (=> (< $Perm.No Clazz_m1_rd@37@01) (not (= self_0@35@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))))
(declare-const lambda18_51$r@40@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 6 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@40@01), Clazz[PyType])) | live]
; [else-branch: 6 | issubtype[Bool](typeof[PyType](lambda18_51$r@40@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 6 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@40@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | issubtype[Bool](typeof[PyType](lambda18_51$r@40@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01)))
(pop) ; 2
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@40@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |Clazz_x-aux|)))
(push) ; 2
(assert (not (forall ((lambda18_51$r@40@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@40@01)))
    (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01)))
  
  :qid |quant-u-4778|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda18_51$r1@40@01 $Ref) (lambda18_51$r2@40@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r1@40@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda18_51$r1@40@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              lambda18_51$r1@40@01))
          (< $Perm.No Clazz_m1_rd@37@01))
        (issubtype<Bool> (typeof<PyType> lambda18_51$r2@40@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda18_51$r1@40@01 $Ref) (lambda18_51$r2@40@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r1@40@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r1@40@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r2@40@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r2@40@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (= lambda18_51$r1@40@01 lambda18_51$r2@40@01))
    (= lambda18_51$r1@40@01 lambda18_51$r2@40@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |quant-u-4779|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((inv@41@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@40@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (and
      (= (inv@41@01 lambda18_51$r@40@01) lambda18_51$r@40@01)
      (img@42@01 lambda18_51$r@40@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |quant-u-4779|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r)))
        (< $Perm.No Clazz_m1_rd@37@01)))
    (= (inv@41@01 r) r))
  :pattern ((inv@41@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_rd@37@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (<= Clazz_m1_rd@37@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda18_51$r@40@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@40@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@40@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (not (= lambda18_51$r@40@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@40@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
  $Snap.unit))
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int()))
(declare-const lambda18_51$r@43@01 $Ref)
(push) ; 2
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 7 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType])) | live]
; [else-branch: 7 | issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 7 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 7 | issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 8 | issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]) && lambda18_51$r@43@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))) | live]
; [else-branch: 8 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]) && lambda18_51$r@43@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))) | live]
(push) ; 4
; [then-branch: 8 | issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]) && lambda18_51$r@43@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01)))
; [eval] issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] typeof(lambda18_51$r.Clazz_x)
(push) ; 5
(assert (not (ite
  (and
    (img@42@01 lambda18_51$r@43@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@41@01 lambda18_51$r@43@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        (inv@41@01 lambda18_51$r@43@01))))
  (< $Perm.No Clazz_m1_rd@37@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 8 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@43@01), Clazz[PyType]) && lambda18_51$r@43@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@43@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@43@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@43@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@43@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@43@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@43@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@43@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@43@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@43@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@43@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@43@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@43@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) lambda18_51$r@43@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@43@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(assert (= ($Snap.first $t@44@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@44@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@44@01))
    ($Snap.second ($Snap.second $t@44@01)))))
(assert (= ($Snap.first ($Snap.second $t@44@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@44@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@44@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@44@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@34@01 _current_wait_level_156@38@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@44@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
(push) ; 3
(assert (not (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))))
(declare-const lambda19_50$r@45@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 4
; [then-branch: 9 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@45@01), Clazz[PyType])) | live]
; [else-branch: 9 | issubtype[Bool](typeof[PyType](lambda19_50$r@45@01), Clazz[PyType]) | live]
(push) ; 5
; [then-branch: 9 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@45@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | issubtype[Bool](typeof[PyType](lambda19_50$r@45@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01)))
(pop) ; 3
(declare-fun inv@46@01 ($Ref) $Ref)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
        lambda19_50$r@45@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |Clazz_x-aux|)))
(push) ; 3
(assert (not (forall ((lambda19_50$r@45@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
          lambda19_50$r@45@01)))
    (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01)))
  
  :qid |quant-u-4780|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@45@01 $Ref) (lambda19_50$r2@45@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@45@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@45@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
              lambda19_50$r1@45@01))
          (< $Perm.No Clazz_m1_rd@37@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@45@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 3
(assert (not (forall ((lambda19_50$r1@45@01 $Ref) (lambda19_50$r2@45@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@45@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
            lambda19_50$r1@45@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@45@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
            lambda19_50$r2@45@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (= lambda19_50$r1@45@01 lambda19_50$r2@45@01))
    (= lambda19_50$r1@45@01 lambda19_50$r2@45@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |quant-u-4781|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@47@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@46@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
  :pattern ((inv@46@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
          lambda19_50$r@45@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (and
      (= (inv@46@01 lambda19_50$r@45@01) lambda19_50$r@45@01)
      (img@47@01 lambda19_50$r@45@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |quant-u-4781|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@47@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@46@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
            (inv@46@01 r)))
        (< $Perm.No Clazz_m1_rd@37@01)))
    (= (inv@46@01 r) r))
  :pattern ((inv@46@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_rd@37@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (<= Clazz_m1_rd@37@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda19_50$r@45@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@45@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
          lambda19_50$r@45@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (not (= lambda19_50$r@45@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@45@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
  $Snap.unit))
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@48@01 $Ref)
(push) ; 3
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 4
; [then-branch: 10 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType])) | live]
; [else-branch: 10 | issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]) | live]
(push) ; 5
; [then-branch: 10 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType)))))
(push) ; 4
; [then-branch: 11 | issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]) && lambda19_50$r@48@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@44@01))))) | live]
; [else-branch: 11 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]) && lambda19_50$r@48@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@44@01)))))) | live]
(push) ; 5
; [then-branch: 11 | issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]) && lambda19_50$r@48@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@44@01)))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(push) ; 6
(assert (not (ite
  (and
    (img@47@01 lambda19_50$r@48@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@46@01 lambda19_50$r@48@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
        (inv@46@01 lambda19_50$r@48@01))))
  (< $Perm.No Clazz_m1_rd@37@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@48@01), Clazz[PyType]) && lambda19_50$r@48@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@44@01))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
      lambda19_50$r@48@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
        lambda19_50$r@48@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
      lambda19_50$r@48@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@48@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
            lambda19_50$r@48@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
          lambda19_50$r@48@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@48@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
            lambda19_50$r@48@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
          lambda19_50$r@48@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@48@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@48@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
        lambda19_50$r@48@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01)))))))) lambda19_50$r@48@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
    lambda19_50$r@48@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@49@01 $Ref)
; [exec]
; var self_5: Ref
(declare-const self_5@50@01 $Ref)
; [exec]
; var b_3: Ref
(declare-const b_3@51@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@52@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@53@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == Clazz()
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 $Snap.unit))
; [eval] typeof(self_0) == Clazz()
; [eval] typeof(self_0)
; [eval] Clazz()
(assert (= (typeof<PyType> self_0@35@01) (as Clazz<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_5 := self_0
; [exec]
; b_3 := b
; [eval] bool___unbox__(b_3)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b@36@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b@36@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b@36@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b@36@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | bool___unbox__(_, b@36@01) | live]
; [else-branch: 12 | !(bool___unbox__(_, b@36@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 12 | bool___unbox__(_, b@36@01)]
(assert (bool___unbox__ $Snap.unit b@36@01))
; [exec]
; var Clazz_m1_call_rd: Perm
(declare-const Clazz_m1_call_rd@55@01 $Perm)
; [exec]
; inhale none < Clazz_m1_call_rd && Clazz_m1_call_rd < write
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
; [eval] none < Clazz_m1_call_rd
(assert (< $Perm.No Clazz_m1_call_rd@55@01))
(assert (= ($Snap.second $t@56@01) $Snap.unit))
; [eval] Clazz_m1_call_rd < write
(assert (< Clazz_m1_call_rd@55@01 $Perm.Write))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale none < perm(self_5.Clazz_seq) ==>
;   Clazz_m1_call_rd < perm(self_5.Clazz_seq)
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] none < perm(self_5.Clazz_seq) ==> Clazz_m1_call_rd < perm(self_5.Clazz_seq)
; [eval] none < perm(self_5.Clazz_seq)
; [eval] perm(self_5.Clazz_seq)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< $Perm.No Clazz_m1_rd@37@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | Z < Clazz_m1_rd@37@01 | live]
; [else-branch: 13 | !(Z < Clazz_m1_rd@37@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | Z < Clazz_m1_rd@37@01]
; [eval] Clazz_m1_call_rd < perm(self_5.Clazz_seq)
; [eval] perm(self_5.Clazz_seq)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=> (< $Perm.No Clazz_m1_rd@37@01) (< Clazz_m1_call_rd@55@01 Clazz_m1_rd@37@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall lambda18_51$r: Ref ::
;     { (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq)) }
;     issubtype(typeof(lambda18_51$r), Clazz()) &&
;     (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq)) ==>
;     none < perm(lambda18_51$r.Clazz_x) ==>
;     Clazz_m1_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const lambda18_51$r@59@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 14 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType])) | live]
; [else-branch: 14 | issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 14 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 14 | issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_5.Clazz_seq))
; [eval] PSeq___sil_seq__(self_5.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 15 | issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]) && lambda18_51$r@59@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))) | live]
; [else-branch: 15 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]) && lambda18_51$r@59@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))) | live]
(push) ; 6
; [then-branch: 15 | issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]) && lambda18_51$r@59@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01)))
; [eval] none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] none < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
(declare-const pm@60@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@60@01  $FPM) r)
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      Clazz_m1_rd@37@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef0|)))
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(assert (<= ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01) $Perm.Write))
(push) ; 7
; [then-branch: 16 | Z < PermLookup(Clazz_x, pm@60@01, lambda18_51$r@59@01) | live]
; [else-branch: 16 | !(Z < PermLookup(Clazz_x, pm@60@01, lambda18_51$r@59@01)) | live]
(push) ; 8
; [then-branch: 16 | Z < PermLookup(Clazz_x, pm@60@01, lambda18_51$r@59@01)]
(assert (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
; [eval] Clazz_m1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(pop) ; 8
(push) ; 8
; [else-branch: 16 | !(Z < PermLookup(Clazz_x, pm@60@01, lambda18_51$r@59@01))]
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
  (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 15 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@59@01), Clazz[PyType]) && lambda18_51$r@59@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@59@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@60@01  $FPM) r)
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      Clazz_m1_rd@37@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef0|)))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@59@01))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@59@01)
    (<= ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01) $Perm.Write)
    (or
      (not
        (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@59@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@59@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@60@01  $FPM) r)
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      Clazz_m1_rd@37@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef0|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@59@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@59@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@958@13@958@288-aux|)))
(assert (forall ((lambda18_51$r@59@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@59@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@958@13@958@288-aux|)))
(assert (forall ((lambda18_51$r@59@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@59@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@59@01))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
    (<
      Clazz_m1_call_rd@55@01
      ($FVF.perm_Clazz_x (as pm@60@01  $FPM) lambda18_51$r@59@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@59@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@958@13@958@288|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_156 := Clazz_m1(_cthread_156, _method_measures_156, _residue_156, self_5,
;   b_3, Clazz_m1_call_rd)
; [eval] none < Clazz_m1_rd
; [eval] Clazz_m1_rd < write
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_0), Clazz())
; [eval] typeof(self_0)
; [eval] Clazz()
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
; [eval] self_0 != null
; [eval] !object___eq__(self_0, null)
; [eval] object___eq__(self_0, null)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or (= Clazz_m1_call_rd@55@01 $Perm.No) (< $Perm.No Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))))
(assert (<=
  (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01)))
  (not (= self_0@35@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_call_rd@55@01
      ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_call_rd@55@01
      ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda18_51$r@61@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 17 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@61@01), Clazz[PyType])) | live]
; [else-branch: 17 | issubtype[Bool](typeof[PyType](lambda18_51$r@61@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 17 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@61@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | issubtype[Bool](typeof[PyType](lambda18_51$r@61@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01)))
(pop) ; 4
(declare-fun inv@62@01 ($Ref) $Ref)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda18_51$r@61@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@61@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@61@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@61@01)))
    (or (= Clazz_m1_call_rd@55@01 $Perm.No) (< $Perm.No Clazz_m1_call_rd@55@01)))
  
  :qid |quant-u-4782|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda18_51$r1@61@01 $Ref) (lambda18_51$r2@61@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r1@61@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda18_51$r1@61@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              lambda18_51$r1@61@01))
          (< $Perm.No Clazz_m1_call_rd@55@01))
        (issubtype<Bool> (typeof<PyType> lambda18_51$r2@61@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r1@61@01 $Ref) (lambda18_51$r2@61@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r1@61@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r1@61@01))
        (< $Perm.No Clazz_m1_call_rd@55@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r2@61@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r2@61@01))
        (< $Perm.No Clazz_m1_call_rd@55@01))
      (= lambda18_51$r1@61@01 lambda18_51$r2@61@01))
    (= lambda18_51$r1@61@01 lambda18_51$r2@61@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda18_51$r@61@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@63@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@62@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((inv@62@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda18_51$r@61@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@61@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@61@01))
      (< $Perm.No Clazz_m1_call_rd@55@01))
    (and
      (= (inv@62@01 lambda18_51$r@61@01) lambda18_51$r@61@01)
      (img@63@01 lambda18_51$r@61@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@61@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@63@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@62@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@62@01 r)))
        (< $Perm.No Clazz_m1_call_rd@55@01)))
    (= (inv@62@01 r) r))
  :pattern ((inv@62@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@62@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          (inv@62@01 r)))
      (img@63@01 r)
      (= r (inv@62@01 r)))
    ($Perm.min
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        Clazz_m1_rd@37@01
        $Perm.No)
      Clazz_m1_call_rd@55@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        Clazz_m1_rd@37@01
        $Perm.No)
      (pTaken@64@01 r))
    $Perm.No)
  
  :qid |quant-u-4784|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@64@01 r) $Perm.No)
  
  :qid |quant-u-4785|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@62@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          (inv@62@01 r)))
      (img@63@01 r)
      (= r (inv@62@01 r)))
    (= (- Clazz_m1_call_rd@55@01 (pTaken@64@01 r)) $Perm.No))
  
  :qid |quant-u-4786|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int()))
(declare-const lambda18_51$r@65@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 18 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType])) | live]
; [else-branch: 18 | issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 18 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 18 | issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 19 | issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]) && lambda18_51$r@65@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))) | live]
; [else-branch: 19 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]) && lambda18_51$r@65@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))) | live]
(push) ; 6
; [then-branch: 19 | issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]) && lambda18_51$r@65@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01)))
; [eval] issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] typeof(lambda18_51$r.Clazz_x)
(push) ; 7
(assert (not (ite
  (and
    (img@42@01 lambda18_51$r@65@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@41@01 lambda18_51$r@65@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        (inv@41@01 lambda18_51$r@65@01))))
  (< $Perm.No Clazz_m1_rd@37@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 19 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@65@01), Clazz[PyType]) && lambda18_51$r@65@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@65@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@65@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda18_51$r@65@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@65@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@65@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@65@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@65@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda18_51$r@65@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@65@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@65@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586_precondition|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@65@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda18_51$r@65@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) lambda18_51$r@65@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda18_51$r@65@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@65@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda18_51$r@65@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) lambda18_51$r@65@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda18_51$r@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@66@01 $Perm)
(declare-const $t@67@01 $Snap)
(assert (= $t@67@01 ($Snap.combine ($Snap.first $t@67@01) ($Snap.second $t@67@01))))
(assert (= ($Snap.first $t@67@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@67@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@67@01))
    ($Snap.second ($Snap.second $t@67@01)))))
(assert (= ($Snap.first ($Snap.second $t@67@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@67@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@67@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@67@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@34@01 _current_wait_level_156@66@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@67@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
(push) ; 4
(assert (not (or (= Clazz_m1_call_rd@55@01 $Perm.No) (< $Perm.No Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@68@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01)))
    (=
      $t@68@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  (=>
    (< $Perm.No Clazz_m1_call_rd@55@01)
    (=
      $t@68@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
(assert (<=
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01)))
(assert (<=
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
      Clazz_m1_call_rd@55@01))
  (not (= self_0@35@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))))
(declare-const lambda19_50$r@69@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 20 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@69@01), Clazz[PyType])) | live]
; [else-branch: 20 | issubtype[Bool](typeof[PyType](lambda19_50$r@69@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 20 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@69@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | issubtype[Bool](typeof[PyType](lambda19_50$r@69@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@69@01)))
(pop) ; 4
(declare-fun inv@70@01 ($Ref) $Ref)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@69@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@69@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@69@01)))
    (or (= Clazz_m1_call_rd@55@01 $Perm.No) (< $Perm.No Clazz_m1_call_rd@55@01)))
  
  :qid |quant-u-4787|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@69@01 $Ref) (lambda19_50$r2@69@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@69@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@69@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@68@01)
              lambda19_50$r1@69@01))
          (< $Perm.No Clazz_m1_call_rd@55@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@69@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@69@01 $Ref) (lambda19_50$r2@69@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@69@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r1@69@01))
        (< $Perm.No Clazz_m1_call_rd@55@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@69@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r2@69@01))
        (< $Perm.No Clazz_m1_call_rd@55@01))
      (= lambda19_50$r1@69@01 lambda19_50$r2@69@01))
    (= lambda19_50$r1@69@01 lambda19_50$r2@69@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |quant-u-4788|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@71@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
  :pattern ((inv@70@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@69@01))
      (< $Perm.No Clazz_m1_call_rd@55@01))
    (and
      (= (inv@70@01 lambda19_50$r@69@01) lambda19_50$r@69@01)
      (img@71@01 lambda19_50$r@69@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |quant-u-4788|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@71@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r)))
        (< $Perm.No Clazz_m1_call_rd@55@01)))
    (= (inv@70@01 r) r))
  :pattern ((inv@70@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_call_rd@55@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (<= Clazz_m1_call_rd@55@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda19_50$r@69@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@69@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@69@01))
      (< $Perm.No Clazz_m1_call_rd@55@01))
    (not (= lambda19_50$r@69@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@69@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda19_50$r@69@01 lambda18_51$r@40@01)
    (=
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))))
  
  :qid |quant-u-4789|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  $Snap.unit))
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@72@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 21 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType])) | live]
; [else-branch: 21 | issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 21 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 21 | issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 22 | issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]) && lambda19_50$r@72@01 in PSeq___sil_seq__(_, $t@68@01) | live]
; [else-branch: 22 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]) && lambda19_50$r@72@01 in PSeq___sil_seq__(_, $t@68@01)) | live]
(push) ; 6
; [then-branch: 22 | issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]) && lambda19_50$r@72@01 in PSeq___sil_seq__(_, $t@68@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(declare-const sm@73@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (< $Perm.No Clazz_m1_call_rd@55@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@74@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (- Clazz_m1_rd@37@01 (pTaken@64@01 r))
        $Perm.No)
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        Clazz_m1_call_rd@55@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@74@01  $FPM) lambda19_50$r@72@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 22 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@72@01), Clazz[PyType]) && lambda19_50$r@72@01 in PSeq___sil_seq__(_, $t@68@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (< $Perm.No Clazz_m1_call_rd@55@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (- Clazz_m1_rd@37@01 (pTaken@64@01 r))
        $Perm.No)
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        Clazz_m1_call_rd@55@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (< $Perm.No Clazz_m1_call_rd@55@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@74@01  $FPM) r)
    (+
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (- Clazz_m1_rd@37@01 (pTaken@64@01 r))
        $Perm.No)
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        Clazz_m1_call_rd@55@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@74@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@72@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r@72@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@72@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@72@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r@72@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@72@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@72@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@72@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) lambda19_50$r@72@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@72@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
      Clazz_m1_call_rd@55@01)
    ($Perm.min
      (+
        (-
          Clazz_m1_rd@37@01
          ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
        Clazz_m1_call_rd@55@01)
      Clazz_m1_rd@37@01))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_rd@37@01
      ($Perm.min
        (+
          (-
            Clazz_m1_rd@37@01
            ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
          Clazz_m1_call_rd@55@01)
        Clazz_m1_rd@37@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_rd@37@01
      ($Perm.min
        (+
          (-
            Clazz_m1_rd@37@01
            ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
          Clazz_m1_call_rd@55@01)
        Clazz_m1_rd@37@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda19_50$r@75@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 23 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@75@01), Clazz[PyType])) | live]
; [else-branch: 23 | issubtype[Bool](typeof[PyType](lambda19_50$r@75@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 23 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@75@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | issubtype[Bool](typeof[PyType](lambda19_50$r@75@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@75@01)))
(pop) ; 4
(declare-fun inv@76@01 ($Ref) $Ref)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@75@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@75@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@75@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@75@01)))
    (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01)))
  
  :qid |quant-u-4790|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@75@01 $Ref) (lambda19_50$r2@75@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@75@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@75@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@68@01)
              lambda19_50$r1@75@01))
          (< $Perm.No Clazz_m1_rd@37@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@75@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@75@01 $Ref) (lambda19_50$r2@75@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@75@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r1@75@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@75@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r2@75@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (= lambda19_50$r1@75@01 lambda19_50$r2@75@01))
    (= lambda19_50$r1@75@01 lambda19_50$r2@75@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@75@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
  :pattern ((inv@76@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@75@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@75@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@75@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (and
      (= (inv@76@01 lambda19_50$r@75@01) lambda19_50$r@75@01)
      (img@77@01 lambda19_50$r@75@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@75@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@77@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@76@01 r)))
        (< $Perm.No Clazz_m1_rd@37@01)))
    (= (inv@76@01 r) r))
  :pattern ((inv@76@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@78@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@76@01 r)))
      (img@77@01 r)
      (= r (inv@76@01 r)))
    ($Perm.min
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (- Clazz_m1_rd@37@01 (pTaken@64@01 r))
        $Perm.No)
      Clazz_m1_rd@37@01)
    $Perm.No))
(define-fun pTaken@79@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@76@01 r)))
      (img@77@01 r)
      (= r (inv@76@01 r)))
    ($Perm.min
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        Clazz_m1_call_rd@55@01
        $Perm.No)
      (- Clazz_m1_rd@37@01 (pTaken@78@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (- Clazz_m1_rd@37@01 (pTaken@64@01 r))
        $Perm.No)
      (pTaken@78@01 r))
    $Perm.No)
  
  :qid |quant-u-4792|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@76@01 r)))
      (img@77@01 r)
      (= r (inv@76@01 r)))
    (= (- Clazz_m1_rd@37@01 (pTaken@78@01 r)) $Perm.No))
  
  :qid |quant-u-4793|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        Clazz_m1_call_rd@55@01
        $Perm.No)
      (pTaken@79@01 r))
    $Perm.No)
  
  :qid |quant-u-4794|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@76@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@76@01 r)))
      (img@77@01 r)
      (= r (inv@76@01 r)))
    (= (- (- Clazz_m1_rd@37@01 (pTaken@78@01 r)) (pTaken@79@01 r)) $Perm.No))
  
  :qid |quant-u-4795|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@80@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 24 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType])) | live]
; [else-branch: 24 | issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 24 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (- Clazz_m1_rd@37@01 ($Perm.min Clazz_m1_rd@37@01 Clazz_m1_call_rd@55@01))
    Clazz_m1_call_rd@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 25 | issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]) && lambda19_50$r@80@01 in PSeq___sil_seq__(_, $t@68@01) | live]
; [else-branch: 25 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]) && lambda19_50$r@80@01 in PSeq___sil_seq__(_, $t@68@01)) | live]
(push) ; 6
; [then-branch: 25 | issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]) && lambda19_50$r@80@01 in PSeq___sil_seq__(_, $t@68@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
        false)
      (=
        ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@71@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
        (< $Perm.No Clazz_m1_call_rd@55@01)
        false)
      (=
        ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
    :qid |qp.fvfValDef2|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@42@01 lambda19_50$r@80@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 lambda19_50$r@80@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 lambda19_50$r@80@01))))
      (- Clazz_m1_rd@37@01 (pTaken@64@01 lambda19_50$r@80@01))
      $Perm.No)
    (ite
      (and
        (img@71@01 lambda19_50$r@80@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 lambda19_50$r@80@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            (inv@70@01 lambda19_50$r@80@01))))
      Clazz_m1_call_rd@55@01
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 25 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@80@01), Clazz[PyType]) && lambda19_50$r@80@01 in PSeq___sil_seq__(_, $t@68@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (< $Perm.No Clazz_m1_call_rd@55@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@42@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@41@01 r))))
      (< $Perm.No (- Clazz_m1_rd@37@01 (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@71@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@70@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) (inv@70@01 r))))
      (< $Perm.No Clazz_m1_call_rd@55@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@67@01)))))))) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@80@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r@80@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@80@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@68@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@68@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@68@01)
            lambda19_50$r@80@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@80@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585_precondition|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@80@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@68@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) lambda19_50$r@80@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda19_50$r@80@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@80@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@68@01) lambda19_50$r@80@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@73@01  $FVF<Clazz_x>) lambda19_50$r@80@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@68@01)
    lambda19_50$r@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 12 | !(bool___unbox__(_, b@36@01))]
(assert (not (bool___unbox__ $Snap.unit b@36@01)))
(pop) ; 3
; [eval] !bool___unbox__(b_3)
; [eval] bool___unbox__(b_3)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b@36@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b@36@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | !(bool___unbox__(_, b@36@01)) | live]
; [else-branch: 26 | bool___unbox__(_, b@36@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 26 | !(bool___unbox__(_, b@36@01))]
(assert (not (bool___unbox__ $Snap.unit b@36@01)))
; [exec]
; label __end
(push) ; 4
(assert (not (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda19_50$r@81@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 27 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@81@01), Clazz[PyType])) | live]
; [else-branch: 27 | issubtype[Bool](typeof[PyType](lambda19_50$r@81@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 27 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@81@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | issubtype[Bool](typeof[PyType](lambda19_50$r@81@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01)))
(pop) ; 4
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@81@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda19_50$r@81@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@81@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda19_50$r@81@01)))
    (or (= Clazz_m1_rd@37@01 $Perm.No) (< $Perm.No Clazz_m1_rd@37@01)))
  
  :qid |quant-u-4796|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@81@01 $Ref) (lambda19_50$r2@81@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@81@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@81@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              lambda19_50$r1@81@01))
          (< $Perm.No Clazz_m1_rd@37@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@81@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@81@01 $Ref) (lambda19_50$r2@81@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@81@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda19_50$r1@81@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@81@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda19_50$r2@81@01))
        (< $Perm.No Clazz_m1_rd@37@01))
      (= lambda19_50$r1@81@01 lambda19_50$r2@81@01))
    (= lambda19_50$r1@81@01 lambda19_50$r2@81@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@81@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@83@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@82@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((inv@82@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@81@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@81@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda19_50$r@81@01))
      (< $Perm.No Clazz_m1_rd@37@01))
    (and
      (= (inv@82@01 lambda19_50$r@81@01) lambda19_50$r@81@01)
      (img@83@01 lambda19_50$r@81@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@81@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@83@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@82@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            (inv@82@01 r)))
        (< $Perm.No Clazz_m1_rd@37@01)))
    (= (inv@82@01 r) r))
  :pattern ((inv@82@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@84@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@82@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          (inv@82@01 r)))
      (img@83@01 r)
      (= r (inv@82@01 r)))
    ($Perm.min
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        Clazz_m1_rd@37@01
        $Perm.No)
      Clazz_m1_rd@37@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@42@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@41@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
              (inv@41@01 r))))
        Clazz_m1_rd@37@01
        $Perm.No)
      (pTaken@84@01 r))
    $Perm.No)
  
  :qid |quant-u-4798|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@82@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          (inv@82@01 r)))
      (img@83@01 r)
      (= r (inv@82@01 r)))
    (= (- Clazz_m1_rd@37@01 (pTaken@84@01 r)) $Perm.No))
  
  :qid |quant-u-4799|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@85@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 28 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType])) | live]
; [else-branch: 28 | issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 28 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_rd@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 29 | issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]) && lambda19_50$r@85@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))) | live]
; [else-branch: 29 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]) && lambda19_50$r@85@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))) | live]
(push) ; 6
; [then-branch: 29 | issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]) && lambda19_50$r@85@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(push) ; 7
(assert (not (ite
  (and
    (img@42@01 lambda19_50$r@85@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@41@01 lambda19_50$r@85@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        (inv@41@01 lambda19_50$r@85@01))))
  (< $Perm.No Clazz_m1_rd@37@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 29 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@85@01), Clazz[PyType]) && lambda19_50$r@85@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@39@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda19_50$r@85@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda19_50$r@85@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
      lambda19_50$r@85@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@85@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda19_50$r@85@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda19_50$r@85@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@85@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
            lambda19_50$r@85@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda19_50$r@85@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@85@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585_precondition|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@85@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
          lambda19_50$r@85@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) lambda19_50$r@85@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda19_50$r@85@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@85@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
        lambda19_50$r@85@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01))))))))))))) lambda19_50$r@85@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@39@01)))))))))))
    lambda19_50$r@85@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 26 | bool___unbox__(_, b@36@01)]
(assert (bool___unbox__ $Snap.unit b@36@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Clazz_m1_1 ----------
(declare-const _cthread_157@86@01 $Ref)
(declare-const _caller_measures_157@87@01 Seq<Measure$>)
(declare-const _residue_157@88@01 $Perm)
(declare-const self_1@89@01 $Ref)
(declare-const b_0@90@01 $Ref)
(declare-const Clazz_m1_1_rd@91@01 $Perm)
(declare-const _current_wait_level_157@92@01 $Perm)
(declare-const _cthread_157@93@01 $Ref)
(declare-const _caller_measures_157@94@01 Seq<Measure$>)
(declare-const _residue_157@95@01 $Perm)
(declare-const self_1@96@01 $Ref)
(declare-const b_0@97@01 $Ref)
(declare-const Clazz_m1_1_rd@98@01 $Perm)
(declare-const _current_wait_level_157@99@01 $Perm)
(push) ; 1
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 ($Snap.combine ($Snap.first $t@100@01) ($Snap.second $t@100@01))))
(assert (= ($Snap.first $t@100@01) $Snap.unit))
; [eval] none < Clazz_m1_1_rd
(assert (< $Perm.No Clazz_m1_1_rd@98@01))
(assert (=
  ($Snap.second $t@100@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@100@01))
    ($Snap.second ($Snap.second $t@100@01)))))
(assert (= ($Snap.first ($Snap.second $t@100@01)) $Snap.unit))
; [eval] Clazz_m1_1_rd < write
(assert (< Clazz_m1_1_rd@98@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@100@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@100@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@100@01))) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@93@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@100@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@93@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1), Clazz())
; [eval] typeof(self_1)
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> self_1@96@01) (as Clazz<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b_0), bool())
; [eval] typeof(b_0)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b_0@97@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
  $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@96@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
  $Snap.unit))
; [eval] !object___eq__(self_1, null)
; [eval] object___eq__(self_1, null)
(push) ; 2
(assert (object___eq__%precondition $Snap.unit self_1@96@01 $Ref.null))
(pop) ; 2
; Joined path conditions
(assert (object___eq__%precondition $Snap.unit self_1@96@01 $Ref.null))
(assert (not (object___eq__ $Snap.unit self_1@96@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No Clazz_m1_1_rd@98@01))
(assert (<= Clazz_m1_1_rd@98@01 $Perm.Write))
(assert (=> (< $Perm.No Clazz_m1_1_rd@98@01) (not (= self_1@96@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_1.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))))
(declare-const lambda25_51$r@101@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda25_51$r), Clazz()) && (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda25_51$r), Clazz())
; [eval] typeof(lambda25_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 30 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@101@01), Clazz[PyType])) | live]
; [else-branch: 30 | issubtype[Bool](typeof[PyType](lambda25_51$r@101@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 30 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@101@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 30 | issubtype[Bool](typeof[PyType](lambda25_51$r@101@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01)))
(pop) ; 2
(declare-fun inv@102@01 ($Ref) $Ref)
(declare-fun img@103@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda25_51$r@101@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |Clazz_x-aux|)))
(push) ; 2
(assert (not (forall ((lambda25_51$r@101@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda25_51$r@101@01)))
    (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01)))
  
  :qid |quant-u-4800|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda25_51$r1@101@01 $Ref) (lambda25_51$r2@101@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_51$r1@101@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda25_51$r1@101@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              lambda25_51$r1@101@01))
          (< $Perm.No Clazz_m1_1_rd@98@01))
        (issubtype<Bool> (typeof<PyType> lambda25_51$r2@101@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda25_51$r1@101@01 $Ref) (lambda25_51$r2@101@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_51$r1@101@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda25_51$r1@101@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_51$r2@101@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda25_51$r2@101@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (= lambda25_51$r1@101@01 lambda25_51$r2@101@01))
    (= lambda25_51$r1@101@01 lambda25_51$r2@101@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |quant-u-4801|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  :pattern ((inv@102@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda25_51$r@101@01))
      (< $Perm.No Clazz_m1_1_rd@98@01))
    (and
      (= (inv@102@01 lambda25_51$r@101@01) lambda25_51$r@101@01)
      (img@103@01 lambda25_51$r@101@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |quant-u-4801|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@103@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r)))
        (< $Perm.No Clazz_m1_1_rd@98@01)))
    (= (inv@102@01 r) r))
  :pattern ((inv@102@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_1_rd@98@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (<= Clazz_m1_1_rd@98@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda25_51$r@101@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@101@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda25_51$r@101@01))
      (< $Perm.No Clazz_m1_1_rd@98@01))
    (not (= lambda25_51$r@101@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@101@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  $Snap.unit))
; [eval] (forall lambda25_51$r: Ref :: { (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq)) } issubtype(typeof(lambda25_51$r), Clazz()) && (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda25_51$r.Clazz_x), int()))
(declare-const lambda25_51$r@104@01 $Ref)
(push) ; 2
; [eval] issubtype(typeof(lambda25_51$r), Clazz()) && (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda25_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda25_51$r), Clazz()) && (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda25_51$r), Clazz())
; [eval] typeof(lambda25_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 31 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType])) | live]
; [else-branch: 31 | issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 31 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda25_51$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 32 | issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]) && lambda25_51$r@104@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))) | live]
; [else-branch: 32 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]) && lambda25_51$r@104@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))) | live]
(push) ; 4
; [then-branch: 32 | issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]) && lambda25_51$r@104@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01)))
; [eval] issubtype(typeof(lambda25_51$r.Clazz_x), int())
; [eval] typeof(lambda25_51$r.Clazz_x)
(push) ; 5
(assert (not (ite
  (and
    (img@103@01 lambda25_51$r@104@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@102@01 lambda25_51$r@104@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        (inv@102@01 lambda25_51$r@104@01))))
  (< $Perm.No Clazz_m1_1_rd@98@01)
  false)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !(issubtype[Bool](typeof[PyType](lambda25_51$r@104@01), Clazz[PyType]) && lambda25_51$r@104@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda25_51$r@104@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda25_51$r@104@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda25_51$r@104@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda25_51$r@104@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda25_51$r@104@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda25_51$r@104@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@973@353@973@590-aux|)))
(assert (forall ((lambda25_51$r@104@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda25_51$r@104@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda25_51$r@104@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@973@353@973@590-aux|)))
(assert (forall ((lambda25_51$r@104@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda25_51$r@104@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda25_51$r@104@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) lambda25_51$r@104@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda25_51$r@104@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@973@353@973@590|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@105@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@105@01))
    ($Snap.second ($Snap.second $t@105@01)))))
(assert (= ($Snap.first ($Snap.second $t@105@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@105@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@105@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@105@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@95@01 _current_wait_level_157@99@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@105@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
(push) ; 3
(assert (not (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_1.Clazz_seq)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))
(declare-const lambda26_50$r@106@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda26_50$r), Clazz())
; [eval] typeof(lambda26_50$r)
; [eval] Clazz()
(push) ; 4
; [then-branch: 33 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@106@01), Clazz[PyType])) | live]
; [else-branch: 33 | issubtype[Bool](typeof[PyType](lambda26_50$r@106@01), Clazz[PyType]) | live]
(push) ; 5
; [then-branch: 33 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@106@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | issubtype[Bool](typeof[PyType](lambda26_50$r@106@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01)))
(pop) ; 3
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
        lambda26_50$r@106@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |Clazz_x-aux|)))
(push) ; 3
(assert (not (forall ((lambda26_50$r@106@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
          lambda26_50$r@106@01)))
    (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01)))
  
  :qid |quant-u-4802|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda26_50$r1@106@01 $Ref) (lambda26_50$r2@106@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r1@106@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda26_50$r1@106@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
              lambda26_50$r1@106@01))
          (< $Perm.No Clazz_m1_1_rd@98@01))
        (issubtype<Bool> (typeof<PyType> lambda26_50$r2@106@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 3
(assert (not (forall ((lambda26_50$r1@106@01 $Ref) (lambda26_50$r2@106@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r1@106@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
            lambda26_50$r1@106@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r2@106@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
            lambda26_50$r2@106@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (= lambda26_50$r1@106@01 lambda26_50$r2@106@01))
    (= lambda26_50$r1@106@01 lambda26_50$r2@106@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |quant-u-4803|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@108@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@107@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  :pattern ((inv@107@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
          lambda26_50$r@106@01))
      (< $Perm.No Clazz_m1_1_rd@98@01))
    (and
      (= (inv@107@01 lambda26_50$r@106@01) lambda26_50$r@106@01)
      (img@108@01 lambda26_50$r@106@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |quant-u-4803|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@108@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@107@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
            (inv@107@01 r)))
        (< $Perm.No Clazz_m1_1_rd@98@01)))
    (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_1_rd@98@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (<= Clazz_m1_1_rd@98@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda26_50$r@106@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@106@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
          lambda26_50$r@106@01))
      (< $Perm.No Clazz_m1_1_rd@98@01))
    (not (= lambda26_50$r@106@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@106@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
  $Snap.unit))
; [eval] (forall lambda26_50$r: Ref :: { (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) } issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda26_50$r.Clazz_x), int()))
(declare-const lambda26_50$r@109@01 $Ref)
(push) ; 3
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda26_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda26_50$r), Clazz())
; [eval] typeof(lambda26_50$r)
; [eval] Clazz()
(push) ; 4
; [then-branch: 34 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType])) | live]
; [else-branch: 34 | issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]) | live]
(push) ; 5
; [then-branch: 34 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType)))))
(push) ; 4
; [then-branch: 35 | issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]) && lambda26_50$r@109@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@105@01))))) | live]
; [else-branch: 35 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]) && lambda26_50$r@109@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@105@01)))))) | live]
(push) ; 5
; [then-branch: 35 | issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]) && lambda26_50$r@109@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@105@01)))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01)))
; [eval] issubtype(typeof(lambda26_50$r.Clazz_x), int())
; [eval] typeof(lambda26_50$r.Clazz_x)
(push) ; 6
(assert (not (ite
  (and
    (img@108@01 lambda26_50$r@109@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@107@01 lambda26_50$r@109@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
        (inv@107@01 lambda26_50$r@109@01))))
  (< $Perm.No Clazz_m1_1_rd@98@01)
  false)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 5
(push) ; 5
; [else-branch: 35 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@109@01), Clazz[PyType]) && lambda26_50$r@109@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:($t@105@01))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
      lambda26_50$r@109@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
        lambda26_50$r@109@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
      lambda26_50$r@109@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda26_50$r@109@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
            lambda26_50$r@109@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
          lambda26_50$r@109@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589-aux|)))
(assert (forall ((lambda26_50$r@109@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
            lambda26_50$r@109@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
          lambda26_50$r@109@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589-aux|)))
(assert (forall ((lambda26_50$r@109@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@109@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
        lambda26_50$r@109@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))) lambda26_50$r@109@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
    lambda26_50$r@109@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
  $Snap.unit))
(assert false)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@110@01 $Ref)
; [exec]
; var self_6: Ref
(declare-const self_6@111@01 $Ref)
; [exec]
; var b_4: Ref
(declare-const b_4@112@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@113@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@114@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_1) == Clazz()
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] typeof(self_1) == Clazz()
; [eval] typeof(self_1)
; [eval] Clazz()
(assert (= (typeof<PyType> self_1@96@01) (as Clazz<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_6 := self_1
; [exec]
; b_4 := b_0
; [eval] bool___unbox__(b_4)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b_0@97@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b_0@97@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_0@97@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_0@97@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | bool___unbox__(_, b_0@97@01) | live]
; [else-branch: 36 | !(bool___unbox__(_, b_0@97@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 36 | bool___unbox__(_, b_0@97@01)]
(assert (bool___unbox__ $Snap.unit b_0@97@01))
; [exec]
; var Clazz_m1_0_call_rd: Perm
(declare-const Clazz_m1_0_call_rd@116@01 $Perm)
; [exec]
; inhale none < Clazz_m1_0_call_rd && Clazz_m1_0_call_rd < write
(declare-const $t@117@01 $Snap)
(assert (= $t@117@01 ($Snap.combine ($Snap.first $t@117@01) ($Snap.second $t@117@01))))
(assert (= ($Snap.first $t@117@01) $Snap.unit))
; [eval] none < Clazz_m1_0_call_rd
(assert (< $Perm.No Clazz_m1_0_call_rd@116@01))
(assert (= ($Snap.second $t@117@01) $Snap.unit))
; [eval] Clazz_m1_0_call_rd < write
(assert (< Clazz_m1_0_call_rd@116@01 $Perm.Write))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale none < perm(self_6.Clazz_seq) ==>
;   Clazz_m1_0_call_rd < perm(self_6.Clazz_seq)
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 $Snap.unit))
; [eval] none < perm(self_6.Clazz_seq) ==> Clazz_m1_0_call_rd < perm(self_6.Clazz_seq)
; [eval] none < perm(self_6.Clazz_seq)
; [eval] perm(self_6.Clazz_seq)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< $Perm.No Clazz_m1_1_rd@98@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | Z < Clazz_m1_1_rd@98@01 | live]
; [else-branch: 37 | !(Z < Clazz_m1_1_rd@98@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 37 | Z < Clazz_m1_1_rd@98@01]
; [eval] Clazz_m1_0_call_rd < perm(self_6.Clazz_seq)
; [eval] perm(self_6.Clazz_seq)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (< $Perm.No Clazz_m1_1_rd@98@01)
  (< Clazz_m1_0_call_rd@116@01 Clazz_m1_1_rd@98@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall lambda18_51$r: Ref ::
;     { (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq)) }
;     issubtype(typeof(lambda18_51$r), Clazz()) &&
;     (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq)) ==>
;     none < perm(lambda18_51$r.Clazz_x) ==>
;     Clazz_m1_0_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 $Snap.unit))
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_0_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const lambda18_51$r@120@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_0_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 38 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType])) | live]
; [else-branch: 38 | issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 38 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 38 | issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_6.Clazz_seq))
; [eval] PSeq___sil_seq__(self_6.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 39 | issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]) && lambda18_51$r@120@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))) | live]
; [else-branch: 39 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]) && lambda18_51$r@120@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))) | live]
(push) ; 6
; [then-branch: 39 | issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]) && lambda18_51$r@120@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01)))
; [eval] none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_0_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] none < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
(declare-const pm@121@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@121@01  $FPM) r)
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      Clazz_m1_1_rd@98@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(assert (<= ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01) $Perm.Write))
(push) ; 7
; [then-branch: 40 | Z < PermLookup(Clazz_x, pm@121@01, lambda18_51$r@120@01) | live]
; [else-branch: 40 | !(Z < PermLookup(Clazz_x, pm@121@01, lambda18_51$r@120@01)) | live]
(push) ; 8
; [then-branch: 40 | Z < PermLookup(Clazz_x, pm@121@01, lambda18_51$r@120@01)]
(assert (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
; [eval] Clazz_m1_0_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(pop) ; 8
(push) ; 8
; [else-branch: 40 | !(Z < PermLookup(Clazz_x, pm@121@01, lambda18_51$r@120@01))]
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
  (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 39 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@120@01), Clazz[PyType]) && lambda18_51$r@120@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@120@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@121@01  $FPM) r)
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      Clazz_m1_1_rd@98@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@120@01))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@120@01)
    (<=
      ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)
      $Perm.Write)
    (or
      (not
        (<
          $Perm.No
          ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda18_51$r@120@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@120@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@121@01  $FPM) r)
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      Clazz_m1_1_rd@98@01
      $Perm.No))
  :pattern (($FVF.perm_Clazz_x (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@120@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r@120@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@994@13@994@290-aux|)))
(assert (forall ((lambda18_51$r@120@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r@120@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@994@13@994@290-aux|)))
(assert (forall ((lambda18_51$r@120@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@120@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@120@01))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
    (<
      Clazz_m1_0_call_rd@116@01
      ($FVF.perm_Clazz_x (as pm@121@01  $FPM) lambda18_51$r@120@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@994@13@994@290|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_157 := Clazz_m1(_cthread_157, _method_measures_157, _residue_157, self_6,
;   b_4, Clazz_m1_0_call_rd)
; [eval] none < Clazz_m1_rd
; [eval] Clazz_m1_rd < write
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_0), Clazz())
; [eval] typeof(self_0)
; [eval] Clazz()
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
; [eval] self_0 != null
; [eval] !object___eq__(self_0, null)
; [eval] object___eq__(self_0, null)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or
  (= Clazz_m1_0_call_rd@116@01 $Perm.No)
  (< $Perm.No Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    Clazz_m1_1_rd@98@01
    ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    Clazz_m1_1_rd@98@01
    ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))))
(assert (<=
  (-
    Clazz_m1_1_rd@98@01
    ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01)))
  (not (= self_1@96@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_0_call_rd@116@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_0_call_rd@116@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda18_51$r@122@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 41 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@122@01), Clazz[PyType])) | live]
; [else-branch: 41 | issubtype[Bool](typeof[PyType](lambda18_51$r@122@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 41 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@122@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 41 | issubtype[Bool](typeof[PyType](lambda18_51$r@122@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01)))
(pop) ; 4
(declare-fun inv@123@01 ($Ref) $Ref)
(declare-fun img@124@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda18_51$r@122@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda18_51$r@122@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@122@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@122@01)))
    (or
      (= Clazz_m1_0_call_rd@116@01 $Perm.No)
      (< $Perm.No Clazz_m1_0_call_rd@116@01)))
  
  :qid |quant-u-4804|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda18_51$r1@122@01 $Ref) (lambda18_51$r2@122@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r1@122@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda18_51$r1@122@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              lambda18_51$r1@122@01))
          (< $Perm.No Clazz_m1_0_call_rd@116@01))
        (issubtype<Bool> (typeof<PyType> lambda18_51$r2@122@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r1@122@01 $Ref) (lambda18_51$r2@122@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r1@122@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r1@122@01))
        (< $Perm.No Clazz_m1_0_call_rd@116@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r2@122@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r2@122@01))
        (< $Perm.No Clazz_m1_0_call_rd@116@01))
      (= lambda18_51$r1@122@01 lambda18_51$r2@122@01))
    (= lambda18_51$r1@122@01 lambda18_51$r2@122@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda18_51$r@122@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@123@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  :pattern ((inv@123@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda18_51$r@122@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@122@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@122@01))
      (< $Perm.No Clazz_m1_0_call_rd@116@01))
    (and
      (= (inv@123@01 lambda18_51$r@122@01) lambda18_51$r@122@01)
      (img@124@01 lambda18_51$r@122@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@122@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@124@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@123@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@123@01 r)))
        (< $Perm.No Clazz_m1_0_call_rd@116@01)))
    (= (inv@123@01 r) r))
  :pattern ((inv@123@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@125@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@123@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          (inv@123@01 r)))
      (img@124@01 r)
      (= r (inv@123@01 r)))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        Clazz_m1_1_rd@98@01
        $Perm.No)
      Clazz_m1_0_call_rd@116@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        Clazz_m1_1_rd@98@01
        $Perm.No)
      (pTaken@125@01 r))
    $Perm.No)
  
  :qid |quant-u-4806|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@125@01 r) $Perm.No)
  
  :qid |quant-u-4807|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@123@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          (inv@123@01 r)))
      (img@124@01 r)
      (= r (inv@123@01 r)))
    (= (- Clazz_m1_0_call_rd@116@01 (pTaken@125@01 r)) $Perm.No))
  
  :qid |quant-u-4808|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int()))
(declare-const lambda18_51$r@126@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 42 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType])) | live]
; [else-branch: 42 | issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 42 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 42 | issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m1_1_rd@98@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 43 | issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]) && lambda18_51$r@126@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))) | live]
; [else-branch: 43 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]) && lambda18_51$r@126@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))) | live]
(push) ; 6
; [then-branch: 43 | issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]) && lambda18_51$r@126@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01)))
; [eval] issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] typeof(lambda18_51$r.Clazz_x)
(push) ; 7
(assert (not (ite
  (and
    (img@103@01 lambda18_51$r@126@01)
    (and
      (issubtype<Bool> (typeof<PyType> (inv@102@01 lambda18_51$r@126@01)) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        (inv@102@01 lambda18_51$r@126@01))))
  (< $Perm.No Clazz_m1_1_rd@98@01)
  false)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 43 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@126@01), Clazz[PyType]) && lambda18_51$r@126@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@100@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@126@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda18_51$r@126@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
      lambda18_51$r@126@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@126@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r@126@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@126@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@126@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            lambda18_51$r@126@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@126@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@126@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586_precondition|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@126@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
          lambda18_51$r@126@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) lambda18_51$r@126@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda18_51$r@126@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@126@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
        lambda18_51$r@126@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) lambda18_51$r@126@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
    lambda18_51$r@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@127@01 $Perm)
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 ($Snap.combine ($Snap.first $t@128@01) ($Snap.second $t@128@01))))
(assert (= ($Snap.first $t@128@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@128@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@128@01))
    ($Snap.second ($Snap.second $t@128@01)))))
(assert (= ($Snap.first ($Snap.second $t@128@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@128@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@128@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@128@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_157@95@01 _current_wait_level_156@127@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@128@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@128@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
(push) ; 4
(assert (not (or
  (= Clazz_m1_0_call_rd@116@01 $Perm.No)
  (< $Perm.No Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@129@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        Clazz_m1_1_rd@98@01
        ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01)))
    (=
      $t@129@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))
  (=>
    (< $Perm.No Clazz_m1_0_call_rd@116@01)
    (=
      $t@129@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
(assert (<=
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01)))
(assert (<=
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        Clazz_m1_1_rd@98@01
        ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
      Clazz_m1_0_call_rd@116@01))
  (not (= self_1@96@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))))
(declare-const lambda19_50$r@130@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 44 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@130@01), Clazz[PyType])) | live]
; [else-branch: 44 | issubtype[Bool](typeof[PyType](lambda19_50$r@130@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 44 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@130@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 44 | issubtype[Bool](typeof[PyType](lambda19_50$r@130@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@130@01)))
(pop) ; 4
(declare-fun inv@131@01 ($Ref) $Ref)
(declare-fun img@132@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@130@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@130@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda19_50$r@130@01)))
    (or
      (= Clazz_m1_0_call_rd@116@01 $Perm.No)
      (< $Perm.No Clazz_m1_0_call_rd@116@01)))
  
  :qid |quant-u-4809|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@130@01 $Ref) (lambda19_50$r2@130@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@130@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@130@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@129@01)
              lambda19_50$r1@130@01))
          (< $Perm.No Clazz_m1_0_call_rd@116@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@130@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@130@01 $Ref) (lambda19_50$r2@130@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@130@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda19_50$r1@130@01))
        (< $Perm.No Clazz_m1_0_call_rd@116@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@130@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda19_50$r2@130@01))
        (< $Perm.No Clazz_m1_0_call_rd@116@01))
      (= lambda19_50$r1@130@01 lambda19_50$r2@130@01))
    (= lambda19_50$r1@130@01 lambda19_50$r2@130@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |quant-u-4810|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@132@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
  :pattern ((inv@131@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda19_50$r@130@01))
      (< $Perm.No Clazz_m1_0_call_rd@116@01))
    (and
      (= (inv@131@01 lambda19_50$r@130@01) lambda19_50$r@130@01)
      (img@132@01 lambda19_50$r@130@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |quant-u-4810|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@132@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r)))
        (< $Perm.No Clazz_m1_0_call_rd@116@01)))
    (= (inv@131@01 r) r))
  :pattern ((inv@131@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_0_call_rd@116@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (<= Clazz_m1_0_call_rd@116@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda19_50$r@130@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@130@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda19_50$r@130@01))
      (< $Perm.No Clazz_m1_0_call_rd@116@01))
    (not (= lambda19_50$r@130@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@130@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda19_50$r@130@01 lambda25_51$r@101@01)
    (=
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))))
  
  :qid |quant-u-4811|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
  $Snap.unit))
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@133@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 45 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType])) | live]
; [else-branch: 45 | issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 45 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 45 | issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 46 | issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]) && lambda19_50$r@133@01 in PSeq___sil_seq__(_, $t@129@01) | live]
; [else-branch: 46 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]) && lambda19_50$r@133@01 in PSeq___sil_seq__(_, $t@129@01)) | live]
(push) ; 6
; [then-branch: 46 | issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]) && lambda19_50$r@133@01 in PSeq___sil_seq__(_, $t@129@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@133@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(declare-const sm@134@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (< $Perm.No Clazz_m1_0_call_rd@116@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@135@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@135@01  $FPM) r)
    (+
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@135@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@135@01  $FPM) lambda19_50$r@133@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 46 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@133@01), Clazz[PyType]) && lambda19_50$r@133@01 in PSeq___sil_seq__(_, $t@129@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@133@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (< $Perm.No Clazz_m1_0_call_rd@116@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@135@01  $FPM) r)
    (+
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@135@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@133@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@133@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (< $Perm.No Clazz_m1_0_call_rd@116@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@135@01  $FPM) r)
    (+
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@135@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@133@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda19_50$r@133@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda19_50$r@133@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@133@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@133@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@133@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda19_50$r@133@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda19_50$r@133@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@133@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@133@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@133@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda19_50$r@133@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) lambda19_50$r@133@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@133@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda19_50$r@133@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
(set-option :timeout 0)
(push) ; 4
(assert (not (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+
      (-
        Clazz_m1_1_rd@98@01
        ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
      Clazz_m1_0_call_rd@116@01)
    ($Perm.min
      (+
        (-
          Clazz_m1_1_rd@98@01
          ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
        Clazz_m1_0_call_rd@116@01)
      Clazz_m1_1_rd@98@01))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min
        (+
          (-
            Clazz_m1_1_rd@98@01
            ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
          Clazz_m1_0_call_rd@116@01)
        Clazz_m1_1_rd@98@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min
        (+
          (-
            Clazz_m1_1_rd@98@01
            ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
          Clazz_m1_0_call_rd@116@01)
        Clazz_m1_1_rd@98@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_1.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_1.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda26_50$r@136@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda26_50$r), Clazz())
; [eval] typeof(lambda26_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 47 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@136@01), Clazz[PyType])) | live]
; [else-branch: 47 | issubtype[Bool](typeof[PyType](lambda26_50$r@136@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 47 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@136@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | issubtype[Bool](typeof[PyType](lambda26_50$r@136@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@136@01)))
(pop) ; 4
(declare-fun inv@137@01 ($Ref) $Ref)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda26_50$r@136@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@136@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda26_50$r@136@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda26_50$r@136@01)))
    (or (= Clazz_m1_1_rd@98@01 $Perm.No) (< $Perm.No Clazz_m1_1_rd@98@01)))
  
  :qid |quant-u-4812|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda26_50$r1@136@01 $Ref) (lambda26_50$r2@136@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r1@136@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda26_50$r1@136@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@129@01)
              lambda26_50$r1@136@01))
          (< $Perm.No Clazz_m1_1_rd@98@01))
        (issubtype<Bool> (typeof<PyType> lambda26_50$r2@136@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda26_50$r1@136@01 $Ref) (lambda26_50$r2@136@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r1@136@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda26_50$r1@136@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r2@136@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda26_50$r2@136@01))
        (< $Perm.No Clazz_m1_1_rd@98@01))
      (= lambda26_50$r1@136@01 lambda26_50$r2@136@01))
    (= lambda26_50$r1@136@01 lambda26_50$r2@136@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda26_50$r@136@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@138@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
  :pattern ((inv@137@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda26_50$r@136@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@136@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda26_50$r@136@01))
      (< $Perm.No Clazz_m1_1_rd@98@01))
    (and
      (= (inv@137@01 lambda26_50$r@136@01) lambda26_50$r@136@01)
      (img@138@01 lambda26_50$r@136@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@136@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@138@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@137@01 r)))
        (< $Perm.No Clazz_m1_1_rd@98@01)))
    (= (inv@137@01 r) r))
  :pattern ((inv@137@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@139@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@137@01 r)))
      (img@138@01 r)
      (= r (inv@137@01 r)))
    ($Perm.min
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      Clazz_m1_1_rd@98@01)
    $Perm.No))
(define-fun pTaken@140@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@137@01 r)))
      (img@138@01 r)
      (= r (inv@137@01 r)))
    ($Perm.min
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)
      (- Clazz_m1_1_rd@98@01 (pTaken@139@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (pTaken@139@01 r))
    $Perm.No)
  
  :qid |quant-u-4814|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@137@01 r)))
      (img@138@01 r)
      (= r (inv@137@01 r)))
    (= (- Clazz_m1_1_rd@98@01 (pTaken@139@01 r)) $Perm.No))
  
  :qid |quant-u-4815|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)
      (pTaken@140@01 r))
    $Perm.No)
  
  :qid |quant-u-4816|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@137@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@137@01 r)))
      (img@138@01 r)
      (= r (inv@137@01 r)))
    (= (- (- Clazz_m1_1_rd@98@01 (pTaken@139@01 r)) (pTaken@140@01 r)) $Perm.No))
  
  :qid |quant-u-4817|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda26_50$r: Ref :: { (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) } issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda26_50$r.Clazz_x), int()))
(declare-const lambda26_50$r@141@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq)) ==> issubtype(typeof(lambda26_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda26_50$r), Clazz()) && (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] issubtype(typeof(lambda26_50$r), Clazz())
; [eval] typeof(lambda26_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 48 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType])) | live]
; [else-branch: 48 | issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 48 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 48 | issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda26_50$r in PSeq___sil_seq__(self_1.Clazz_seq))
; [eval] PSeq___sil_seq__(self_1.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      Clazz_m1_1_rd@98@01
      ($Perm.min Clazz_m1_1_rd@98@01 Clazz_m1_0_call_rd@116@01))
    Clazz_m1_0_call_rd@116@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 49 | issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]) && lambda26_50$r@141@01 in PSeq___sil_seq__(_, $t@129@01) | live]
; [else-branch: 49 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]) && lambda26_50$r@141@01 in PSeq___sil_seq__(_, $t@129@01)) | live]
(push) ; 6
; [then-branch: 49 | issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]) && lambda26_50$r@141@01 in PSeq___sil_seq__(_, $t@129@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@141@01)))
; [eval] issubtype(typeof(lambda26_50$r.Clazz_x), int())
; [eval] typeof(lambda26_50$r.Clazz_x)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
        false)
      (=
        ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        (< $Perm.No Clazz_m1_0_call_rd@116@01)
        false)
      (=
        ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
    :qid |qp.fvfValDef6|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@103@01 lambda26_50$r@141@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 lambda26_50$r@141@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 lambda26_50$r@141@01))))
      (- Clazz_m1_1_rd@98@01 (pTaken@125@01 lambda26_50$r@141@01))
      $Perm.No)
    (ite
      (and
        (img@132@01 lambda26_50$r@141@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 lambda26_50$r@141@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            (inv@131@01 lambda26_50$r@141@01))))
      Clazz_m1_0_call_rd@116@01
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 49 | !(issubtype[Bool](typeof[PyType](lambda26_50$r@141@01), Clazz[PyType]) && lambda26_50$r@141@01 in PSeq___sil_seq__(_, $t@129@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@141@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (< $Perm.No Clazz_m1_0_call_rd@116@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
  :qid |qp.fvfValDef6|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@141@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@141@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (< $Perm.No (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01))))))))))))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
      (< $Perm.No Clazz_m1_0_call_rd@116@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@128@01)))))))) r))
  :qid |qp.fvfValDef6|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda26_50$r@141@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda26_50$r@141@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda26_50$r@141@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589-aux|)))
(assert (forall ((lambda26_50$r@141@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@129@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@129@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@129@01)
            lambda26_50$r@141@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda26_50$r@141@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589-aux|)))
(assert (forall ((lambda26_50$r@141@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589_precondition|)))
(push) ; 4
(assert (not (forall ((lambda26_50$r@141@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@129@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@129@01)
          lambda26_50$r@141@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) lambda26_50$r@141@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda26_50$r@141@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda26_50$r@141@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) lambda26_50$r@141@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@134@01  $FVF<Clazz_x>) lambda26_50$r@141@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@129@01)
    lambda26_50$r@141@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@976@352@976@589|)))
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda25_51$r@101@01 lambda19_50$r@130@01)
    (=
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))))
  
  :qid |quant-u-4818|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(declare-const pm@142@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@142@01  $FPM) r)
    (+
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@142@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@142@01  $FPM) r) $Perm.Write)
  :pattern ((inv@102@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@142@01  $FPM) r) $Perm.Write)
  :pattern ((inv@131@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda25_51$r@101@01 lambda19_50$r@130@01)
    (=
      (and
        (img@103@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
            (inv@102@01 r))))
      (and
        (img@132@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))))
  
  :qid |quant-u-4819|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(declare-const pm@143@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@143@01  $FPM) r)
    (+
      (ite
        (and
          (img@103@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@102@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@100@01)))))))))))
              (inv@102@01 r))))
        (- Clazz_m1_1_rd@98@01 (pTaken@125@01 r))
        $Perm.No)
      (ite
        (and
          (img@132@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@131@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@129@01) (inv@131@01 r))))
        Clazz_m1_0_call_rd@116@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@143@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@143@01  $FPM) r) $Perm.Write)
  :pattern ((inv@102@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@143@01  $FPM) r) $Perm.Write)
  :pattern ((inv@131@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Clazz_m2 ----------
(declare-const _cthread_158@144@01 $Ref)
(declare-const _caller_measures_158@145@01 Seq<Measure$>)
(declare-const _residue_158@146@01 $Perm)
(declare-const self_2@147@01 $Ref)
(declare-const b_1@148@01 $Ref)
(declare-const Clazz_m2_rd@149@01 $Perm)
(declare-const _current_wait_level_158@150@01 $Perm)
(declare-const _cthread_158@151@01 $Ref)
(declare-const _caller_measures_158@152@01 Seq<Measure$>)
(declare-const _residue_158@153@01 $Perm)
(declare-const self_2@154@01 $Ref)
(declare-const b_1@155@01 $Ref)
(declare-const Clazz_m2_rd@156@01 $Perm)
(declare-const _current_wait_level_158@157@01 $Perm)
(push) ; 1
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 ($Snap.combine ($Snap.first $t@158@01) ($Snap.second $t@158@01))))
(assert (= ($Snap.first $t@158@01) $Snap.unit))
; [eval] none < Clazz_m2_rd
(assert (< $Perm.No Clazz_m2_rd@156@01))
(assert (=
  ($Snap.second $t@158@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@158@01))
    ($Snap.second ($Snap.second $t@158@01)))))
(assert (= ($Snap.first ($Snap.second $t@158@01)) $Snap.unit))
; [eval] Clazz_m2_rd < write
(assert (< Clazz_m2_rd@156@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@158@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@158@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@158@01))) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@151@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@158@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@151@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), Clazz())
; [eval] typeof(self_2)
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> self_2@154@01) (as Clazz<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b_1), bool())
; [eval] typeof(b_1)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b_1@155@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
  $Snap.unit))
; [eval] self_2 != null
(assert (not (= self_2@154@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
  $Snap.unit))
; [eval] !object___eq__(self_2, null)
; [eval] object___eq__(self_2, null)
(push) ; 2
(assert (object___eq__%precondition $Snap.unit self_2@154@01 $Ref.null))
(pop) ; 2
; Joined path conditions
(assert (object___eq__%precondition $Snap.unit self_2@154@01 $Ref.null))
(assert (not (object___eq__ $Snap.unit self_2@154@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m2_rd@156@01 $Perm.No) (< $Perm.No Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No Clazz_m2_rd@156@01))
(assert (<= Clazz_m2_rd@156@01 $Perm.Write))
(assert (=> (< $Perm.No Clazz_m2_rd@156@01) (not (= self_2@154@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_2.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_rd@156@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))
(declare-const lambda34_51$r@159@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda34_51$r), Clazz()) && (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] issubtype(typeof(lambda34_51$r), Clazz())
; [eval] typeof(lambda34_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 50 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@159@01), Clazz[PyType])) | live]
; [else-branch: 50 | issubtype[Bool](typeof[PyType](lambda34_51$r@159@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 50 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@159@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 50 | issubtype[Bool](typeof[PyType](lambda34_51$r@159@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] PSeq___sil_seq__(self_2.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_rd@156@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01)))
(pop) ; 2
(declare-fun inv@160@01 ($Ref) $Ref)
(declare-fun img@161@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda34_51$r@159@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
        lambda34_51$r@159@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :qid |Clazz_x-aux|)))
; Check receiver injectivity
(assert (forall ((lambda34_51$r1@159@01 $Ref) (lambda34_51$r2@159@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda34_51$r1@159@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
    (=>
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda34_51$r1@159@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            lambda34_51$r1@159@01))
        (issubtype<Bool> (typeof<PyType> lambda34_51$r2@159@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda34_51$r1@159@01 $Ref) (lambda34_51$r2@159@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r1@159@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          lambda34_51$r1@159@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r2@159@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          lambda34_51$r2@159@01))
      (= lambda34_51$r1@159@01 lambda34_51$r2@159@01))
    (= lambda34_51$r1@159@01 lambda34_51$r2@159@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda34_51$r@159@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :qid |quant-u-4821|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
  :pattern ((inv@160@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda34_51$r@159@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
        lambda34_51$r@159@01))
    (and
      (= (inv@160@01 lambda34_51$r@159@01) lambda34_51$r@159@01)
      (img@161@01 lambda34_51$r@159@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :qid |quant-u-4821|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (= (inv@160@01 r) r))
  :pattern ((inv@160@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((lambda34_51$r@159@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@159@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
        lambda34_51$r@159@01))
    (not (= lambda34_51$r@159@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@159@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
  $Snap.unit))
; [eval] (forall lambda34_51$r: Ref :: { (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) } issubtype(typeof(lambda34_51$r), Clazz()) && (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) ==> issubtype(typeof(lambda34_51$r.Clazz_x), int()))
(declare-const lambda34_51$r@162@01 $Ref)
(push) ; 2
; [eval] issubtype(typeof(lambda34_51$r), Clazz()) && (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) ==> issubtype(typeof(lambda34_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda34_51$r), Clazz()) && (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] issubtype(typeof(lambda34_51$r), Clazz())
; [eval] typeof(lambda34_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 51 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType])) | live]
; [else-branch: 51 | issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 51 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 51 | issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda34_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] PSeq___sil_seq__(self_2.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_rd@156@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 52 | issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]) && lambda34_51$r@162@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@158@01)))))))))) | live]
; [else-branch: 52 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]) && lambda34_51$r@162@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@158@01))))))))))) | live]
(push) ; 4
; [then-branch: 52 | issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]) && lambda34_51$r@162@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@158@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01)))
; [eval] issubtype(typeof(lambda34_51$r.Clazz_x), int())
; [eval] typeof(lambda34_51$r.Clazz_x)
(push) ; 5
(assert (not (and
  (img@161@01 lambda34_51$r@162@01)
  (and
    (issubtype<Bool> (typeof<PyType> (inv@160@01 lambda34_51$r@162@01)) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
      (inv@160@01 lambda34_51$r@162@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 52 | !(issubtype[Bool](typeof[PyType](lambda34_51$r@162@01), Clazz[PyType]) && lambda34_51$r@162@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@158@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
      lambda34_51$r@162@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
        lambda34_51$r@162@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
      lambda34_51$r@162@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda34_51$r@162@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            lambda34_51$r@162@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          lambda34_51$r@162@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1009@343@1009@580-aux|)))
(assert (forall ((lambda34_51$r@162@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            lambda34_51$r@162@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          lambda34_51$r@162@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1009@343@1009@580-aux|)))
(assert (forall ((lambda34_51$r@162@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda34_51$r@162@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
        lambda34_51$r@162@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) lambda34_51$r@162@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
    lambda34_51$r@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1009@343@1009@580|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m2_rd@156@01 $Perm.No) (< $Perm.No Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const $t@163@01 $Ref)
(assert (and
  (=>
    (< $Perm.No Clazz_m2_rd@156@01)
    (=
      $t@163@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
  (=>
    (< $Perm.No Clazz_m2_rd@156@01)
    (=
      $t@163@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))))
(assert (<= $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)))
(assert (<= (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))
  (not (= self_2@154@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_2.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))))))
(declare-const lambda35_51$r@164@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda35_51$r), Clazz()) && (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] issubtype(typeof(lambda35_51$r), Clazz())
; [eval] typeof(lambda35_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 53 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@164@01), Clazz[PyType])) | live]
; [else-branch: 53 | issubtype[Bool](typeof[PyType](lambda35_51$r@164@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 53 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@164@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 53 | issubtype[Bool](typeof[PyType](lambda35_51$r@164@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] PSeq___sil_seq__(self_2.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@164@01)))
(pop) ; 2
(declare-fun inv@165@01 ($Ref) $Ref)
(declare-fun img@166@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda35_51$r@164@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@164@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :qid |Clazz_x-aux|)))
; Check receiver injectivity
(assert (forall ((lambda35_51$r1@164@01 $Ref) (lambda35_51$r2@164@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda35_51$r1@164@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
    (=>
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda35_51$r1@164@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda35_51$r1@164@01))
        (issubtype<Bool> (typeof<PyType> lambda35_51$r2@164@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda35_51$r1@164@01 $Ref) (lambda35_51$r2@164@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r1@164@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda35_51$r1@164@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r2@164@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda35_51$r2@164@01))
      (= lambda35_51$r1@164@01 lambda35_51$r2@164@01))
    (= lambda35_51$r1@164@01 lambda35_51$r2@164@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda35_51$r@164@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :qid |quant-u-4823|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
  :pattern ((inv@165@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda35_51$r@164@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@164@01))
    (and
      (= (inv@165@01 lambda35_51$r@164@01) lambda35_51$r@164@01)
      (img@166@01 lambda35_51$r@164@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :qid |quant-u-4823|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (= (inv@165@01 r) r))
  :pattern ((inv@165@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((lambda35_51$r@164@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@164@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@164@01))
    (not (= lambda35_51$r@164@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@164@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda35_51$r@164@01 lambda34_51$r@159@01)
    (=
      (and
        (img@166@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
      (and
        (img@161@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            (inv@160@01 r))))))
  
  :qid |quant-u-4824|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))))
  $Snap.unit))
; [eval] (forall lambda35_51$r: Ref :: { (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) } issubtype(typeof(lambda35_51$r), Clazz()) && (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) ==> issubtype(typeof(lambda35_51$r.Clazz_x), int()))
(declare-const lambda35_51$r@167@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda35_51$r), Clazz()) && (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq)) ==> issubtype(typeof(lambda35_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda35_51$r), Clazz()) && (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] issubtype(typeof(lambda35_51$r), Clazz())
; [eval] typeof(lambda35_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 54 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType])) | live]
; [else-branch: 54 | issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 54 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 54 | issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda35_51$r in PSeq___sil_seq__(self_2.Clazz_seq))
; [eval] PSeq___sil_seq__(self_2.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 55 | issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]) && lambda35_51$r@167@01 in PSeq___sil_seq__(_, $t@163@01) | live]
; [else-branch: 55 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]) && lambda35_51$r@167@01 in PSeq___sil_seq__(_, $t@163@01)) | live]
(push) ; 4
; [then-branch: 55 | issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]) && lambda35_51$r@167@01 in PSeq___sil_seq__(_, $t@163@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@167@01)))
; [eval] issubtype(typeof(lambda35_51$r.Clazz_x), int())
; [eval] typeof(lambda35_51$r.Clazz_x)
(declare-const sm@168@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef11|)))
(declare-const pm@169@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@169@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef12|)))
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@169@01  $FPM) lambda35_51$r@167@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 55 | !(issubtype[Bool](typeof[PyType](lambda35_51$r@167@01), Clazz[PyType]) && lambda35_51$r@167@01 in PSeq___sil_seq__(_, $t@163@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@167@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@169@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef12|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@167@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@167@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@169@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@169@01  $FPM) r))
  :qid |qp.resPrmSumDef12|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda35_51$r@167@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda35_51$r@167@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda35_51$r@167@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@167@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1010@343@1010@580-aux|)))
(assert (forall ((lambda35_51$r@167@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda35_51$r@167@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda35_51$r@167@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1010@343@1010@580-aux|)))
(assert (forall ((lambda35_51$r@167@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda35_51$r@167@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda35_51$r@167@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) lambda35_51$r@167@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@167@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda35_51$r@167@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1010@343@1010@580|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 ($Snap.combine ($Snap.first $t@170@01) ($Snap.second $t@170@01))))
(assert (= ($Snap.first $t@170@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@170@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@170@01))
    ($Snap.second ($Snap.second $t@170@01)))))
(assert (= ($Snap.first ($Snap.second $t@170@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@170@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@170@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@170@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@153@01 _current_wait_level_158@157@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@170@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@171@01 $Ref)
; [exec]
; var self_7: Ref
(declare-const self_7@172@01 $Ref)
; [exec]
; var b_5: Ref
(declare-const b_5@173@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@174@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@175@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_2) == Clazz()
(declare-const $t@176@01 $Snap)
(assert (= $t@176@01 $Snap.unit))
; [eval] typeof(self_2) == Clazz()
; [eval] typeof(self_2)
; [eval] Clazz()
(assert (= (typeof<PyType> self_2@154@01) (as Clazz<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_7 := self_2
; [exec]
; b_5 := b_1
; [eval] bool___unbox__(b_5)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b_1@155@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b_1@155@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_1@155@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_1@155@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | bool___unbox__(_, b_1@155@01) | live]
; [else-branch: 56 | !(bool___unbox__(_, b_1@155@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 56 | bool___unbox__(_, b_1@155@01)]
(assert (bool___unbox__ $Snap.unit b_1@155@01))
; [exec]
; var Clazz_m1_1_call_rd: Perm
(declare-const Clazz_m1_1_call_rd@177@01 $Perm)
; [exec]
; inhale none < Clazz_m1_1_call_rd && Clazz_m1_1_call_rd < write
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 ($Snap.combine ($Snap.first $t@178@01) ($Snap.second $t@178@01))))
(assert (= ($Snap.first $t@178@01) $Snap.unit))
; [eval] none < Clazz_m1_1_call_rd
(assert (< $Perm.No Clazz_m1_1_call_rd@177@01))
(assert (= ($Snap.second $t@178@01) $Snap.unit))
; [eval] Clazz_m1_1_call_rd < write
(assert (< Clazz_m1_1_call_rd@177@01 $Perm.Write))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale none < perm(self_7.Clazz_seq) ==>
;   Clazz_m1_1_call_rd < perm(self_7.Clazz_seq)
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 $Snap.unit))
; [eval] none < perm(self_7.Clazz_seq) ==> Clazz_m1_1_call_rd < perm(self_7.Clazz_seq)
; [eval] none < perm(self_7.Clazz_seq)
; [eval] perm(self_7.Clazz_seq)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | Z < Clazz_m2_rd@156@01 + Clazz_m2_rd@156@01 | live]
; [else-branch: 57 | !(Z < Clazz_m2_rd@156@01 + Clazz_m2_rd@156@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 57 | Z < Clazz_m2_rd@156@01 + Clazz_m2_rd@156@01]
(assert (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)))
; [eval] Clazz_m1_1_call_rd < perm(self_7.Clazz_seq)
; [eval] perm(self_7.Clazz_seq)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)))
(assert (=>
  (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))
  (< Clazz_m1_1_call_rd@177@01 (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall lambda18_51$r: Ref ::
;     { (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq)) }
;     issubtype(typeof(lambda18_51$r), Clazz()) &&
;     (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq)) ==>
;     none < perm(lambda18_51$r.Clazz_x) ==>
;     Clazz_m1_1_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 $Snap.unit))
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_1_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const lambda18_51$r@181@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 58 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType])) | live]
; [else-branch: 58 | issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 58 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 58 | issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_7.Clazz_seq))
; [eval] PSeq___sil_seq__(self_7.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 59 | issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]) && lambda18_51$r@181@01 in PSeq___sil_seq__(_, $t@163@01) | live]
; [else-branch: 59 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]) && lambda18_51$r@181@01 in PSeq___sil_seq__(_, $t@163@01)) | live]
(push) ; 6
; [then-branch: 59 | issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]) && lambda18_51$r@181@01 in PSeq___sil_seq__(_, $t@163@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01)))
; [eval] none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] none < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
(declare-const pm@182@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@182@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(assert (<= ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01) $Perm.Write))
(push) ; 7
; [then-branch: 60 | Z < PermLookup(Clazz_x, pm@182@01, lambda18_51$r@181@01) | live]
; [else-branch: 60 | !(Z < PermLookup(Clazz_x, pm@182@01, lambda18_51$r@181@01)) | live]
(push) ; 8
; [then-branch: 60 | Z < PermLookup(Clazz_x, pm@182@01, lambda18_51$r@181@01)]
(assert (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
; [eval] Clazz_m1_1_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(pop) ; 8
(push) ; 8
; [else-branch: 60 | !(Z < PermLookup(Clazz_x, pm@182@01, lambda18_51$r@181@01))]
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
  (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 59 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@181@01), Clazz[PyType]) && lambda18_51$r@181@01 in PSeq___sil_seq__(_, $t@163@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@182@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01)
    (<=
      ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)
      $Perm.Write)
    (or
      (not
        (<
          $Perm.No
          ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@181@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@182@01  $FPM) r)
    (+
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@182@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@181@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r@181@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@181@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1029@13@1029@290-aux|)))
(assert (forall ((lambda18_51$r@181@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r@181@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1029@13@1029@290-aux|)))
(assert (forall ((lambda18_51$r@181@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@181@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@181@01))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
    (<
      Clazz_m1_1_call_rd@177@01
      ($FVF.perm_Clazz_x (as pm@182@01  $FPM) lambda18_51$r@181@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@181@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@181@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1029@13@1029@290|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_158 := Clazz_m1(_cthread_158, _method_measures_158, _residue_158, self_7,
;   b_5, Clazz_m1_1_call_rd)
; [eval] none < Clazz_m1_rd
; [eval] Clazz_m1_rd < write
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_0), Clazz())
; [eval] typeof(self_0)
; [eval] Clazz()
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
; [eval] self_0 != null
; [eval] !object___eq__(self_0, null)
; [eval] object___eq__(self_0, null)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or
  (= Clazz_m1_1_call_rd@177@01 $Perm.No)
  (< $Perm.No Clazz_m1_1_call_rd@177@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
    ($Perm.min
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      Clazz_m1_1_call_rd@177@01))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
    ($Perm.min
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      Clazz_m1_1_call_rd@177@01))))
(assert (<=
  (-
    (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
    ($Perm.min
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      Clazz_m1_1_call_rd@177@01))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01)))
  (not (= self_2@154@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_1_call_rd@177@01
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_1_call_rd@177@01
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda18_51$r@183@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 61 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@183@01), Clazz[PyType])) | live]
; [else-branch: 61 | issubtype[Bool](typeof[PyType](lambda18_51$r@183@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 61 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@183@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 61 | issubtype[Bool](typeof[PyType](lambda18_51$r@183@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@183@01)))
(pop) ; 4
(declare-fun inv@184@01 ($Ref) $Ref)
(declare-fun img@185@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda18_51$r@183@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@183@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@183@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@183@01)))
    (or
      (= Clazz_m1_1_call_rd@177@01 $Perm.No)
      (< $Perm.No Clazz_m1_1_call_rd@177@01)))
  
  :qid |quant-u-4825|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda18_51$r1@183@01 $Ref) (lambda18_51$r2@183@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r1@183@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda18_51$r1@183@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@163@01)
              lambda18_51$r1@183@01))
          (< $Perm.No Clazz_m1_1_call_rd@177@01))
        (issubtype<Bool> (typeof<PyType> lambda18_51$r2@183@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r1@183@01 $Ref) (lambda18_51$r2@183@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r1@183@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r1@183@01))
        (< $Perm.No Clazz_m1_1_call_rd@177@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r2@183@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r2@183@01))
        (< $Perm.No Clazz_m1_1_call_rd@177@01))
      (= lambda18_51$r1@183@01 lambda18_51$r2@183@01))
    (= lambda18_51$r1@183@01 lambda18_51$r2@183@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda18_51$r@183@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@184@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
  :pattern ((inv@184@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda18_51$r@183@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@183@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@183@01))
      (< $Perm.No Clazz_m1_1_call_rd@177@01))
    (and
      (= (inv@184@01 lambda18_51$r@183@01) lambda18_51$r@183@01)
      (img@185@01 lambda18_51$r@183@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@183@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@185@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@184@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@184@01 r)))
        (< $Perm.No Clazz_m1_1_call_rd@177@01)))
    (= (inv@184@01 r) r))
  :pattern ((inv@184@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@186@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@184@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@184@01 r)))
      (img@185@01 r)
      (= r (inv@184@01 r)))
    ($Perm.min
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      Clazz_m1_1_call_rd@177@01)
    $Perm.No))
(define-fun pTaken@187@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@184@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@184@01 r)))
      (img@185@01 r)
      (= r (inv@184@01 r)))
    ($Perm.min
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)
      (- Clazz_m1_1_call_rd@177@01 (pTaken@186@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@161@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
              (inv@160@01 r))))
        $Perm.Write
        $Perm.No)
      (pTaken@186@01 r))
    $Perm.No)
  
  :qid |quant-u-4827|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@184@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@184@01 r)))
      (img@185@01 r)
      (= r (inv@184@01 r)))
    (= (- Clazz_m1_1_call_rd@177@01 (pTaken@186@01 r)) $Perm.No))
  
  :qid |quant-u-4828|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int()))
(declare-const lambda18_51$r@188@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 62 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType])) | live]
; [else-branch: 62 | issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 62 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 62 | issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 63 | issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]) && lambda18_51$r@188@01 in PSeq___sil_seq__(_, $t@163@01) | live]
; [else-branch: 63 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]) && lambda18_51$r@188@01 in PSeq___sil_seq__(_, $t@163@01)) | live]
(push) ; 6
; [then-branch: 63 | issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]) && lambda18_51$r@188@01 in PSeq___sil_seq__(_, $t@163@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@188@01)))
; [eval] issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] typeof(lambda18_51$r.Clazz_x)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@161@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            (inv@160@01 r))))
      (=
        ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@166@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
      (=
        ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
    :qid |qp.fvfValDef11|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@161@01 lambda18_51$r@188@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@160@01 lambda18_51$r@188@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
            (inv@160@01 lambda18_51$r@188@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@166@01 lambda18_51$r@188@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@165@01 lambda18_51$r@188@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            (inv@165@01 lambda18_51$r@188@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 63 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@188@01), Clazz[PyType]) && lambda18_51$r@188@01 in PSeq___sil_seq__(_, $t@163@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@188@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef11|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@188@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@188@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@161@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@160@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
          (inv@160@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef11|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@188@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r@188@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@188@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@188@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@163@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@163@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@163@01)
            lambda18_51$r@188@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@188@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@188@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586_precondition|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@188@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@163@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@163@01)
          lambda18_51$r@188@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) lambda18_51$r@188@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda18_51$r@188@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@188@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) lambda18_51$r@188@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@168@01  $FVF<Clazz_x>) lambda18_51$r@188@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@163@01)
    lambda18_51$r@188@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@189@01 $Perm)
(declare-const $t@190@01 $Snap)
(assert (= $t@190@01 ($Snap.combine ($Snap.first $t@190@01) ($Snap.second $t@190@01))))
(assert (= ($Snap.first $t@190@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@190@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@190@01))
    ($Snap.second ($Snap.second $t@190@01)))))
(assert (= ($Snap.first ($Snap.second $t@190@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@190@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@190@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@190@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_158@153@01 _current_wait_level_156@189@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@190@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@190@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))
(push) ; 4
(assert (not (or
  (= Clazz_m1_1_call_rd@177@01 $Perm.No)
  (< $Perm.No Clazz_m1_1_call_rd@177@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@191@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        ($Perm.min
          (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
          Clazz_m1_1_call_rd@177@01)))
    (= $t@191@01 $t@163@01))
  (=>
    (< $Perm.No Clazz_m1_1_call_rd@177@01)
    (=
      $t@191@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))))
(assert (<=
  $Perm.No
  (+
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    Clazz_m1_1_call_rd@177@01)))
(assert (<=
  (+
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    Clazz_m1_1_call_rd@177@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        ($Perm.min
          (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
          Clazz_m1_1_call_rd@177@01))
      Clazz_m1_1_call_rd@177@01))
  (not (= self_2@154@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    Clazz_m1_1_call_rd@177@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))))))
(declare-const lambda19_50$r@192@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 64 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@192@01), Clazz[PyType])) | live]
; [else-branch: 64 | issubtype[Bool](typeof[PyType](lambda19_50$r@192@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 64 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@192@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 64 | issubtype[Bool](typeof[PyType](lambda19_50$r@192@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    Clazz_m1_1_call_rd@177@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@192@01)))
(pop) ; 4
(declare-fun inv@193@01 ($Ref) $Ref)
(declare-fun img@194@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@192@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@192@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@191@01)
          lambda19_50$r@192@01)))
    (or
      (= Clazz_m1_1_call_rd@177@01 $Perm.No)
      (< $Perm.No Clazz_m1_1_call_rd@177@01)))
  
  :qid |quant-u-4829|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@192@01 $Ref) (lambda19_50$r2@192@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@192@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@192@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@191@01)
              lambda19_50$r1@192@01))
          (< $Perm.No Clazz_m1_1_call_rd@177@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@192@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@192@01 $Ref) (lambda19_50$r2@192@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@192@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@191@01)
            lambda19_50$r1@192@01))
        (< $Perm.No Clazz_m1_1_call_rd@177@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@192@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@191@01)
            lambda19_50$r2@192@01))
        (< $Perm.No Clazz_m1_1_call_rd@177@01))
      (= lambda19_50$r1@192@01 lambda19_50$r2@192@01))
    (= lambda19_50$r1@192@01 lambda19_50$r2@192@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |quant-u-4830|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@194@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
  :pattern ((inv@193@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@191@01)
          lambda19_50$r@192@01))
      (< $Perm.No Clazz_m1_1_call_rd@177@01))
    (and
      (= (inv@193@01 lambda19_50$r@192@01) lambda19_50$r@192@01)
      (img@194@01 lambda19_50$r@192@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |quant-u-4830|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@194@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r)))
        (< $Perm.No Clazz_m1_1_call_rd@177@01)))
    (= (inv@193@01 r) r))
  :pattern ((inv@193@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_1_call_rd@177@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (<= Clazz_m1_1_call_rd@177@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda19_50$r@192@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@192@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@191@01)
          lambda19_50$r@192@01))
      (< $Perm.No Clazz_m1_1_call_rd@177@01))
    (not (= lambda19_50$r@192@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@192@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda19_50$r@192@01 lambda35_51$r@164@01)
    (=
      (and
        (img@194@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
      (and
        (img@166@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))))
  
  :qid |quant-u-4831|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))))
  $Snap.unit))
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@195@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 65 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType])) | live]
; [else-branch: 65 | issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 65 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 65 | issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
      ($Perm.min
        (+ Clazz_m2_rd@156@01 Clazz_m2_rd@156@01)
        Clazz_m1_1_call_rd@177@01))
    Clazz_m1_1_call_rd@177@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@191@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 66 | issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]) && lambda19_50$r@195@01 in PSeq___sil_seq__(_, $t@191@01) | live]
; [else-branch: 66 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]) && lambda19_50$r@195@01 in PSeq___sil_seq__(_, $t@191@01)) | live]
(push) ; 6
; [then-branch: 66 | issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]) && lambda19_50$r@195@01 in PSeq___sil_seq__(_, $t@191@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@195@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(declare-const sm@196@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@194@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
      (< $Perm.No Clazz_m1_1_call_rd@177@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(declare-const pm@197@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@197@01  $FPM) r)
    (+
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@194@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
        Clazz_m1_1_call_rd@177@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@197@01  $FPM) lambda19_50$r@195@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 66 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@195@01), Clazz[PyType]) && lambda19_50$r@195@01 in PSeq___sil_seq__(_, $t@191@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@195@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@194@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
      (< $Perm.No Clazz_m1_1_call_rd@177@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@197@01  $FPM) r)
    (+
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@194@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
        Clazz_m1_1_call_rd@177@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@195@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@195@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@166@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))))))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@194@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
      (< $Perm.No Clazz_m1_1_call_rd@177@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01)))))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@197@01  $FPM) r)
    (+
      (ite
        (and
          (img@166@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@165@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@163@01) (inv@165@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@194@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@193@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) (inv@193@01 r))))
        Clazz_m1_1_call_rd@177@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@197@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@195@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@191@01)
            lambda19_50$r@195@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@191@01)
          lambda19_50$r@195@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@195@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@195@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@195@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@191@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@191@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@191@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@191@01)
            lambda19_50$r@195@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@191@01)
          lambda19_50$r@195@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@195@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@195@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@195@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@191@01) lambda19_50$r@195@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@196@01  $FVF<Clazz_x>) lambda19_50$r@195@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@195@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@191@01)
    lambda19_50$r@195@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@190@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 56 | !(bool___unbox__(_, b_1@155@01))]
(assert (not (bool___unbox__ $Snap.unit b_1@155@01)))
(pop) ; 3
; [eval] !bool___unbox__(b_5)
; [eval] bool___unbox__(b_5)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 3
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_1@155@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_1@155@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | !(bool___unbox__(_, b_1@155@01)) | live]
; [else-branch: 67 | bool___unbox__(_, b_1@155@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 67 | !(bool___unbox__(_, b_1@155@01))]
(assert (not (bool___unbox__ $Snap.unit b_1@155@01)))
; [exec]
; label __end
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 3
(push) ; 3
; [else-branch: 67 | bool___unbox__(_, b_1@155@01)]
(assert (bool___unbox__ $Snap.unit b_1@155@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Clazz_m2_1 ----------
(declare-const _cthread_159@198@01 $Ref)
(declare-const _caller_measures_159@199@01 Seq<Measure$>)
(declare-const _residue_159@200@01 $Perm)
(declare-const self_3@201@01 $Ref)
(declare-const b_2@202@01 $Ref)
(declare-const Clazz_m2_1_rd@203@01 $Perm)
(declare-const _current_wait_level_159@204@01 $Perm)
(declare-const _cthread_159@205@01 $Ref)
(declare-const _caller_measures_159@206@01 Seq<Measure$>)
(declare-const _residue_159@207@01 $Perm)
(declare-const self_3@208@01 $Ref)
(declare-const b_2@209@01 $Ref)
(declare-const Clazz_m2_1_rd@210@01 $Perm)
(declare-const _current_wait_level_159@211@01 $Perm)
(push) ; 1
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 ($Snap.combine ($Snap.first $t@212@01) ($Snap.second $t@212@01))))
(assert (= ($Snap.first $t@212@01) $Snap.unit))
; [eval] none < Clazz_m2_1_rd
(assert (< $Perm.No Clazz_m2_1_rd@210@01))
(assert (=
  ($Snap.second $t@212@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@212@01))
    ($Snap.second ($Snap.second $t@212@01)))))
(assert (= ($Snap.first ($Snap.second $t@212@01)) $Snap.unit))
; [eval] Clazz_m2_1_rd < write
(assert (< Clazz_m2_1_rd@210@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@212@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@212@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@212@01))) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@205@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@212@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@212@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@212@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@205@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3), Clazz())
; [eval] typeof(self_3)
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> self_3@208@01) (as Clazz<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(b_2), bool())
; [eval] typeof(b_2)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> b_2@209@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
  $Snap.unit))
; [eval] self_3 != null
(assert (not (= self_3@208@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
  $Snap.unit))
; [eval] !object___eq__(self_3, null)
; [eval] object___eq__(self_3, null)
(push) ; 2
(assert (object___eq__%precondition $Snap.unit self_3@208@01 $Ref.null))
(pop) ; 2
; Joined path conditions
(assert (object___eq__%precondition $Snap.unit self_3@208@01 $Ref.null))
(assert (not (object___eq__ $Snap.unit self_3@208@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m2_1_rd@210@01 $Perm.No) (< $Perm.No Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No Clazz_m2_1_rd@210@01))
(assert (<= Clazz_m2_1_rd@210@01 $Perm.Write))
(assert (=> (< $Perm.No Clazz_m2_1_rd@210@01) (not (= self_3@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_3.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_1_rd@210@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))
(declare-const lambda41_51$r@213@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda41_51$r), Clazz()) && (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] issubtype(typeof(lambda41_51$r), Clazz())
; [eval] typeof(lambda41_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 68 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@213@01), Clazz[PyType])) | live]
; [else-branch: 68 | issubtype[Bool](typeof[PyType](lambda41_51$r@213@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 68 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@213@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 68 | issubtype[Bool](typeof[PyType](lambda41_51$r@213@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] PSeq___sil_seq__(self_3.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_1_rd@210@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01)))
(pop) ; 2
(declare-fun inv@214@01 ($Ref) $Ref)
(declare-fun img@215@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda41_51$r@213@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
        lambda41_51$r@213@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
      (or
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :qid |Clazz_x-aux|)))
; Check receiver injectivity
(assert (forall ((lambda41_51$r1@213@01 $Ref) (lambda41_51$r2@213@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda41_51$r1@213@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
    (=>
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda41_51$r1@213@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            lambda41_51$r1@213@01))
        (issubtype<Bool> (typeof<PyType> lambda41_51$r2@213@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda41_51$r1@213@01 $Ref) (lambda41_51$r2@213@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r1@213@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          lambda41_51$r1@213@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r2@213@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          lambda41_51$r2@213@01))
      (= lambda41_51$r1@213@01 lambda41_51$r2@213@01))
    (= lambda41_51$r1@213@01 lambda41_51$r2@213@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda41_51$r@213@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :qid |quant-u-4833|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
  :pattern ((inv@214@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda41_51$r@213@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
        lambda41_51$r@213@01))
    (and
      (= (inv@214@01 lambda41_51$r@213@01) lambda41_51$r@213@01)
      (img@215@01 lambda41_51$r@213@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :qid |quant-u-4833|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (= (inv@214@01 r) r))
  :pattern ((inv@214@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((lambda41_51$r@213@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@213@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
        lambda41_51$r@213@01))
    (not (= lambda41_51$r@213@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@213@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
  $Snap.unit))
; [eval] (forall lambda41_51$r: Ref :: { (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) } issubtype(typeof(lambda41_51$r), Clazz()) && (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) ==> issubtype(typeof(lambda41_51$r.Clazz_x), int()))
(declare-const lambda41_51$r@216@01 $Ref)
(push) ; 2
; [eval] issubtype(typeof(lambda41_51$r), Clazz()) && (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) ==> issubtype(typeof(lambda41_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda41_51$r), Clazz()) && (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] issubtype(typeof(lambda41_51$r), Clazz())
; [eval] typeof(lambda41_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 69 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType])) | live]
; [else-branch: 69 | issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 69 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 69 | issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda41_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] PSeq___sil_seq__(self_3.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No Clazz_m2_1_rd@210@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 70 | issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]) && lambda41_51$r@216@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@212@01)))))))))) | live]
; [else-branch: 70 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]) && lambda41_51$r@216@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@212@01))))))))))) | live]
(push) ; 4
; [then-branch: 70 | issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]) && lambda41_51$r@216@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@212@01))))))))))]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
  (Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01)))
; [eval] issubtype(typeof(lambda41_51$r.Clazz_x), int())
; [eval] typeof(lambda41_51$r.Clazz_x)
(push) ; 5
(assert (not (and
  (img@215@01 lambda41_51$r@216@01)
  (and
    (issubtype<Bool> (typeof<PyType> (inv@214@01 lambda41_51$r@216@01)) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
      (inv@214@01 lambda41_51$r@216@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 70 | !(issubtype[Bool](typeof[PyType](lambda41_51$r@216@01), Clazz[PyType]) && lambda41_51$r@216@01 in PSeq___sil_seq__(_, First:(Second:(Second:(Second:(Second:(Second:(Second:(Second:(Second:($t@212@01)))))))))))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
      lambda41_51$r@216@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
        lambda41_51$r@216@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
    (Seq_contains
      (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
      lambda41_51$r@216@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda41_51$r@216@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            lambda41_51$r@216@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          lambda41_51$r@216@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1044@345@1044@582-aux|)))
(assert (forall ((lambda41_51$r@216@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
    (or
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            lambda41_51$r@216@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          lambda41_51$r@216@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1044@345@1044@582-aux|)))
(assert (forall ((lambda41_51$r@216@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda41_51$r@216@01) (as Clazz<PyType>  PyType))
      (Seq_contains
        (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
        lambda41_51$r@216@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) lambda41_51$r@216@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
    lambda41_51$r@216@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1044@345@1044@582|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))
(push) ; 2
(assert (not (or (= Clazz_m2_1_rd@210@01 $Perm.No) (< $Perm.No Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const $t@217@01 $Ref)
(assert (and
  (=>
    (< $Perm.No Clazz_m2_1_rd@210@01)
    (=
      $t@217@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))
  (=>
    (< $Perm.No Clazz_m2_1_rd@210@01)
    (=
      $t@217@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))))
(assert (<= $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)))
(assert (<= (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))
  (not (= self_3@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_3.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_3.Clazz_seq)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))))))
(declare-const lambda42_51$r@218@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda42_51$r), Clazz()) && (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] issubtype(typeof(lambda42_51$r), Clazz())
; [eval] typeof(lambda42_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 71 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@218@01), Clazz[PyType])) | live]
; [else-branch: 71 | issubtype[Bool](typeof[PyType](lambda42_51$r@218@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 71 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@218@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 71 | issubtype[Bool](typeof[PyType](lambda42_51$r@218@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] PSeq___sil_seq__(self_3.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@218@01)))
(pop) ; 2
(declare-fun inv@219@01 ($Ref) $Ref)
(declare-fun img@220@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda42_51$r@218@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@218@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :qid |Clazz_x-aux|)))
; Check receiver injectivity
(assert (forall ((lambda42_51$r1@218@01 $Ref) (lambda42_51$r2@218@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda42_51$r1@218@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
    (=>
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda42_51$r1@218@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda42_51$r1@218@01))
        (issubtype<Bool> (typeof<PyType> lambda42_51$r2@218@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 2
(assert (not (forall ((lambda42_51$r1@218@01 $Ref) (lambda42_51$r2@218@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r1@218@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda42_51$r1@218@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r2@218@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda42_51$r2@218@01))
      (= lambda42_51$r1@218@01 lambda42_51$r2@218@01))
    (= lambda42_51$r1@218@01 lambda42_51$r2@218@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda42_51$r@218@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :qid |quant-u-4835|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
  :pattern ((inv@219@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda42_51$r@218@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@218@01))
    (and
      (= (inv@219@01 lambda42_51$r@218@01) lambda42_51$r@218@01)
      (img@220@01 lambda42_51$r@218@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :qid |quant-u-4835|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (= (inv@219@01 r) r))
  :pattern ((inv@219@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((lambda42_51$r@218@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@218@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@218@01))
    (not (= lambda42_51$r@218@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@218@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda42_51$r@218@01 lambda41_51$r@213@01)
    (=
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
      (and
        (img@215@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            (inv@214@01 r))))))
  
  :qid |quant-u-4836|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))))
  $Snap.unit))
; [eval] (forall lambda42_51$r: Ref :: { (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) } issubtype(typeof(lambda42_51$r), Clazz()) && (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) ==> issubtype(typeof(lambda42_51$r.Clazz_x), int()))
(declare-const lambda42_51$r@221@01 $Ref)
(set-option :timeout 0)
(push) ; 2
; [eval] issubtype(typeof(lambda42_51$r), Clazz()) && (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq)) ==> issubtype(typeof(lambda42_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda42_51$r), Clazz()) && (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] issubtype(typeof(lambda42_51$r), Clazz())
; [eval] typeof(lambda42_51$r)
; [eval] Clazz()
(push) ; 3
; [then-branch: 72 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType])) | live]
; [else-branch: 72 | issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]) | live]
(push) ; 4
; [then-branch: 72 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))))
(pop) ; 4
(push) ; 4
; [else-branch: 72 | issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda42_51$r in PSeq___sil_seq__(self_3.Clazz_seq))
; [eval] PSeq___sil_seq__(self_3.Clazz_seq)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType)))))
(push) ; 3
; [then-branch: 73 | issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]) && lambda42_51$r@221@01 in PSeq___sil_seq__(_, $t@217@01) | live]
; [else-branch: 73 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]) && lambda42_51$r@221@01 in PSeq___sil_seq__(_, $t@217@01)) | live]
(push) ; 4
; [then-branch: 73 | issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]) && lambda42_51$r@221@01 in PSeq___sil_seq__(_, $t@217@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@221@01)))
; [eval] issubtype(typeof(lambda42_51$r.Clazz_x), int())
; [eval] typeof(lambda42_51$r.Clazz_x)
(declare-const sm@222@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@223@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@223@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@223@01  $FPM) lambda42_51$r@221@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 4
(push) ; 4
; [else-branch: 73 | !(issubtype[Bool](typeof[PyType](lambda42_51$r@221@01), Clazz[PyType]) && lambda42_51$r@221@01 in PSeq___sil_seq__(_, $t@217@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@221@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@223@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@221@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@221@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@223@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@223@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda42_51$r@221@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda42_51$r@221@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda42_51$r@221@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@221@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1045@345@1045@582-aux|)))
(assert (forall ((lambda42_51$r@221@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda42_51$r@221@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda42_51$r@221@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1045@345@1045@582-aux|)))
(assert (forall ((lambda42_51$r@221@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda42_51$r@221@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda42_51$r@221@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) lambda42_51$r@221@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@221@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda42_51$r@221@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1045@345@1045@582|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@224@01 $Snap)
(assert (= $t@224@01 ($Snap.combine ($Snap.first $t@224@01) ($Snap.second $t@224@01))))
(assert (= ($Snap.first $t@224@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@224@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@224@01))
    ($Snap.second ($Snap.second $t@224@01)))))
(assert (= ($Snap.first ($Snap.second $t@224@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@224@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@224@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@224@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@224@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@207@01 _current_wait_level_159@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@224@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@224@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@224@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@224@01))))
  $Snap.unit))
(assert false)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@224@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@225@01 $Ref)
; [exec]
; var self_8: Ref
(declare-const self_8@226@01 $Ref)
; [exec]
; var b_6: Ref
(declare-const b_6@227@01 $Ref)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@228@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@229@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_3) == Clazz()
(declare-const $t@230@01 $Snap)
(assert (= $t@230@01 $Snap.unit))
; [eval] typeof(self_3) == Clazz()
; [eval] typeof(self_3)
; [eval] Clazz()
(assert (= (typeof<PyType> self_3@208@01) (as Clazz<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_8 := self_3
; [exec]
; b_6 := b_2
; [eval] bool___unbox__(b_6)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(assert (bool___unbox__%precondition $Snap.unit b_2@209@01))
(pop) ; 3
; Joined path conditions
(assert (bool___unbox__%precondition $Snap.unit b_2@209@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (bool___unbox__ $Snap.unit b_2@209@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit b_2@209@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | bool___unbox__(_, b_2@209@01) | live]
; [else-branch: 74 | !(bool___unbox__(_, b_2@209@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 74 | bool___unbox__(_, b_2@209@01)]
(assert (bool___unbox__ $Snap.unit b_2@209@01))
; [exec]
; var Clazz_m1_2_call_rd: Perm
(declare-const Clazz_m1_2_call_rd@231@01 $Perm)
; [exec]
; inhale none < Clazz_m1_2_call_rd && Clazz_m1_2_call_rd < write
(declare-const $t@232@01 $Snap)
(assert (= $t@232@01 ($Snap.combine ($Snap.first $t@232@01) ($Snap.second $t@232@01))))
(assert (= ($Snap.first $t@232@01) $Snap.unit))
; [eval] none < Clazz_m1_2_call_rd
(assert (< $Perm.No Clazz_m1_2_call_rd@231@01))
(assert (= ($Snap.second $t@232@01) $Snap.unit))
; [eval] Clazz_m1_2_call_rd < write
(assert (< Clazz_m1_2_call_rd@231@01 $Perm.Write))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale none < perm(self_8.Clazz_seq) ==>
;   Clazz_m1_2_call_rd < perm(self_8.Clazz_seq)
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 $Snap.unit))
; [eval] none < perm(self_8.Clazz_seq) ==> Clazz_m1_2_call_rd < perm(self_8.Clazz_seq)
; [eval] none < perm(self_8.Clazz_seq)
; [eval] perm(self_8.Clazz_seq)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | Z < Clazz_m2_1_rd@210@01 + Clazz_m2_1_rd@210@01 | live]
; [else-branch: 75 | !(Z < Clazz_m2_1_rd@210@01 + Clazz_m2_1_rd@210@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 75 | Z < Clazz_m2_1_rd@210@01 + Clazz_m2_1_rd@210@01]
(assert (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)))
; [eval] Clazz_m1_2_call_rd < perm(self_8.Clazz_seq)
; [eval] perm(self_8.Clazz_seq)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)))
(assert (=>
  (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))
  (< Clazz_m1_2_call_rd@231@01 (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall lambda18_51$r: Ref ::
;     { (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq)) }
;     issubtype(typeof(lambda18_51$r), Clazz()) &&
;     (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq)) ==>
;     none < perm(lambda18_51$r.Clazz_x) ==>
;     Clazz_m1_2_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const $t@234@01 $Snap)
(assert (= $t@234@01 $Snap.unit))
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_2_call_rd < perm(lambda18_51$r.Clazz_x))
(declare-const lambda18_51$r@235@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq)) ==> none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_2_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 76 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType])) | live]
; [else-branch: 76 | issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 76 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 76 | issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_8.Clazz_seq))
; [eval] PSeq___sil_seq__(self_8.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 77 | issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]) && lambda18_51$r@235@01 in PSeq___sil_seq__(_, $t@217@01) | live]
; [else-branch: 77 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]) && lambda18_51$r@235@01 in PSeq___sil_seq__(_, $t@217@01)) | live]
(push) ; 6
; [then-branch: 77 | issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]) && lambda18_51$r@235@01 in PSeq___sil_seq__(_, $t@217@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01)))
; [eval] none < perm(lambda18_51$r.Clazz_x) ==> Clazz_m1_2_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] none < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
(declare-const pm@236@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@236@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef20|)))
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(assert (<= ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01) $Perm.Write))
(push) ; 7
; [then-branch: 78 | Z < PermLookup(Clazz_x, pm@236@01, lambda18_51$r@235@01) | live]
; [else-branch: 78 | !(Z < PermLookup(Clazz_x, pm@236@01, lambda18_51$r@235@01)) | live]
(push) ; 8
; [then-branch: 78 | Z < PermLookup(Clazz_x, pm@236@01, lambda18_51$r@235@01)]
(assert (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
; [eval] Clazz_m1_2_call_rd < perm(lambda18_51$r.Clazz_x)
; [eval] perm(lambda18_51$r.Clazz_x)
; perm(lambda18_51$r.Clazz_x)  ~~>  assume upper permission bound
(pop) ; 8
(push) ; 8
; [else-branch: 78 | !(Z < PermLookup(Clazz_x, pm@236@01, lambda18_51$r@235@01))]
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
  (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 77 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@235@01), Clazz[PyType]) && lambda18_51$r@235@01 in PSeq___sil_seq__(_, $t@217@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@236@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef20|)))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01)
    (<=
      ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)
      $Perm.Write)
    (or
      (not
        (<
          $Perm.No
          ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@235@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@236@01  $FPM) r)
    (+
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@236@01  $FPM) r))
  :qid |qp.resPrmSumDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@235@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r@235@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@235@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1065@13@1065@290-aux|)))
(assert (forall ((lambda18_51$r@235@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01)
        (<=
          ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)
          $Perm.Write)
        (or
          (not
            (<
              $Perm.No
              ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
          (<
            $Perm.No
            ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r@235@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1065@13@1065@290-aux|)))
(assert (forall ((lambda18_51$r@235@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@235@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@235@01))
      (< $Perm.No ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
    (<
      Clazz_m1_2_call_rd@231@01
      ($FVF.perm_Clazz_x (as pm@236@01  $FPM) lambda18_51$r@235@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@235@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@235@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@1065@13@1065@290|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_159 := Clazz_m1(_cthread_159, _method_measures_159, _residue_159, self_8,
;   b_6, Clazz_m1_2_call_rd)
; [eval] none < Clazz_m1_rd
; [eval] Clazz_m1_rd < write
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_0), Clazz())
; [eval] typeof(self_0)
; [eval] Clazz()
; [eval] issubtype(typeof(b), bool())
; [eval] typeof(b)
; [eval] bool()
; [eval] self_0 != null
; [eval] !object___eq__(self_0, null)
; [eval] object___eq__(self_0, null)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (or
  (= Clazz_m1_2_call_rd@231@01 $Perm.No)
  (< $Perm.No Clazz_m1_2_call_rd@231@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  (-
    (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
    ($Perm.min
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      Clazz_m1_2_call_rd@231@01))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
    ($Perm.min
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      Clazz_m1_2_call_rd@231@01))))
(assert (<=
  (-
    (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
    ($Perm.min
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      Clazz_m1_2_call_rd@231@01))
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01)))
  (not (= self_3@208@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(assert (not (or
  (=
    (-
      Clazz_m1_2_call_rd@231@01
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    $Perm.No)
  (<
    (-
      Clazz_m1_2_call_rd@231@01
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(declare-const lambda18_51$r@237@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 79 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@237@01), Clazz[PyType])) | live]
; [else-branch: 79 | issubtype[Bool](typeof[PyType](lambda18_51$r@237@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 79 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@237@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 79 | issubtype[Bool](typeof[PyType](lambda18_51$r@237@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@237@01)))
(pop) ; 4
(declare-fun inv@238@01 ($Ref) $Ref)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda18_51$r@237@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@237@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@237@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@237@01)))
    (or
      (= Clazz_m1_2_call_rd@231@01 $Perm.No)
      (< $Perm.No Clazz_m1_2_call_rd@231@01)))
  
  :qid |quant-u-4837|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda18_51$r1@237@01 $Ref) (lambda18_51$r2@237@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r1@237@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda18_51$r1@237@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@217@01)
              lambda18_51$r1@237@01))
          (< $Perm.No Clazz_m1_2_call_rd@231@01))
        (issubtype<Bool> (typeof<PyType> lambda18_51$r2@237@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r1@237@01 $Ref) (lambda18_51$r2@237@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r1@237@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r1@237@01))
        (< $Perm.No Clazz_m1_2_call_rd@231@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r2@237@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r2@237@01))
        (< $Perm.No Clazz_m1_2_call_rd@231@01))
      (= lambda18_51$r1@237@01 lambda18_51$r2@237@01))
    (= lambda18_51$r1@237@01 lambda18_51$r2@237@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda18_51$r@237@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@238@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
  :pattern ((inv@238@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda18_51$r@237@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@237@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@237@01))
      (< $Perm.No Clazz_m1_2_call_rd@231@01))
    (and
      (= (inv@238@01 lambda18_51$r@237@01) lambda18_51$r@237@01)
      (img@239@01 lambda18_51$r@237@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@237@01))
  :qid |Clazz_x-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@238@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@238@01 r)))
        (< $Perm.No Clazz_m1_2_call_rd@231@01)))
    (= (inv@238@01 r) r))
  :pattern ((inv@238@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@240@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@238@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@238@01 r)))
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      Clazz_m1_2_call_rd@231@01)
    $Perm.No))
(define-fun pTaken@241@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@238@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@238@01 r)))
      (img@239@01 r)
      (= r (inv@238@01 r)))
    ($Perm.min
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (- Clazz_m1_2_call_rd@231@01 (pTaken@240@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@215@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
              (inv@214@01 r))))
        $Perm.Write
        $Perm.No)
      (pTaken@240@01 r))
    $Perm.No)
  
  :qid |quant-u-4839|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> (inv@238@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@238@01 r)))
      (img@239@01 r)
      (= r (inv@238@01 r)))
    (= (- Clazz_m1_2_call_rd@231@01 (pTaken@240@01 r)) $Perm.No))
  
  :qid |quant-u-4840|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall lambda18_51$r: Ref :: { (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int()))
(declare-const lambda18_51$r@242@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda18_51$r), Clazz()) && (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda18_51$r), Clazz())
; [eval] typeof(lambda18_51$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 80 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType])) | live]
; [else-branch: 80 | issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 80 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 80 | issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda18_51$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 81 | issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]) && lambda18_51$r@242@01 in PSeq___sil_seq__(_, $t@217@01) | live]
; [else-branch: 81 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]) && lambda18_51$r@242@01 in PSeq___sil_seq__(_, $t@217@01)) | live]
(push) ; 6
; [then-branch: 81 | issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]) && lambda18_51$r@242@01 in PSeq___sil_seq__(_, $t@217@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@242@01)))
; [eval] issubtype(typeof(lambda18_51$r.Clazz_x), int())
; [eval] typeof(lambda18_51$r.Clazz_x)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@215@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            (inv@214@01 r))))
      (=
        ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
    :qid |qp.fvfValDef17|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
      (=
        ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
        ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
    :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
    :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
    :qid |qp.fvfValDef18|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@215@01 lambda18_51$r@242@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@214@01 lambda18_51$r@242@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
            (inv@214@01 lambda18_51$r@242@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@220@01 lambda18_51$r@242@01)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 lambda18_51$r@242@01)) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            (inv@219@01 lambda18_51$r@242@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 81 | !(issubtype[Bool](typeof[PyType](lambda18_51$r@242@01), Clazz[PyType]) && lambda18_51$r@242@01 in PSeq___sil_seq__(_, $t@217@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@242@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef18|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@242@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@242@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@215@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@214@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))
          (inv@214@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda18_51$r@242@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r@242@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@242@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@242@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@217@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@217@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@217@01)
            lambda18_51$r@242@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@242@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586-aux|)))
(assert (forall ((lambda18_51$r@242@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586_precondition|)))
(push) ; 4
(assert (not (forall ((lambda18_51$r@242@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@217@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@217@01)
          lambda18_51$r@242@01)))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) lambda18_51$r@242@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((lambda18_51$r@242@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda18_51$r@242@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) lambda18_51$r@242@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@222@01  $FVF<Clazz_x>) lambda18_51$r@242@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@217@01)
    lambda18_51$r@242@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@938@349@938@586|)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@243@01 $Perm)
(declare-const $t@244@01 $Snap)
(assert (= $t@244@01 ($Snap.combine ($Snap.first $t@244@01) ($Snap.second $t@244@01))))
(assert (= ($Snap.first $t@244@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@244@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@244@01))
    ($Snap.second ($Snap.second $t@244@01)))))
(assert (= ($Snap.first ($Snap.second $t@244@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@244@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@244@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@244@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_159@207@01 _current_wait_level_156@243@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@244@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@244@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))
(push) ; 4
(assert (not (or
  (= Clazz_m1_2_call_rd@231@01 $Perm.No)
  (< $Perm.No Clazz_m1_2_call_rd@231@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@245@01 $Ref)
(assert (and
  (=>
    (<
      $Perm.No
      (-
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        ($Perm.min
          (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
          Clazz_m1_2_call_rd@231@01)))
    (= $t@245@01 $t@217@01))
  (=>
    (< $Perm.No Clazz_m1_2_call_rd@231@01)
    (=
      $t@245@01
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))))
(assert (<=
  $Perm.No
  (+
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    Clazz_m1_2_call_rd@231@01)))
(assert (<=
  (+
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    Clazz_m1_2_call_rd@231@01)
  $Perm.Write))
(assert (=>
  (<
    $Perm.No
    (+
      (-
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        ($Perm.min
          (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
          Clazz_m1_2_call_rd@231@01))
      Clazz_m1_2_call_rd@231@01))
  (not (= self_3@208@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.Clazz_seq), PSeq(Clazz()))
; [eval] typeof(self_0.Clazz_seq)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    Clazz_m1_2_call_rd@231@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] PSeq(Clazz())
; [eval] Clazz()
(assert (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (as Clazz<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))))))
(declare-const lambda19_50$r@246@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 82 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@246@01), Clazz[PyType])) | live]
; [else-branch: 82 | issubtype[Bool](typeof[PyType](lambda19_50$r@246@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 82 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@246@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 82 | issubtype[Bool](typeof[PyType](lambda19_50$r@246@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    Clazz_m1_2_call_rd@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType)))))
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@246@01)))
(pop) ; 4
(declare-fun inv@247@01 ($Ref) $Ref)
(declare-fun img@248@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@246@01))
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
          (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
          (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
      (or
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (not
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |Clazz_x-aux|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r@246@01 $Ref)) (!
  (=>
    (and
      (=>
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@245@01)
          lambda19_50$r@246@01)))
    (or
      (= Clazz_m1_2_call_rd@231@01 $Perm.No)
      (< $Perm.No Clazz_m1_2_call_rd@231@01)))
  
  :qid |quant-u-4841|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(assert (forall ((lambda19_50$r1@246@01 $Ref) (lambda19_50$r2@246@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r1@246@01) (as Clazz<PyType>  PyType))
      (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
    (=>
      (and
        (and
          (and
            (issubtype<Bool> (typeof<PyType> lambda19_50$r1@246@01) (as Clazz<PyType>  PyType))
            (Seq_contains
              (PSeq___sil_seq__ $Snap.unit $t@245@01)
              lambda19_50$r1@246@01))
          (< $Perm.No Clazz_m1_2_call_rd@231@01))
        (issubtype<Bool> (typeof<PyType> lambda19_50$r2@246@01) (as Clazz<PyType>  PyType)))
      (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
  
  :qid |Clazz_x-rcvrInj|)))
(push) ; 4
(assert (not (forall ((lambda19_50$r1@246@01 $Ref) (lambda19_50$r2@246@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r1@246@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@245@01)
            lambda19_50$r1@246@01))
        (< $Perm.No Clazz_m1_2_call_rd@231@01))
      (and
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r2@246@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@245@01)
            lambda19_50$r2@246@01))
        (< $Perm.No Clazz_m1_2_call_rd@231@01))
      (= lambda19_50$r1@246@01 lambda19_50$r2@246@01))
    (= lambda19_50$r1@246@01 lambda19_50$r2@246@01))
  
  :qid |Clazz_x-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (=>
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
    (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |quant-u-4842|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@248@01 r)
      (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
  :pattern ((inv@247@01 r))
  :qid |Clazz_x-fctOfInv|)))
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@245@01)
          lambda19_50$r@246@01))
      (< $Perm.No Clazz_m1_2_call_rd@231@01))
    (and
      (= (inv@247@01 lambda19_50$r@246@01) lambda19_50$r@246@01)
      (img@248@01 lambda19_50$r@246@01)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |quant-u-4842|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@248@01 r)
      (and
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r)))
        (< $Perm.No Clazz_m1_2_call_rd@231@01)))
    (= (inv@247@01 r) r))
  :pattern ((inv@247@01 r))
  :qid |Clazz_x-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (<= $Perm.No Clazz_m1_2_call_rd@231@01)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |Clazz_x-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (<= Clazz_m1_2_call_rd@231@01 $Perm.Write)
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |Clazz_x-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((lambda19_50$r@246@01 $Ref)) (!
  (=>
    (and
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@246@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@245@01)
          lambda19_50$r@246@01))
      (< $Perm.No Clazz_m1_2_call_rd@231@01))
    (not (= lambda19_50$r@246@01 $Ref.null)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@246@01))
  :qid |Clazz_x-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda19_50$r@246@01 lambda42_51$r@218@01)
    (=
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))))
  
  :qid |quant-u-4843|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))))
  $Snap.unit))
; [eval] (forall lambda19_50$r: Ref :: { (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) } issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int()))
(declare-const lambda19_50$r@249@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq)) ==> issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] issubtype(typeof(lambda19_50$r), Clazz()) && (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] issubtype(typeof(lambda19_50$r), Clazz())
; [eval] typeof(lambda19_50$r)
; [eval] Clazz()
(push) ; 5
; [then-branch: 83 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType])) | live]
; [else-branch: 83 | issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]) | live]
(push) ; 6
; [then-branch: 83 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]))]
(assert (not
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))))
(pop) ; 6
(push) ; 6
; [else-branch: 83 | issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType])]
(assert (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType)))
; [eval] (lambda19_50$r in PSeq___sil_seq__(self_0.Clazz_seq))
; [eval] PSeq___sil_seq__(self_0.Clazz_seq)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.No
  (+
    (-
      (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
      ($Perm.min
        (+ Clazz_m2_1_rd@210@01 Clazz_m2_1_rd@210@01)
        Clazz_m1_2_call_rd@231@01))
    Clazz_m1_2_call_rd@231@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
; [eval] issubtype(typeof(box), PSeq(PSeq_arg(typeof(box), 0)))
; [eval] typeof(box)
; [eval] PSeq(PSeq_arg(typeof(box), 0))
; [eval] PSeq_arg(typeof(box), 0)
; [eval] typeof(box)
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0))))
(assert (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
  (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
    (PSeq___sil_seq__%precondition $Snap.unit $t@245@01))))
(assert (or
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
  (not
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType)))))
(push) ; 5
; [then-branch: 84 | issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]) && lambda19_50$r@249@01 in PSeq___sil_seq__(_, $t@245@01) | live]
; [else-branch: 84 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]) && lambda19_50$r@249@01 in PSeq___sil_seq__(_, $t@245@01)) | live]
(push) ; 6
; [then-branch: 84 | issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]) && lambda19_50$r@249@01 in PSeq___sil_seq__(_, $t@245@01)]
(assert (and
  (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
  (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@249@01)))
; [eval] issubtype(typeof(lambda19_50$r.Clazz_x), int())
; [eval] typeof(lambda19_50$r.Clazz_x)
(declare-const sm@250@01 $FVF<Clazz_x>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
      (< $Perm.No Clazz_m1_2_call_rd@231@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r))
  :qid |qp.fvfValDef22|)))
(declare-const pm@251@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@251@01  $FPM) r)
    (+
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@248@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
        Clazz_m1_2_call_rd@231@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_Clazz_x (as pm@251@01  $FPM) lambda19_50$r@249@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] int()
(pop) ; 6
(push) ; 6
; [else-branch: 84 | !(issubtype[Bool](typeof[PyType](lambda19_50$r@249@01), Clazz[PyType]) && lambda19_50$r@249@01 in PSeq___sil_seq__(_, $t@245@01))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@249@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
      (< $Perm.No Clazz_m1_2_call_rd@231@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@251@01  $FPM) r)
    (+
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@248@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
        Clazz_m1_2_call_rd@231@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@249@01)))
  (and
    (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
    (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@249@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and
        (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
        (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
      (< $Perm.No Clazz_m1_2_call_rd@231@01)
      false)
    (=
      ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r)
      ($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r)))
  :pattern (($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) r))
  :pattern (($FVF.lookup_Clazz_x ($SortWrappers.$SnapTo$FVF<Clazz_x> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01)))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@251@01  $FPM) r)
    (+
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@248@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
        Clazz_m1_2_call_rd@231@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((lambda19_50$r@249@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@245@01)
            lambda19_50$r@249@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@245@01)
          lambda19_50$r@249@01))))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@249@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@249@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
        (issubtype<Bool> (typeof<PyType> $t@245@01) (PSeq<PyType> (PSeq_arg<PyType> (typeof<PyType> $t@245@01) 0)))
        (PSeq___sil_seq__%precondition $Snap.unit $t@245@01)))
    (or
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (not
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
          (Seq_contains
            (PSeq___sil_seq__ $Snap.unit $t@245@01)
            lambda19_50$r@249@01)))
      (and
        (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
        (Seq_contains
          (PSeq___sil_seq__ $Snap.unit $t@245@01)
          lambda19_50$r@249@01))))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585-aux|)))
(assert (forall ((lambda19_50$r@249@01 $Ref)) (!
  (=>
    (and
      (issubtype<Bool> (typeof<PyType> lambda19_50$r@249@01) (as Clazz<PyType>  PyType))
      (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) lambda19_50$r@249@01))
    (issubtype<Bool> (typeof<PyType> ($FVF.lookup_Clazz_x (as sm@250@01  $FVF<Clazz_x>) lambda19_50$r@249@01)) (as int<PyType>  PyType)))
  :pattern ((Seq_contains
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@249@01))
  :pattern ((Seq_contains_trigger
    (PSeq___sil_seq__ $Snap.unit $t@245@01)
    lambda19_50$r@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsarpverificationtest_rd_quantified.py.vpr@941@348@941@585|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@244@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda42_51$r@218@01 lambda19_50$r@246@01)
    (=
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))))
  
  :qid |quant-u-4844|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(declare-const pm@252@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@252@01  $FPM) r)
    (+
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@248@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
        Clazz_m1_2_call_rd@231@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@252@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@252@01  $FPM) r) $Perm.Write)
  :pattern ((inv@219@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@252@01  $FPM) r) $Perm.Write)
  :pattern ((inv@247@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda42_51$r@218@01 lambda19_50$r@246@01)
    (=
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))))
  
  :qid |quant-u-4845|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
(declare-const pm@253@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Clazz_x (as pm@253@01  $FPM) r)
    (+
      (ite
        (and
          (img@220@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@248@01 r)
          (and
            (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
            (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))
        Clazz_m1_2_call_rd@231@01
        $Perm.No)))
  :pattern (($FVF.perm_Clazz_x (as pm@253@01  $FPM) r))
  :qid |qp.resPrmSumDef25|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@253@01  $FPM) r) $Perm.Write)
  :pattern ((inv@219@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field Clazz_x
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_Clazz_x (as pm@253@01  $FPM) r) $Perm.Write)
  :pattern ((inv@247@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= lambda42_51$r@218@01 lambda19_50$r@246@01)
    (=
      (and
        (img@220@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@219@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@217@01) (inv@219@01 r))))
      (and
        (img@248@01 r)
        (and
          (issubtype<Bool> (typeof<PyType> (inv@247@01 r)) (as Clazz<PyType>  PyType))
          (Seq_contains (PSeq___sil_seq__ $Snap.unit $t@245@01) (inv@247@01 r))))))
  
  :qid |quant-u-4846|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
; Assume upper permission bound for field Clazz_x
; Assume upper permission bound for field Clazz_x
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_160@254@01 $Ref)
(declare-const _caller_measures_160@255@01 Seq<Measure$>)
(declare-const _residue_160@256@01 $Perm)
(declare-const main_rd@257@01 $Perm)
(declare-const _current_wait_level_160@258@01 $Perm)
(declare-const _cthread_160@259@01 $Ref)
(declare-const _caller_measures_160@260@01 Seq<Measure$>)
(declare-const _residue_160@261@01 $Perm)
(declare-const main_rd@262@01 $Perm)
(declare-const _current_wait_level_160@263@01 $Perm)
(push) ; 1
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 ($Snap.combine ($Snap.first $t@264@01) ($Snap.second $t@264@01))))
(assert (= ($Snap.first $t@264@01) $Snap.unit))
; [eval] none < main_rd
(assert (< $Perm.No main_rd@262@01))
(assert (=
  ($Snap.second $t@264@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@264@01))
    ($Snap.second ($Snap.second $t@264@01)))))
(assert (= ($Snap.first ($Snap.second $t@264@01)) $Snap.unit))
; [eval] main_rd < write
(assert (< main_rd@262@01 $Perm.Write))
(assert (=
  ($Snap.second ($Snap.second $t@264@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@264@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@264@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@264@01))) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@259@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@264@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@264@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@264@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@264@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@259@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@264@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 ($Snap.combine ($Snap.first $t@265@01) ($Snap.second $t@265@01))))
(assert (= ($Snap.first $t@265@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@265@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@265@01))
    ($Snap.second ($Snap.second $t@265@01)))))
(assert (= ($Snap.first ($Snap.second $t@265@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@265@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@265@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@265@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@265@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@261@01 _current_wait_level_160@263@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@265@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@266@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@267@01 Set<_Name>)
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@268@01 $Perm)
; [exec]
; var _method_measures_160: Seq[Measure$]
(declare-const _method_measures_160@269@01 Seq<Measure$>)
; [exec]
; _method_measures_160 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; module_defined_0 := true
; [exec]
; module_names_0 := Set[_Name]()
; [eval] Set[_Name]()
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(3106082509126931487350218591)))
; [eval] (module_names_0 union Set(_single(3106082509126931487350218591)))
; [eval] Set(_single(3106082509126931487350218591))
; [eval] _single(3106082509126931487350218591)
(declare-const module_names_0@270@01 Set<_Name>)
(assert (=
  module_names_0@270@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 3106082509126931487350218591)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@271@01 $Snap)
(assert (= $t@271@01 ($Snap.combine ($Snap.first $t@271@01) ($Snap.second $t@271@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@271@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@271@01))
    ($Snap.second ($Snap.second $t@271@01)))))
(assert (= ($Snap.first ($Snap.second $t@271@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@271@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@271@01)) $Snap.unit))
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
; module_names_0 := (module_names_0 union
;   Set(_single(2489530350921051593165922143)))
; [eval] (module_names_0 union Set(_single(2489530350921051593165922143)))
; [eval] Set(_single(2489530350921051593165922143))
; [eval] _single(2489530350921051593165922143)
(declare-const module_names_0@272@01 Set<_Name>)
(assert (=
  module_names_0@272@01
  (Set_union module_names_0@270@01 (Set_singleton (_single<_Name> 2489530350921051593165922143)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 2489249333222104298408468319), __name__()._val)))
(declare-const $t@273@01 $Snap)
(assert (= $t@273@01 ($Snap.combine ($Snap.first $t@273@01) ($Snap.second $t@273@01))))
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
  ($Snap.second $t@273@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@273@01))
    ($Snap.second ($Snap.second $t@273@01)))))
(assert (= ($Snap.first ($Snap.second $t@273@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@273@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@273@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@273@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@273@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@273@01))) $Snap.unit))
; [eval] str___eq__(str___create__(8, 2489249333222104298408468319), __name__()._val)
; [eval] str___create__(8, 2489249333222104298408468319)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 8 2489249333222104298408468319))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 8 2489249333222104298408468319))
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 2489249333222104298408468319)) (as str<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 2489249333222104298408468319)) (as str<PyType>  PyType)))
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 2489249333222104298408468319) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 2489249333222104298408468319)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 2489249333222104298408468319) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 2489249333222104298408468319) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert true
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(3493880855485680332086796127)))
; [eval] (module_names_0 union Set(_single(3493880855485680332086796127)))
; [eval] Set(_single(3493880855485680332086796127))
; [eval] _single(3493880855485680332086796127)
(declare-const module_names_0@274@01 Set<_Name>)
(assert (=
  module_names_0@274@01
  (Set_union module_names_0@272@01 (Set_singleton (_single<_Name> 3493880855485680332086796127)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12653)))
; [eval] (module_names_0 union Set(_single(12653)))
; [eval] Set(_single(12653))
; [eval] _single(12653)
(declare-const module_names_0@275@01 Set<_Name>)
(assert (=
  module_names_0@275@01
  (Set_union module_names_0@274@01 (Set_singleton (_single<_Name> 12653)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(828322157)))
; [eval] (module_names_0 union Set(_single(828322157)))
; [eval] Set(_single(828322157))
; [eval] _single(828322157)
(declare-const module_names_0@276@01 Set<_Name>)
(assert (=
  module_names_0@276@01
  (Set_union module_names_0@275@01 (Set_singleton (_single<_Name> 828322157)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12909)))
; [eval] (module_names_0 union Set(_single(12909)))
; [eval] Set(_single(12909))
; [eval] _single(12909)
(declare-const module_names_0@277@01 Set<_Name>)
(assert (=
  module_names_0@277@01
  (Set_union module_names_0@276@01 (Set_singleton (_single<_Name> 12909)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(828322413)))
; [eval] (module_names_0 union Set(_single(828322413)))
; [eval] Set(_single(828322413))
; [eval] _single(828322413)
(declare-const module_names_0@278@01 Set<_Name>)
(assert (=
  module_names_0@278@01
  (Set_union module_names_0@277@01 (Set_singleton (_single<_Name> 828322413)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(4409224812126180285)))
; [eval] (module_names_0 union Set(_single(4409224812126180285)))
; [eval] Set(_single(4409224812126180285))
; [eval] _single(4409224812126180285)
(declare-const module_names_0@279@01 Set<_Name>)
(assert (=
  module_names_0@279@01
  (Set_union module_names_0@278@01 (Set_singleton (_single<_Name> 4409224812126180285)))))
; [exec]
; label __end
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- HavocPerm ----------
(declare-const returnval@280@01 $Perm)
(declare-const returnval@281@01 $Perm)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- HavocInt ----------
(declare-const returnval_0@282@01 Int)
(declare-const returnval_0@283@01 Int)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- HavocBool ----------
(declare-const returnval_1@284@01 Bool)
(declare-const returnval_1@285@01 Bool)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- HavocRef ----------
(declare-const returnval_2@286@01 $Ref)
(declare-const returnval_2@287@01 $Ref)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
