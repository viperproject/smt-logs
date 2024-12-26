(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:29:44
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
(declare-sort PyType 0)
(declare-sort SIFDomain<Int> 0)
(declare-sort SIFDomain<Ref> 0)
(declare-sort _list_ce_helper 0)
(declare-sort _Name 0)
(declare-sort _dict_ce_helper 0)
(declare-sort Measure$ 0)
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
(declare-fun $SortWrappers.SIFDomain<Int>To$Snap (SIFDomain<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSIFDomain<Int> ($Snap) SIFDomain<Int>)
(assert (forall ((x SIFDomain<Int>)) (!
    (= x ($SortWrappers.$SnapToSIFDomain<Int>($SortWrappers.SIFDomain<Int>To$Snap x)))
    :pattern (($SortWrappers.SIFDomain<Int>To$Snap x))
    :qid |$Snap.$SnapToSIFDomain<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.SIFDomain<Int>To$Snap($SortWrappers.$SnapToSIFDomain<Int> x)))
    :pattern (($SortWrappers.$SnapToSIFDomain<Int> x))
    :qid |$Snap.SIFDomain<Int>To$SnapToSIFDomain<Int>|
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
(declare-const KeysView<PyType> PyType)
(declare-const ValuesView<PyType> PyType)
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
(declare-fun Low<Bool> (Int) Bool)
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
; Declaring symbols related to program functions (from program analysis)
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun dict___values__ ($Snap $Ref) Seq<$Ref>)
(declare-fun dict___values__%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun dict___values__%stateless ($Ref) Bool)
(declare-fun dict___values__%precondition ($Snap $Ref) Bool)
(declare-fun dict___contains__ ($Snap $Ref $Ref) Bool)
(declare-fun dict___contains__%limited ($Snap $Ref $Ref) Bool)
(declare-fun dict___contains__%stateless ($Ref $Ref) Bool)
(declare-fun dict___contains__%precondition ($Snap $Ref $Ref) Bool)
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
(declare-fun list___getitem__ ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%limited ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%stateless ($Ref $Ref) Bool)
(declare-fun list___getitem__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
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
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> KeysView<PyType> PMultiset_basic<PyType> PSet_basic<PyType> ValuesView<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as KeysView<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as KeysView<PyType>  PyType))
    (as KeysView<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as ValuesView<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as ValuesView<PyType>  PyType))
    (as ValuesView<PyType>  PyType))))
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
(assert (forall ((x Int)) (!
  (Low<Bool> x)
  :pattern ((Low<Bool> x))
  :qid |prog.low_true|)))
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
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@47@00 () $Perm)
(declare-fun $k@48@00 () $Perm)
(declare-fun $k@50@00 () $Perm)
(declare-fun $k@51@00 () $Perm)
(declare-fun $k@57@00 () $Perm)
(declare-fun $k@58@00 () $Perm)
(declare-fun $k@62@00 () $Perm)
(declare-fun $k@63@00 () $Perm)
(declare-fun $k@64@00 () $Perm)
(declare-fun $k@65@00 () $Perm)
(declare-fun $k@67@00 () $Perm)
(declare-fun $k@68@00 () $Perm)
(declare-fun $k@69@00 () $Perm)
(declare-fun $k@70@00 () $Perm)
(declare-fun $k@73@00 () $Perm)
(declare-fun letvar@71@00 ($Snap $Ref $Ref) Int)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-3888|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-3889|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-3890|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3891|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3928|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3929|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (= (dict___values__%limited s@$ self@4@00) (dict___values__ s@$ self@4@00))
  :pattern ((dict___values__ s@$ self@4@00))
  :qid |quant-u-3892|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (dict___values__%stateless self@4@00)
  :pattern ((dict___values__%limited s@$ self@4@00))
  :qid |quant-u-3893|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (dict___values__%limited s@$ self@4@00))) (and
    ($Perm.isReadVar $k@47@00)
    ($Perm.isReadVar $k@48@00)
    (=>
      (dict___values__%precondition s@$ self@4@00)
      (=
        (Seq_length result@5@00)
        (Set_card ($SortWrappers.$SnapToSet<$Ref> ($Snap.first s@$)))))))
  :pattern ((dict___values__%limited s@$ self@4@00))
  :qid |quant-u-3930|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (let ((result@5@00 (dict___values__%limited s@$ self@4@00))) true)
  :pattern ((dict___values__%limited s@$ self@4@00))
  :qid |quant-u-3931|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref) (item@7@00 $Ref)) (!
  (=
    (dict___contains__%limited s@$ self@6@00 item@7@00)
    (dict___contains__ s@$ self@6@00 item@7@00))
  :pattern ((dict___contains__ s@$ self@6@00 item@7@00))
  :qid |quant-u-3894|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref) (item@7@00 $Ref)) (!
  (dict___contains__%stateless self@6@00 item@7@00)
  :pattern ((dict___contains__%limited s@$ self@6@00 item@7@00))
  :qid |quant-u-3895|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref) (item@7@00 $Ref)) (!
  (let ((result@8@00 (dict___contains__%limited s@$ self@6@00 item@7@00))) (and
    ($Perm.isReadVar $k@50@00)
    ($Perm.isReadVar $k@51@00)
    (=>
      (dict___contains__%precondition s@$ self@6@00 item@7@00)
      (=
        result@8@00
        (Set_in item@7@00 ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))))))))
  :pattern ((dict___contains__%limited s@$ self@6@00 item@7@00))
  :qid |quant-u-3932|)))
(assert (forall ((s@$ $Snap) (self@6@00 $Ref) (item@7@00 $Ref)) (!
  (let ((result@8@00 (dict___contains__%limited s@$ self@6@00 item@7@00))) true)
  :pattern ((dict___contains__%limited s@$ self@6@00 item@7@00))
  :qid |quant-u-3933|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@9@00)
    (__prim__bool___box__ s@$ prim@9@00))
  :pattern ((__prim__bool___box__ s@$ prim@9@00))
  :qid |quant-u-3896|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (__prim__bool___box__%stateless prim@9@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@9@00))
  :qid |quant-u-3897|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (let ((result@10@00 (__prim__bool___box__%limited s@$ prim@9@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@9@00)
    (and
      (= (typeof<PyType> result@10@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@10@00) prim@9@00)
      (= (int___unbox__%limited $Snap.unit result@10@00) (ite prim@9@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@9@00))
  :qid |quant-u-3934|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (let ((result@10@00 (__prim__bool___box__%limited s@$ prim@9@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@9@00))
  :qid |quant-u-3935|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (let ((result@10@00 (__prim__bool___box__%limited s@$ prim@9@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@9@00)
    (bool___unbox__%precondition $Snap.unit result@10@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@9@00))
  :qid |quant-u-3936|)))
(assert (forall ((s@$ $Snap) (prim@9@00 Bool)) (!
  (let ((result@10@00 (__prim__bool___box__%limited s@$ prim@9@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@9@00)
    (int___unbox__%precondition $Snap.unit result@10@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@9@00))
  :qid |quant-u-3937|)))
(assert (forall ((s@$ $Snap) (box@11@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@11@00) (int___unbox__ s@$ box@11@00))
  :pattern ((int___unbox__ s@$ box@11@00))
  :qid |quant-u-3898|)))
(assert (forall ((s@$ $Snap) (box@11@00 $Ref)) (!
  (int___unbox__%stateless box@11@00)
  :pattern ((int___unbox__%limited s@$ box@11@00))
  :qid |quant-u-3899|)))
(assert (forall ((s@$ $Snap) (box@11@00 $Ref)) (!
  (let ((result@12@00 (int___unbox__%limited s@$ box@11@00))) (=>
    (int___unbox__%precondition s@$ box@11@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@11@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@12@00) box@11@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@11@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@12@00 0)))
          box@11@00)))))
  :pattern ((int___unbox__%limited s@$ box@11@00))
  :qid |quant-u-3938|)))
(assert (forall ((s@$ $Snap) (box@11@00 $Ref)) (!
  (let ((result@12@00 (int___unbox__%limited s@$ box@11@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@11@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@11@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@12@00)))
  :pattern ((int___unbox__%limited s@$ box@11@00))
  :qid |quant-u-3939|)))
(assert (forall ((s@$ $Snap) (box@11@00 $Ref)) (!
  (let ((result@12@00 (int___unbox__%limited s@$ box@11@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@11@00)
      (issubtype<Bool> (typeof<PyType> box@11@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@12@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@11@00))
  :qid |quant-u-3940|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@13@00) (bool___unbox__ s@$ box@13@00))
  :pattern ((bool___unbox__ s@$ box@13@00))
  :qid |quant-u-3900|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (bool___unbox__%stateless box@13@00)
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-3901|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (let ((result@14@00 (bool___unbox__%limited s@$ box@13@00))) (=>
    (bool___unbox__%precondition s@$ box@13@00)
    (= (__prim__bool___box__%limited $Snap.unit result@14@00) box@13@00)))
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-3941|)))
(assert (forall ((s@$ $Snap) (box@13@00 $Ref)) (!
  (let ((result@14@00 (bool___unbox__%limited s@$ box@13@00))) (=>
    (bool___unbox__%precondition s@$ box@13@00)
    (__prim__bool___box__%precondition $Snap.unit result@14@00)))
  :pattern ((bool___unbox__%limited s@$ box@13@00))
  :qid |quant-u-3942|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@15@00)
    (__prim__int___box__ s@$ prim@15@00))
  :pattern ((__prim__int___box__ s@$ prim@15@00))
  :qid |quant-u-3902|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Int)) (!
  (__prim__int___box__%stateless prim@15@00)
  :pattern ((__prim__int___box__%limited s@$ prim@15@00))
  :qid |quant-u-3903|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Int)) (!
  (let ((result@16@00 (__prim__int___box__%limited s@$ prim@15@00))) (=>
    (__prim__int___box__%precondition s@$ prim@15@00)
    (and
      (= (typeof<PyType> result@16@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@16@00) prim@15@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@15@00))
  :qid |quant-u-3943|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Int)) (!
  (let ((result@16@00 (__prim__int___box__%limited s@$ prim@15@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@15@00))
  :qid |quant-u-3944|)))
(assert (forall ((s@$ $Snap) (prim@15@00 Int)) (!
  (let ((result@16@00 (__prim__int___box__%limited s@$ prim@15@00))) (=>
    (__prim__int___box__%precondition s@$ prim@15@00)
    (int___unbox__%precondition $Snap.unit result@16@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@15@00))
  :qid |quant-u-3945|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (= (list___len__%limited s@$ self@17@00) (list___len__ s@$ self@17@00))
  :pattern ((list___len__ s@$ self@17@00))
  :qid |quant-u-3904|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (list___len__%stateless self@17@00)
  :pattern ((list___len__%limited s@$ self@17@00))
  :qid |quant-u-3905|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@57@00)
    (=>
      (list___len__%precondition s@$ self@17@00)
      (=
        (list___len__ s@$ self@17@00)
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$))))))
  :pattern ((list___len__ s@$ self@17@00))
  :qid |quant-u-3946|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  true
  :pattern ((list___len__ s@$ self@17@00))
  :qid |quant-u-3947|)))
(assert (forall ((s@$ $Snap) (id@19@00 Int)) (!
  (= (_isDefined%limited s@$ id@19@00) (_isDefined s@$ id@19@00))
  :pattern ((_isDefined s@$ id@19@00))
  :qid |quant-u-3906|)))
(assert (forall ((s@$ $Snap) (id@19@00 Int)) (!
  (_isDefined%stateless id@19@00)
  :pattern ((_isDefined%limited s@$ id@19@00))
  :qid |quant-u-3907|)))
(assert (forall ((s@$ $Snap) (r@21@00 $Ref)) (!
  (= (Level%limited s@$ r@21@00) (Level s@$ r@21@00))
  :pattern ((Level s@$ r@21@00))
  :qid |quant-u-3908|)))
(assert (forall ((s@$ $Snap) (r@21@00 $Ref)) (!
  (Level%stateless r@21@00)
  :pattern ((Level%limited s@$ r@21@00))
  :qid |quant-u-3909|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (= (list___sil_seq__%limited s@$ self@23@00) (list___sil_seq__ s@$ self@23@00))
  :pattern ((list___sil_seq__ s@$ self@23@00))
  :qid |quant-u-3910|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (list___sil_seq__%stateless self@23@00)
  :pattern ((list___sil_seq__%limited s@$ self@23@00))
  :qid |quant-u-3911|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@58@00)
    (=>
      (list___sil_seq__%precondition s@$ self@23@00)
      (= (list___sil_seq__ s@$ self@23@00) ($SortWrappers.$SnapToSeq<$Ref> s@$))))
  :pattern ((list___sil_seq__ s@$ self@23@00))
  :qid |quant-u-3948|)))
(assert (forall ((s@$ $Snap) (self@23@00 $Ref)) (!
  true
  :pattern ((list___sil_seq__ s@$ self@23@00))
  :qid |quant-u-3949|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (=
    (str___create__%limited s@$ len@25@00 value@26@00)
    (str___create__ s@$ len@25@00 value@26@00))
  :pattern ((str___create__ s@$ len@25@00 value@26@00))
  :qid |quant-u-3912|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (str___create__%stateless len@25@00 value@26@00)
  :pattern ((str___create__%limited s@$ len@25@00 value@26@00))
  :qid |quant-u-3913|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (let ((result@27@00 (str___create__%limited s@$ len@25@00 value@26@00))) (=>
    (str___create__%precondition s@$ len@25@00 value@26@00)
    (and
      (= (str___len__ $Snap.unit result@27@00) len@25@00)
      (= (str___val__ $Snap.unit result@27@00) value@26@00)
      (= (typeof<PyType> result@27@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@25@00 value@26@00))
  :qid |quant-u-3950|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (let ((result@27@00 (str___create__%limited s@$ len@25@00 value@26@00))) (=>
    (str___create__%precondition s@$ len@25@00 value@26@00)
    (str___len__%precondition $Snap.unit result@27@00)))
  :pattern ((str___create__%limited s@$ len@25@00 value@26@00))
  :qid |quant-u-3951|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (let ((result@27@00 (str___create__%limited s@$ len@25@00 value@26@00))) (=>
    (str___create__%precondition s@$ len@25@00 value@26@00)
    (str___val__%precondition $Snap.unit result@27@00)))
  :pattern ((str___create__%limited s@$ len@25@00 value@26@00))
  :qid |quant-u-3952|)))
(assert (forall ((s@$ $Snap) (len@25@00 Int) (value@26@00 Int)) (!
  (let ((result@27@00 (str___create__%limited s@$ len@25@00 value@26@00))) true)
  :pattern ((str___create__%limited s@$ len@25@00 value@26@00))
  :qid |quant-u-3953|)))
(assert (forall ((s@$ $Snap) (map@28@00 Seq<Measure$>) (key@29@00 $Ref) (value@30@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@28@00 key@29@00 value@30@00)
    (Measure$check s@$ map@28@00 key@29@00 value@30@00))
  :pattern ((Measure$check s@$ map@28@00 key@29@00 value@30@00))
  :qid |quant-u-3914|)))
(assert (forall ((s@$ $Snap) (map@28@00 Seq<Measure$>) (key@29@00 $Ref) (value@30@00 Int)) (!
  (Measure$check%stateless map@28@00 key@29@00 value@30@00)
  :pattern ((Measure$check%limited s@$ map@28@00 key@29@00 value@30@00))
  :qid |quant-u-3915|)))
(assert (forall ((s@$ $Snap) (map@28@00 Seq<Measure$>) (key@29@00 $Ref) (value@30@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@28@00 key@29@00 value@30@00)
    (=
      (Measure$check s@$ map@28@00 key@29@00 value@30@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@28@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@29@00)))
          (> (Measure$value<Int> m) value@30@00))
        :pattern ((Seq_contains map@28@00 m))
        :pattern ((Seq_contains_trigger map@28@00 m))
        :pattern ((Seq_contains_trigger map@28@00 m))
        ))))
  :pattern ((Measure$check s@$ map@28@00 key@29@00 value@30@00))
  :qid |quant-u-3954|)))
(assert (forall ((s@$ $Snap) (map@28@00 Seq<Measure$>) (key@29@00 $Ref) (value@30@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@28@00 key@29@00 value@30@00))
  :qid |quant-u-3955|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@32@00 other@33@00)
    (str___eq__ s@$ self@32@00 other@33@00))
  :pattern ((str___eq__ s@$ self@32@00 other@33@00))
  :qid |quant-u-3916|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (str___eq__%stateless self@32@00 other@33@00)
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-3917|)))
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
  :qid |quant-u-3956|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (str___eq__%precondition s@$ self@32@00 other@33@00)
    (and
      (str___val__%precondition $Snap.unit self@32@00)
      (str___val__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-3957|)))
(assert (forall ((s@$ $Snap) (self@32@00 $Ref) (other@33@00 $Ref)) (!
  (let ((result@34@00 (str___eq__%limited s@$ self@32@00 other@33@00))) (=>
    (and (str___eq__%precondition s@$ self@32@00 other@33@00) result@34@00)
    (and
      (str___len__%precondition $Snap.unit self@32@00)
      (str___len__%precondition $Snap.unit other@33@00))))
  :pattern ((str___eq__%limited s@$ self@32@00 other@33@00))
  :qid |quant-u-3958|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (=
    (dict___getitem__%limited s@$ self@35@00 key@36@00)
    (dict___getitem__ s@$ self@35@00 key@36@00))
  :pattern ((dict___getitem__ s@$ self@35@00 key@36@00))
  :qid |quant-u-3918|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (dict___getitem__%stateless self@35@00 key@36@00)
  :pattern ((dict___getitem__%limited s@$ self@35@00 key@36@00))
  :qid |quant-u-3919|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (let ((result@37@00 (dict___getitem__%limited s@$ self@35@00 key@36@00))) (and
    ($Perm.isReadVar $k@62@00)
    ($Perm.isReadVar $k@63@00)
    ($Perm.isReadVar $k@64@00)
    ($Perm.isReadVar $k@65@00)
    ($Perm.isReadVar $k@67@00)
    ($Perm.isReadVar $k@68@00)
    (=>
      (dict___getitem__%precondition s@$ self@35@00 key@36@00)
      (and
        (issubtype<Bool> (typeof<PyType> result@37@00) (dict_arg<PyType> (typeof<PyType> self@35@00) 1))
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second s@$))
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@35@00)
          result@37@00)
        (=
          (dict_get_helper<Ref> ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))) key@36@00)
          result@37@00)))))
  :pattern ((dict___getitem__%limited s@$ self@35@00 key@36@00))
  :qid |quant-u-3959|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (let ((result@37@00 (dict___getitem__%limited s@$ self@35@00 key@36@00))) true)
  :pattern ((dict___getitem__%limited s@$ self@35@00 key@36@00))
  :qid |quant-u-3960|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (let ((result@37@00 (dict___getitem__%limited s@$ self@35@00 key@36@00))) (=>
    (dict___getitem__%precondition s@$ self@35@00 key@36@00)
    (dict___values__%precondition ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.first ($Snap.second ($Snap.second s@$)))) self@35@00)))
  :pattern ((dict___getitem__%limited s@$ self@35@00 key@36@00))
  :qid |quant-u-3961|)))
(assert (forall ((s@$ $Snap) (self@35@00 $Ref) (key@36@00 $Ref)) (!
  (let ((result@37@00 (dict___getitem__%limited s@$ self@35@00 key@36@00))) true)
  :pattern ((dict___getitem__%limited s@$ self@35@00 key@36@00))
  :qid |quant-u-3962|)))
(assert (forall ((s@$ $Snap) (self@38@00 $Ref) (key@39@00 $Ref)) (!
  (=
    (list___getitem__%limited s@$ self@38@00 key@39@00)
    (list___getitem__ s@$ self@38@00 key@39@00))
  :pattern ((list___getitem__ s@$ self@38@00 key@39@00))
  :qid |quant-u-3920|)))
(assert (forall ((s@$ $Snap) (self@38@00 $Ref) (key@39@00 $Ref)) (!
  (list___getitem__%stateless self@38@00 key@39@00)
  :pattern ((list___getitem__%limited s@$ self@38@00 key@39@00))
  :qid |quant-u-3921|)))
(assert (forall ((s@$ $Snap) (self@38@00 $Ref) (key@39@00 $Ref)) (!
  (let ((result@40@00 (list___getitem__%limited s@$ self@38@00 key@39@00))) (and
    ($Perm.isReadVar $k@69@00)
    ($Perm.isReadVar $k@70@00)
    ($Perm.isReadVar $k@73@00)
    (=>
      (list___getitem__%precondition s@$ self@38@00 key@39@00)
      (and
        (=
          result@40@00
          (ite
            (>= (int___unbox__ $Snap.unit key@39@00) 0)
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (int___unbox__ $Snap.unit key@39@00))
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (+
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@38@00)
                (int___unbox__ $Snap.unit key@39@00)))))
        (issubtype<Bool> (typeof<PyType> result@40@00) (list_arg<PyType> (typeof<PyType> self@38@00) 0))))))
  :pattern ((list___getitem__%limited s@$ self@38@00 key@39@00))
  :qid |quant-u-3963|)))
(assert (forall ((s@$ $Snap) (self@38@00 $Ref) (key@39@00 $Ref)) (!
  (let ((result@40@00 (list___getitem__%limited s@$ self@38@00 key@39@00))) (=>
    (list___getitem__%precondition s@$ self@38@00 key@39@00)
    (and
      (int___unbox__%precondition $Snap.unit key@39@00)
      (ite
        (>= (int___unbox__ $Snap.unit key@39@00) 0)
        (int___unbox__%precondition $Snap.unit key@39@00)
        (and
          (list___len__%precondition ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@38@00)
          (int___unbox__%precondition $Snap.unit key@39@00))))))
  :pattern ((list___getitem__%limited s@$ self@38@00 key@39@00))
  :qid |quant-u-3964|)))
(assert (forall ((s@$ $Snap) (self@38@00 $Ref) (key@39@00 $Ref)) (!
  (let ((result@40@00 (list___getitem__%limited s@$ self@38@00 key@39@00))) true)
  :pattern ((list___getitem__%limited s@$ self@38@00 key@39@00))
  :qid |quant-u-3965|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3922|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3923|)))
(assert (forall ((s@$ $Snap) (val@42@00 $Ref) (id@43@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@42@00 id@43@00)
    (_checkDefined s@$ val@42@00 id@43@00))
  :pattern ((_checkDefined s@$ val@42@00 id@43@00))
  :qid |quant-u-3924|)))
(assert (forall ((s@$ $Snap) (val@42@00 $Ref) (id@43@00 Int)) (!
  (_checkDefined%stateless val@42@00 id@43@00)
  :pattern ((_checkDefined%limited s@$ val@42@00 id@43@00))
  :qid |quant-u-3925|)))
(assert (forall ((s@$ $Snap) (val@42@00 $Ref) (id@43@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@42@00 id@43@00)
    (= (_checkDefined s@$ val@42@00 id@43@00) val@42@00))
  :pattern ((_checkDefined s@$ val@42@00 id@43@00))
  :qid |quant-u-3966|)))
(assert (forall ((s@$ $Snap) (val@42@00 $Ref) (id@43@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@42@00 id@43@00))
  :qid |quant-u-3967|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3926|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3927|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_list ----------
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
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
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
; var a: Ref
(declare-const a@11@01 $Ref)
; [exec]
; var list_0: Ref
(declare-const list_0@12@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@13@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@14@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq(Measure$create(true, _cthread_156, 2))
; [eval] Seq(Measure$create(true, _cthread_156, 2))
; [eval] Measure$create(true, _cthread_156, 2)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_156@4@01 2)))
  1))
(declare-const _method_measures_156@15@01 Seq<Measure$>)
(assert (=
  _method_measures_156@15@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_156@4@01 2))))
; [exec]
; _err := null
; [exec]
; _cwl_156, list_0 := list___init__(_cthread_156, _method_measures_156, _residue_156)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit _method_measures_156@15@01 _cthread_156@4@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_156@15@01 _cthread_156@4@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_156@15@01 _cthread_156@4@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit _method_measures_156@15@01 _cthread_156@4@01 1))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_8@16@01 $Perm)
(declare-const res@17@01 $Ref)
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.first $t@18@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@18@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@01))
    ($Snap.second ($Snap.second $t@18@01)))))
(assert (= ($Snap.first ($Snap.second $t@18@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@18@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@18@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@18@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_156@6@01 _current_wait_level_8@16@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@18@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
(assert (not (= res@17@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@17@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@17@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@17@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(list_0), list(int()))
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] issubtype(typeof(list_0), list(int()))
; [eval] typeof(list_0)
; [eval] list(int())
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> res@17@01) (list<PyType> (as int<PyType>  PyType))))
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
; assert issubtype(typeof(__prim__int___box__(3)), int())
; [eval] issubtype(typeof(__prim__int___box__(3)), int())
; [eval] typeof(__prim__int___box__(3))
; [eval] __prim__int___box__(3)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 3))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 3))
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (as int<PyType>  PyType)))
; [exec]
; list_0.list_acc := Seq(__prim__int___box__(1), __prim__int___box__(2), __prim__int___box__(3))
; [eval] Seq(__prim__int___box__(1), __prim__int___box__(2), __prim__int___box__(3))
; [eval] __prim__int___box__(1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(3)
(push) ; 3
(pop) ; 3
; Joined path conditions
(assert (=
  (Seq_length
    (Seq_append
      (Seq_append
        (Seq_singleton (__prim__int___box__ $Snap.unit 1))
        (Seq_singleton (__prim__int___box__ $Snap.unit 2)))
      (Seq_singleton (__prim__int___box__ $Snap.unit 3))))
  3))
(declare-const list_acc@20@01 Seq<$Ref>)
(assert (=
  list_acc@20@01
  (Seq_append
    (Seq_append
      (Seq_singleton (__prim__int___box__ $Snap.unit 1))
      (Seq_singleton (__prim__int___box__ $Snap.unit 2)))
    (Seq_singleton (__prim__int___box__ $Snap.unit 3)))))
; [exec]
; a := list_0
; [exec]
; inhale _isDefined(97)
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] _isDefined(97)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 97))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 97))
(assert (_isDefined $Snap.unit 97))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_156 := list_append(_cthread_156, _method_measures_156, _residue_156, _checkDefined(a,
;   97), __prim__int___box__(4))
; [eval] _checkDefined(a, 97)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@17@01 97))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@17@01 97))
; [eval] __prim__int___box__(4)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 4))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 4))
; [eval] _cthread_9 != null
; [eval] Measure$check(_caller_measures_9, _cthread_9, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_9), Thread_0())
; [eval] typeof(_cthread_9)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) (list<PyType> (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) (list<PyType> (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@17@01 (_checkDefined $Snap.unit res@17@01 97))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(item), list_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0)))
; [eval] Measure$check(_caller_measures_9, _cthread_9, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_9@22@01 $Perm)
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (= ($Snap.first $t@23@01) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _current_wait_level_9)
(assert (=
  ($Snap.second $t@23@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@01))
    ($Snap.second ($Snap.second $t@23@01)))))
(assert (= ($Snap.first ($Snap.second $t@23@01)) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _current_wait_level_9)
(assert (=
  ($Snap.second ($Snap.second $t@23@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@23@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@23@01))) $Snap.unit))
; [eval] _residue_9 <= _current_wait_level_9
(assert (<= _residue_156@6@01 _current_wait_level_9@22@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@23@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
(assert (not (= (_checkDefined $Snap.unit res@17@01 97) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
  $Snap.unit))
; [eval] self.list_acc == old(self.list_acc) ++ Seq(item)
; [eval] old(self.list_acc) ++ Seq(item)
; [eval] old(self.list_acc)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@17@01 (_checkDefined $Snap.unit res@17@01 97))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Seq(item)
(assert (= (Seq_length (Seq_singleton (__prim__int___box__ $Snap.unit 4))) 1))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
  (Seq_append list_acc@20@01 (Seq_singleton (__prim__int___box__ $Snap.unit 4)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_156 := list___setitem__(_cthread_156, _method_measures_156, _residue_156,
;   _checkDefined(a, 97), 3, __prim__int___box__(2))
; [eval] _checkDefined(a, 97)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] _cthread_12 != null
; [eval] Measure$check(_caller_measures_12, _cthread_12, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_12), Thread_0())
; [eval] typeof(_cthread_12)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] key >= 0
; [eval] key < list___len__(self)
; [eval] list___len__(self)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@24@01 $Perm)
(assert ($Perm.isReadVar $k@24@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@24@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@24@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(set-option :timeout 0)
(push) ; 3
(assert (not (<
  3
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<
  3
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
; [eval] issubtype(typeof(item), list_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (list_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@17@01 97)) 0)))
; [eval] Measure$check(_caller_measures_12, _cthread_12, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_12@25@01 $Perm)
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(assert (= ($Snap.first $t@26@01) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _current_wait_level_12)
(assert (=
  ($Snap.second $t@26@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@01))
    ($Snap.second ($Snap.second $t@26@01)))))
(assert (= ($Snap.first ($Snap.second $t@26@01)) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _current_wait_level_12)
(assert (=
  ($Snap.second ($Snap.second $t@26@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@26@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@26@01))) $Snap.unit))
; [eval] _residue_12 <= _current_wait_level_12
(assert (<= _residue_156@6@01 _current_wait_level_12@25@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@26@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  $Snap.unit))
; [eval] self.list_acc == old(self.list_acc)[key := item]
; [eval] old(self.list_acc)[key := item]
; [eval] old(self.list_acc)
(push) ; 3
(assert (not (<
  3
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  (Seq_append
    (Seq_take
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
      3)
    (Seq_append
      (Seq_singleton (__prim__int___box__ $Snap.unit 2))
      (Seq_drop
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
        4)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  $Snap.unit))
; [eval] (Low(key): Bool) && (Low(item): Bool) ==> (forall i: Ref :: { list___getitem__(self, i) } issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool))
; [eval] (Low(key): Bool) && (Low(item): Bool)
; [eval] (Low(key): Bool)
(push) ; 3
; [then-branch: 0 | !(Low[Bool](3)) | live]
; [else-branch: 0 | Low[Bool](3) | live]
(push) ; 4
; [then-branch: 0 | !(Low[Bool](3))]
(assert (not (Low<Bool> 3)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | Low[Bool](3)]
(assert (Low<Bool> 3))
; [eval] (Low(item): Bool)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Low<Bool> 3) (not (Low<Bool> 3))))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | Low[Bool](3) && Low[Bool](__prim__int___box__(_, 2)) | live]
; [else-branch: 1 | !(Low[Bool](3) && Low[Bool](__prim__int___box__(_, 2))) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | Low[Bool](3) && Low[Bool](__prim__int___box__(_, 2))]
(assert (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2))))
; [eval] (forall i: Ref :: { list___getitem__(self, i) } issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool))
(declare-const i@27@01 $Ref)
(push) ; 5
; [eval] issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool)
; [eval] issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool)))
; [eval] issubtype(typeof(i), int())
; [eval] typeof(i)
; [eval] int()
(push) ; 6
; [then-branch: 2 | !(issubtype[Bool](typeof[PyType](i@27@01), int[PyType])) | live]
; [else-branch: 2 | issubtype[Bool](typeof[PyType](i@27@01), int[PyType]) | live]
(push) ; 7
; [then-branch: 2 | !(issubtype[Bool](typeof[PyType](i@27@01), int[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))))
(pop) ; 7
(push) ; 7
; [else-branch: 2 | issubtype[Bool](typeof[PyType](i@27@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType)))
; [eval] int___unbox__(i) >= 0
; [eval] int___unbox__(i)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i@27@01))
(pop) ; 8
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i@27@01))
(push) ; 8
; [then-branch: 3 | !(int___unbox__(_, i@27@01) >= 0) | live]
; [else-branch: 3 | int___unbox__(_, i@27@01) >= 0 | live]
(push) ; 9
; [then-branch: 3 | !(int___unbox__(_, i@27@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 3 | int___unbox__(_, i@27@01) >= 0]
(assert (>= (int___unbox__ $Snap.unit i@27@01) 0))
; [eval] int___unbox__(i) < list___len__(self)
; [eval] int___unbox__(i)
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
; [eval] list___len__(self)
(push) ; 10
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@28@01 $Perm)
(assert ($Perm.isReadVar $k@28@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@28@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@28@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(set-option :timeout 0)
(push) ; 10
; [then-branch: 4 | !(int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97))) | live]
; [else-branch: 4 | int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) | live]
(push) ; 11
; [then-branch: 4 | !(int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)))]
(assert (not
  (<
    (int___unbox__ $Snap.unit i@27@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
(pop) ; 11
(push) ; 11
; [else-branch: 4 | int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97))]
(assert (<
  (int___unbox__ $Snap.unit i@27@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
; [eval] (Low(old(list___getitem__(self, i))): Bool)
; [eval] old(list___getitem__(self, i))
; [eval] list___getitem__(self, i)
(push) ; 12
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@29@01 $Perm)
(assert ($Perm.isReadVar $k@29@01))
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No $k@29@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@30@01 $Perm)
(assert ($Perm.isReadVar $k@30@01))
(push) ; 14
(set-option :timeout 10)
(assert (not (< $Perm.No $k@30@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
; Joined path conditions
(assert ($Perm.isReadVar $k@30@01))
(declare-fun letvar@31@01 ($Ref) Int)
(assert (=
  (letvar@31@01 i@27@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(push) ; 13
; [then-branch: 5 | int___unbox__(_, i@27@01) < 0 | live]
; [else-branch: 5 | !(int___unbox__(_, i@27@01) < 0) | live]
(push) ; 14
; [then-branch: 5 | int___unbox__(_, i@27@01) < 0]
(assert (< (int___unbox__ $Snap.unit i@27@01) 0))
; [eval] int___unbox__(key) >= -ln
; [eval] int___unbox__(key)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 15
; Joined path conditions
; [eval] -ln
(pop) ; 14
(push) ; 14
; [else-branch: 5 | !(int___unbox__(_, i@27@01) < 0)]
(assert (not (< (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (int___unbox__ $Snap.unit i@27@01) 0))
  (< (int___unbox__ $Snap.unit i@27@01) 0)))
(push) ; 13
; [then-branch: 6 | !(int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@23@01))))), _checkDefined(_, res@17@01, 97))) | live]
; [else-branch: 6 | int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@23@01))))), _checkDefined(_, res@17@01, 97)) | live]
(push) ; 14
; [then-branch: 6 | !(int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@23@01))))), _checkDefined(_, res@17@01, 97)))]
(assert (not
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
(pop) ; 14
(push) ; 14
; [else-branch: 6 | int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@23@01))))), _checkDefined(_, res@17@01, 97))]
(assert (=>
  (< (int___unbox__ $Snap.unit i@27@01) 0)
  (>=
    (int___unbox__ $Snap.unit i@27@01)
    (-
      0
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))))
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 15
; Joined path conditions
(push) ; 15
; [then-branch: 7 | int___unbox__(_, i@27@01) >= 0 | live]
; [else-branch: 7 | !(int___unbox__(_, i@27@01) >= 0) | live]
(push) ; 16
; [then-branch: 7 | int___unbox__(_, i@27@01) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 17
; Joined path conditions
(pop) ; 16
(push) ; 16
; [else-branch: 7 | !(int___unbox__(_, i@27@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
  (>= (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (and
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (or
      (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
      (>= (int___unbox__ $Snap.unit i@27@01) 0)))))
(assert (or
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (not
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))))))
(push) ; 13
(assert (not (and
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
      $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
(pop) ; 12
; Joined path conditions
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert (and
  (=
    (letvar@31@01 i@27@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
  (or
    (not (< (int___unbox__ $Snap.unit i@27@01) 0))
    (< (int___unbox__ $Snap.unit i@27@01) 0))
  (=>
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (and
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (or
        (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
        (>= (int___unbox__ $Snap.unit i@27@01) 0))))
  (or
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (not
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
        $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert (=>
  (<
    (int___unbox__ $Snap.unit i@27@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
  (and
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
    (=
      (letvar@31@01 i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
    (or
      (not (< (int___unbox__ $Snap.unit i@27@01) 0))
      (< (int___unbox__ $Snap.unit i@27@01) 0))
    (=>
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (and
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
        (or
          (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
          (>= (int___unbox__ $Snap.unit i@27@01) 0))))
    (or
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (not
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (=>
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (<
        (int___unbox__ $Snap.unit i@27@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
    (list___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
          $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))
(assert (or
  (<
    (int___unbox__ $Snap.unit i@27@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
  (not
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@28@01))
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert (=>
  (>= (int___unbox__ $Snap.unit i@27@01) 0)
  (and
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (list___len__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
    (=>
      (<
        (int___unbox__ $Snap.unit i@27@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
      (and
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (=
          (letvar@31@01 i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (or
          (not (< (int___unbox__ $Snap.unit i@27@01) 0))
          (< (int___unbox__ $Snap.unit i@27@01) 0))
        (=>
          (=>
            (< (int___unbox__ $Snap.unit i@27@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@27@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
          (and
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
            (or
              (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
              (>= (int___unbox__ $Snap.unit i@27@01) 0))))
        (or
          (=>
            (< (int___unbox__ $Snap.unit i@27@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@27@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
          (not
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
        (=>
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (<
            (int___unbox__ $Snap.unit i@27@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
        (list___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
    (or
      (<
        (int___unbox__ $Snap.unit i@27@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
      (not
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))))))
(assert (or
  (>= (int___unbox__ $Snap.unit i@27@01) 0)
  (not (>= (int___unbox__ $Snap.unit i@27@01) 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@28@01))
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert (=>
  (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit i@27@01)
    (=>
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (and
        (>= (int___unbox__ $Snap.unit i@27@01) 0)
        (list___len__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
        (=>
          (<
            (int___unbox__ $Snap.unit i@27@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
          (and
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (=
              (letvar@31@01 i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (or
              (not (< (int___unbox__ $Snap.unit i@27@01) 0))
              (< (int___unbox__ $Snap.unit i@27@01) 0))
            (=>
              (=>
                (< (int___unbox__ $Snap.unit i@27@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@27@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
              (and
                (=>
                  (< (int___unbox__ $Snap.unit i@27@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@27@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                (or
                  (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
                  (>= (int___unbox__ $Snap.unit i@27@01) 0))))
            (or
              (=>
                (< (int___unbox__ $Snap.unit i@27@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@27@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
              (not
                (=>
                  (< (int___unbox__ $Snap.unit i@27@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@27@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
            (=>
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (<
                (int___unbox__ $Snap.unit i@27@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
            (list___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
        (or
          (<
            (int___unbox__ $Snap.unit i@27@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
          (not
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
    (or
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (not (>= (int___unbox__ $Snap.unit i@27@01) 0))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType)))))
(push) ; 6
; [then-branch: 8 | issubtype[Bool](typeof[PyType](i@27@01), int[PyType]) && int___unbox__(_, i@27@01) >= 0 && int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:($t@23@01)))), _))), _checkDefined(_, res@17@01, 97), i@27@01)) | live]
; [else-branch: 8 | !(issubtype[Bool](typeof[PyType](i@27@01), int[PyType]) && int___unbox__(_, i@27@01) >= 0 && int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:($t@23@01)))), _))), _checkDefined(_, res@17@01, 97), i@27@01))) | live]
(push) ; 7
; [then-branch: 8 | issubtype[Bool](typeof[PyType](i@27@01), int[PyType]) && int___unbox__(_, i@27@01) >= 0 && int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:($t@23@01)))), _))), _checkDefined(_, res@17@01, 97), i@27@01))]
(assert (and
  (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
  (and
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (and
      (<
        (int___unbox__ $Snap.unit i@27@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
      (Low<Bool> (list___getitem__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
            $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))))
; [eval] (Low(list___getitem__(self, i)): Bool)
; [eval] list___getitem__(self, i)
(push) ; 8
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@32@01 $Perm)
(assert ($Perm.isReadVar $k@32@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@32@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@33@01 $Perm)
(assert ($Perm.isReadVar $k@33@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@33@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@33@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
(declare-fun letvar@34@01 ($Ref) Int)
(assert (=
  (letvar@34@01 i@27@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i@27@01))
(pop) ; 9
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i@27@01))
(push) ; 9
; [then-branch: 9 | int___unbox__(_, i@27@01) < 0 | live]
; [else-branch: 9 | !(int___unbox__(_, i@27@01) < 0) | live]
(push) ; 10
; [then-branch: 9 | int___unbox__(_, i@27@01) < 0]
(assert (< (int___unbox__ $Snap.unit i@27@01) 0))
; [eval] int___unbox__(key) >= -ln
; [eval] int___unbox__(key)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] -ln
(pop) ; 10
(push) ; 10
; [else-branch: 9 | !(int___unbox__(_, i@27@01) < 0)]
(assert (not (< (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (int___unbox__ $Snap.unit i@27@01) 0))
  (< (int___unbox__ $Snap.unit i@27@01) 0)))
(push) ; 9
; [then-branch: 10 | !(int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97))) | live]
; [else-branch: 10 | int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) | live]
(push) ; 10
; [then-branch: 10 | !(int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)))]
(assert (not
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
(pop) ; 10
(push) ; 10
; [else-branch: 10 | int___unbox__(_, i@27@01) < 0 ==> int___unbox__(_, i@27@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97))]
(assert (=>
  (< (int___unbox__ $Snap.unit i@27@01) 0)
  (>=
    (int___unbox__ $Snap.unit i@27@01)
    (-
      0
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))))
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 11 | int___unbox__(_, i@27@01) >= 0 | live]
; [else-branch: 11 | !(int___unbox__(_, i@27@01) >= 0) | live]
(push) ; 12
; [then-branch: 11 | int___unbox__(_, i@27@01) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(pop) ; 12
(push) ; 12
; [else-branch: 11 | !(int___unbox__(_, i@27@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
  (>= (int___unbox__ $Snap.unit i@27@01) 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (and
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (or
      (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
      (>= (int___unbox__ $Snap.unit i@27@01) 0)))))
(assert (or
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (not
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))))))
(push) ; 9
(assert (not (and
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
      $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@32@01))
(assert ($Perm.isReadVar $k@33@01))
(assert (and
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
  (=
    (letvar@34@01 i@27@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
  (int___unbox__%precondition $Snap.unit i@27@01)
  (or
    (not (< (int___unbox__ $Snap.unit i@27@01) 0))
    (< (int___unbox__ $Snap.unit i@27@01) 0))
  (=>
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (and
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (or
        (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
        (>= (int___unbox__ $Snap.unit i@27@01) 0))))
  (or
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (not
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
  (=>
    (< (int___unbox__ $Snap.unit i@27@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@27@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
  (=>
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
        $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | !(issubtype[Bool](typeof[PyType](i@27@01), int[PyType]) && int___unbox__(_, i@27@01) >= 0 && int___unbox__(_, i@27@01) < list___len__((_, First:(Second:(Second:(Second:($t@26@01))))), _checkDefined(_, res@17@01, 97)) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:($t@23@01)))), _))), _checkDefined(_, res@17@01, 97), i@27@01)))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@32@01))
(assert ($Perm.isReadVar $k@33@01))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))
  (and
    (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
    (>= (int___unbox__ $Snap.unit i@27@01) 0)
    (<
      (int___unbox__ $Snap.unit i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
    (Low<Bool> (list___getitem__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
          $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
    (list___len__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
    (=
      (letvar@34@01 i@27@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
    (int___unbox__%precondition $Snap.unit i@27@01)
    (or
      (not (< (int___unbox__ $Snap.unit i@27@01) 0))
      (< (int___unbox__ $Snap.unit i@27@01) 0))
    (=>
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (and
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
        (or
          (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
          (>= (int___unbox__ $Snap.unit i@27@01) 0))))
    (or
      (=>
        (< (int___unbox__ $Snap.unit i@27@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@27@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
      (not
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
    (=>
      (< (int___unbox__ $Snap.unit i@27@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@27@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
    (=>
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (<
        (int___unbox__ $Snap.unit i@27@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
    (list___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
          $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
      (and
        (>= (int___unbox__ $Snap.unit i@27@01) 0)
        (and
          (<
            (int___unbox__ $Snap.unit i@27@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
          (Low<Bool> (list___getitem__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))))
  (and
    (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@27@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@28@01))
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert ($Perm.isReadVar $k@32@01))
(assert ($Perm.isReadVar $k@33@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@27@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit i@27@01)
        (=>
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (and
            (>= (int___unbox__ $Snap.unit i@27@01) 0)
            (list___len__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
            (=>
              (<
                (int___unbox__ $Snap.unit i@27@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
              (and
                (<
                  (int___unbox__ $Snap.unit i@27@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                (=
                  (letvar@31@01 i@27@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                (or
                  (not (< (int___unbox__ $Snap.unit i@27@01) 0))
                  (< (int___unbox__ $Snap.unit i@27@01) 0))
                (=>
                  (=>
                    (< (int___unbox__ $Snap.unit i@27@01) 0)
                    (>=
                      (int___unbox__ $Snap.unit i@27@01)
                      (-
                        0
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                  (and
                    (=>
                      (< (int___unbox__ $Snap.unit i@27@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@27@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                    (or
                      (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
                      (>= (int___unbox__ $Snap.unit i@27@01) 0))))
                (or
                  (=>
                    (< (int___unbox__ $Snap.unit i@27@01) 0)
                    (>=
                      (int___unbox__ $Snap.unit i@27@01)
                      (-
                        0
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                  (not
                    (=>
                      (< (int___unbox__ $Snap.unit i@27@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@27@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
                (=>
                  (< (int___unbox__ $Snap.unit i@27@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@27@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                (=>
                  (>= (int___unbox__ $Snap.unit i@27@01) 0)
                  (<
                    (int___unbox__ $Snap.unit i@27@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
                (list___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                      $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
            (or
              (<
                (int___unbox__ $Snap.unit i@27@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
              (not
                (<
                  (int___unbox__ $Snap.unit i@27@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
        (or
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (not (>= (int___unbox__ $Snap.unit i@27@01) 0)))))
    (or
      (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
      (not (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))
      (and
        (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
        (>= (int___unbox__ $Snap.unit i@27@01) 0)
        (<
          (int___unbox__ $Snap.unit i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
        (list___len__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
        (=
          (letvar@34@01 i@27@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
        (int___unbox__%precondition $Snap.unit i@27@01)
        (or
          (not (< (int___unbox__ $Snap.unit i@27@01) 0))
          (< (int___unbox__ $Snap.unit i@27@01) 0))
        (=>
          (=>
            (< (int___unbox__ $Snap.unit i@27@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@27@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
          (and
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
            (or
              (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
              (>= (int___unbox__ $Snap.unit i@27@01) 0))))
        (or
          (=>
            (< (int___unbox__ $Snap.unit i@27@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@27@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
          (not
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
        (=>
          (< (int___unbox__ $Snap.unit i@27@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@27@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
        (=>
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (<
            (int___unbox__ $Snap.unit i@27@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
        (list___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
              $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
          (and
            (>= (int___unbox__ $Snap.unit i@27@01) 0)
            (and
              (<
                (int___unbox__ $Snap.unit i@27@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
              (Low<Bool> (list___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                    $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))))
      (and
        (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))))
  :pattern ((list___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
        $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256-aux|)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@28@01))
(assert ($Perm.isReadVar $k@29@01))
(assert ($Perm.isReadVar $k@30@01))
(assert ($Perm.isReadVar $k@32@01))
(assert ($Perm.isReadVar $k@33@01))
(assert (=>
  (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2)))
  (and
    (Low<Bool> 3)
    (Low<Bool> (__prim__int___box__ $Snap.unit 2))
    (forall ((i@27@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit i@27@01)
            (=>
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (and
                (>= (int___unbox__ $Snap.unit i@27@01) 0)
                (list___len__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
                (=>
                  (<
                    (int___unbox__ $Snap.unit i@27@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                  (and
                    (<
                      (int___unbox__ $Snap.unit i@27@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                    (=
                      (letvar@31@01 i@27@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                    (or
                      (not (< (int___unbox__ $Snap.unit i@27@01) 0))
                      (< (int___unbox__ $Snap.unit i@27@01) 0))
                    (=>
                      (=>
                        (< (int___unbox__ $Snap.unit i@27@01) 0)
                        (>=
                          (int___unbox__ $Snap.unit i@27@01)
                          (-
                            0
                            (list___len__ ($Snap.combine
                              $Snap.unit
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                      (and
                        (=>
                          (< (int___unbox__ $Snap.unit i@27@01) 0)
                          (>=
                            (int___unbox__ $Snap.unit i@27@01)
                            (-
                              0
                              (list___len__ ($Snap.combine
                                $Snap.unit
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                        (or
                          (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
                          (>= (int___unbox__ $Snap.unit i@27@01) 0))))
                    (or
                      (=>
                        (< (int___unbox__ $Snap.unit i@27@01) 0)
                        (>=
                          (int___unbox__ $Snap.unit i@27@01)
                          (-
                            0
                            (list___len__ ($Snap.combine
                              $Snap.unit
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                      (not
                        (=>
                          (< (int___unbox__ $Snap.unit i@27@01) 0)
                          (>=
                            (int___unbox__ $Snap.unit i@27@01)
                            (-
                              0
                              (list___len__ ($Snap.combine
                                $Snap.unit
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
                    (=>
                      (< (int___unbox__ $Snap.unit i@27@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@27@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                    (=>
                      (>= (int___unbox__ $Snap.unit i@27@01) 0)
                      (<
                        (int___unbox__ $Snap.unit i@27@01)
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) (_checkDefined $Snap.unit res@17@01 97))))
                    (list___getitem__%precondition ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                          $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
                (or
                  (<
                    (int___unbox__ $Snap.unit i@27@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                  (not
                    (<
                      (int___unbox__ $Snap.unit i@27@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
            (or
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (not (>= (int___unbox__ $Snap.unit i@27@01) 0)))))
        (or
          (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
          (not
            (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
            (and
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (and
                (<
                  (int___unbox__ $Snap.unit i@27@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                (Low<Bool> (list___getitem__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                      $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))
          (and
            (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
            (>= (int___unbox__ $Snap.unit i@27@01) 0)
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
            (list___len__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))
            (=
              (letvar@34@01 i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (int___unbox__%precondition $Snap.unit i@27@01)
            (or
              (not (< (int___unbox__ $Snap.unit i@27@01) 0))
              (< (int___unbox__ $Snap.unit i@27@01) 0))
            (=>
              (=>
                (< (int___unbox__ $Snap.unit i@27@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@27@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
              (and
                (=>
                  (< (int___unbox__ $Snap.unit i@27@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@27@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
                (or
                  (not (>= (int___unbox__ $Snap.unit i@27@01) 0))
                  (>= (int___unbox__ $Snap.unit i@27@01) 0))))
            (or
              (=>
                (< (int___unbox__ $Snap.unit i@27@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@27@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
              (not
                (=>
                  (< (int___unbox__ $Snap.unit i@27@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@27@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))))
            (=>
              (< (int___unbox__ $Snap.unit i@27@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@27@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))))
            (=>
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (<
                (int___unbox__ $Snap.unit i@27@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97))))
            (list___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
        (or
          (not
            (and
              (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
              (and
                (>= (int___unbox__ $Snap.unit i@27@01) 0)
                (and
                  (<
                    (int___unbox__ $Snap.unit i@27@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                  (Low<Bool> (list___getitem__ ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                        $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))))))
          (and
            (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
            (and
              (>= (int___unbox__ $Snap.unit i@27@01) 0)
              (and
                (<
                  (int___unbox__ $Snap.unit i@27@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
                (Low<Bool> (list___getitem__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                      $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))))
      :pattern ((list___getitem__%limited ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
            $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256-aux|)))))
(assert (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2))))
(assert (=>
  (and (Low<Bool> 3) (Low<Bool> (__prim__int___box__ $Snap.unit 2)))
  (forall ((i@27@01 $Ref)) (!
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> i@27@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@27@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@27@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))) (_checkDefined $Snap.unit res@17@01 97)))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))))
      (Low<Bool> (list___getitem__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
            $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01)))
    :pattern ((list___getitem__%limited ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
          $Snap.unit))) (_checkDefined $Snap.unit res@17@01 97) i@27@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256|))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- test_list2 ----------
(declare-const _cthread_157@35@01 $Ref)
(declare-const _caller_measures_157@36@01 Seq<Measure$>)
(declare-const _residue_157@37@01 $Perm)
(declare-const _current_wait_level_157@38@01 $Perm)
(declare-const _cthread_157@39@01 $Ref)
(declare-const _caller_measures_157@40@01 Seq<Measure$>)
(declare-const _residue_157@41@01 $Perm)
(declare-const _current_wait_level_157@42@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@39@01 $Ref.null)))
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(assert (= ($Snap.first ($Snap.second $t@43@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@39@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@43@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@43@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@43@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(assert (= ($Snap.first $t@44@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@44@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@44@01))
    ($Snap.second ($Snap.second $t@44@01)))))
(assert (= ($Snap.first ($Snap.second $t@44@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@44@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@44@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@44@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@41@01 _current_wait_level_157@42@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@44@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@45@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@46@01 $Ref)
; [exec]
; var list_1: Ref
(declare-const list_1@47@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@48@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@49@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq(Measure$create(true, _cthread_157, 1))
; [eval] Seq(Measure$create(true, _cthread_157, 1))
; [eval] Measure$create(true, _cthread_157, 1)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_157@39@01 1)))
  1))
(declare-const _method_measures_157@50@01 Seq<Measure$>)
(assert (=
  _method_measures_157@50@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_157@39@01 1))))
; [exec]
; _err := null
; [exec]
; _cwl_157, list_1 := list___init__(_cthread_157, _method_measures_157, _residue_157)
; [eval] _cthread_8 != null
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1)))
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
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1)))
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
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1)))
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
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_157@50@01 _cthread_157@39@01 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test_set ----------
(declare-const _cthread_158@51@01 $Ref)
(declare-const _caller_measures_158@52@01 Seq<Measure$>)
(declare-const _residue_158@53@01 $Perm)
(declare-const _current_wait_level_158@54@01 $Perm)
(declare-const _cthread_158@55@01 $Ref)
(declare-const _caller_measures_158@56@01 Seq<Measure$>)
(declare-const _residue_158@57@01 $Perm)
(declare-const _current_wait_level_158@58@01 $Perm)
(push) ; 1
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@55@01 $Ref.null)))
(assert (=
  ($Snap.second $t@59@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@01))
    ($Snap.second ($Snap.second $t@59@01)))))
(assert (= ($Snap.first ($Snap.second $t@59@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@55@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@59@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 ($Snap.combine ($Snap.first $t@60@01) ($Snap.second $t@60@01))))
(assert (= ($Snap.first $t@60@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@60@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@60@01))
    ($Snap.second ($Snap.second $t@60@01)))))
(assert (= ($Snap.first ($Snap.second $t@60@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@60@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@60@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@60@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@60@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@57@01 _current_wait_level_158@58@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@60@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@61@01 $Ref)
; [exec]
; var a_1: Ref
(declare-const a_1@62@01 $Ref)
; [exec]
; var set_0: Ref
(declare-const set_0@63@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@64@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@65@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq(Measure$create(true, _cthread_158, 2))
; [eval] Seq(Measure$create(true, _cthread_158, 2))
; [eval] Measure$create(true, _cthread_158, 2)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_158@55@01 2)))
  1))
(declare-const _method_measures_158@66@01 Seq<Measure$>)
(assert (=
  _method_measures_158@66@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_158@55@01 2))))
; [exec]
; _err := null
; [exec]
; _cwl_158, set_0 := set___init__(_cthread_158, _method_measures_158, _residue_158)
; [eval] _cthread_21 != null
; [eval] Measure$check(_caller_measures_21, _cthread_21, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit _method_measures_158@66@01 _cthread_158@55@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_158@66@01 _cthread_158@55@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_158@66@01 _cthread_158@55@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit _method_measures_158@66@01 _cthread_158@55@01 1))
; [eval] issubtype(typeof(_cthread_21), Thread_0())
; [eval] typeof(_cthread_21)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_21, _cthread_21, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_21@67@01 $Perm)
(declare-const res@68@01 $Ref)
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 ($Snap.combine ($Snap.first $t@69@01) ($Snap.second $t@69@01))))
(assert (= ($Snap.first $t@69@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_21)
(assert (=
  ($Snap.second $t@69@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@69@01))
    ($Snap.second ($Snap.second $t@69@01)))))
(assert (= ($Snap.first ($Snap.second $t@69@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_21)
(assert (=
  ($Snap.second ($Snap.second $t@69@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@69@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@69@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@69@01))) $Snap.unit))
; [eval] _residue_21 <= _current_wait_level_21
(assert (<= _residue_158@57@01 _current_wait_level_21@67@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@69@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@69@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01)))))))
(assert (not (= res@68@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01)))))
  $Snap.unit))
; [eval] res.set_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@69@01))))) (as Set_empty  Set<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@69@01)))))
  $Snap.unit))
; [eval] typeof(res) == set(set_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] set(set_arg(typeof(res), 0))
; [eval] set_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@68@01)
  (set<PyType> (set_arg<PyType> (typeof<PyType> res@68@01) 0))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(set_0), set(int()))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] issubtype(typeof(set_0), set(int()))
; [eval] typeof(set_0)
; [eval] set(int())
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> res@68@01) (set<PyType> (as int<PyType>  PyType))))
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
; assert issubtype(typeof(__prim__int___box__(3)), int())
; [eval] issubtype(typeof(__prim__int___box__(3)), int())
; [eval] typeof(__prim__int___box__(3))
; [eval] __prim__int___box__(3)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 3))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 3))
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (as int<PyType>  PyType)))
; [exec]
; set_0.set_acc := Set(__prim__int___box__(1), __prim__int___box__(2), __prim__int___box__(3))
; [eval] Set(__prim__int___box__(1), __prim__int___box__(2), __prim__int___box__(3))
; [eval] __prim__int___box__(1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(2)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __prim__int___box__(3)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const set_acc@71@01 Set<$Ref>)
(assert (=
  set_acc@71@01
  (Set_unionone (Set_unionone (Set_singleton (__prim__int___box__ $Snap.unit 1)) (__prim__int___box__ $Snap.unit 2)) (__prim__int___box__ $Snap.unit 3))))
; [exec]
; a_1 := set_0
; [exec]
; inhale _isDefined(3235681)
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
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
; _cwl_158 := set_add(_cthread_158, _method_measures_158, _residue_158, _checkDefined(a_1,
;   3235681), __prim__int___box__(4))
; [eval] _checkDefined(a_1, 3235681)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@68@01 3235681))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@68@01 3235681))
; [eval] __prim__int___box__(4)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 4))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 4))
; [eval] _cthread_22 != null
; [eval] Measure$check(_caller_measures_22, _cthread_22, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_22), Thread_0())
; [eval] typeof(_cthread_22)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), set(set_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] set(set_arg(typeof(self), 0))
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) (set<PyType> (set_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) (set<PyType> (set_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@68@01 (_checkDefined $Snap.unit res@68@01 3235681))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(item), set_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (set_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (set_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@68@01 3235681)) 0)))
; [eval] Measure$check(_caller_measures_22, _cthread_22, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_22@73@01 $Perm)
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(assert (= ($Snap.first $t@74@01) $Snap.unit))
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: Level(_r_22) <= _current_wait_level_22)
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(assert (= ($Snap.first ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: Level(_r_22) <= _current_wait_level_22)
(assert (=
  ($Snap.second ($Snap.second $t@74@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@74@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@74@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
; [eval] _residue_22 <= _current_wait_level_22
(assert (<= _residue_158@57@01 _current_wait_level_22@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@74@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@01)))))))
(assert (not (= (_checkDefined $Snap.unit res@68@01 3235681) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@74@01))))
  $Snap.unit))
; [eval] self.set_acc == (old(self.set_acc) union Set(item))
; [eval] (old(self.set_acc) union Set(item))
; [eval] old(self.set_acc)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@68@01 (_checkDefined $Snap.unit res@68@01 3235681))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Set(item)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@74@01))))) (Set_union set_acc@71@01 (Set_singleton (__prim__int___box__ $Snap.unit 4)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_158 := set_clear(_cthread_158, _method_measures_158, _residue_158, _checkDefined(a_1,
;   3235681))
; [eval] _checkDefined(a_1, 3235681)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] _cthread_24 != null
; [eval] Measure$check(_caller_measures_24, _cthread_24, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_24), Thread_0())
; [eval] typeof(_cthread_24)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), set(set_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] set(set_arg(typeof(self), 0))
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] Measure$check(_caller_measures_24, _cthread_24, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_24@75@01 $Perm)
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 ($Snap.combine ($Snap.first $t@76@01) ($Snap.second $t@76@01))))
(assert (= ($Snap.first $t@76@01) $Snap.unit))
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseBounded] :: Level(_r_24) <= _current_wait_level_24)
(assert (=
  ($Snap.second $t@76@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@76@01))
    ($Snap.second ($Snap.second $t@76@01)))))
(assert (= ($Snap.first ($Snap.second $t@76@01)) $Snap.unit))
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: Level(_r_24) <= _current_wait_level_24)
(assert (=
  ($Snap.second ($Snap.second $t@76@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@76@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@76@01))) $Snap.unit))
; [eval] _residue_24 <= _current_wait_level_24
(assert (<= _residue_158@57@01 _current_wait_level_24@75@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@76@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@76@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))
  $Snap.unit))
; [eval] self.set_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@76@01))))) (as Set_empty  Set<$Ref>)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- test_dict ----------
(declare-const _cthread_159@77@01 $Ref)
(declare-const _caller_measures_159@78@01 Seq<Measure$>)
(declare-const _residue_159@79@01 $Perm)
(declare-const _current_wait_level_159@80@01 $Perm)
(declare-const _cthread_159@81@01 $Ref)
(declare-const _caller_measures_159@82@01 Seq<Measure$>)
(declare-const _residue_159@83@01 $Perm)
(declare-const _current_wait_level_159@84@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@85@01 $Snap)
(assert (= $t@85@01 ($Snap.combine ($Snap.first $t@85@01) ($Snap.second $t@85@01))))
(assert (= ($Snap.first $t@85@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@81@01 $Ref.null)))
(assert (=
  ($Snap.second $t@85@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@85@01))
    ($Snap.second ($Snap.second $t@85@01)))))
(assert (= ($Snap.first ($Snap.second $t@85@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@81@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@85@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@85@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@85@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@85@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(assert (= ($Snap.first $t@86@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@86@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@86@01))
    ($Snap.second ($Snap.second $t@86@01)))))
(assert (= ($Snap.first ($Snap.second $t@86@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@86@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@86@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@86@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@83@01 _current_wait_level_159@84@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@86@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@87@01 $Ref)
; [exec]
; var a_2: Ref
(declare-const a_2@88@01 $Ref)
; [exec]
; var keys: Ref
(declare-const keys@89@01 $Ref)
; [exec]
; var values: Ref
(declare-const values@90@01 $Ref)
; [exec]
; var dict_0: Ref
(declare-const dict_0@91@01 $Ref)
; [exec]
; var keys_res: Ref
(declare-const keys_res@92@01 $Ref)
; [exec]
; var values_res: Ref
(declare-const values_res@93@01 $Ref)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@94@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@95@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq(Measure$create(true, _cthread_159, 2))
; [eval] Seq(Measure$create(true, _cthread_159, 2))
; [eval] Measure$create(true, _cthread_159, 2)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_159@81@01 2)))
  1))
(declare-const _method_measures_159@96@01 Seq<Measure$>)
(assert (=
  _method_measures_159@96@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_159@81@01 2))))
; [exec]
; _err := null
; [exec]
; _cwl_159, dict_0 := dict___init__(_cthread_159, _method_measures_159, _residue_159)
; [eval] _cthread_33 != null
; [eval] Measure$check(_caller_measures_33, _cthread_33, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit _method_measures_159@96@01 _cthread_159@81@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_159@96@01 _cthread_159@81@01 1))
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_159@96@01 _cthread_159@81@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit _method_measures_159@96@01 _cthread_159@81@01 1))
; [eval] issubtype(typeof(_cthread_33), Thread_0())
; [eval] typeof(_cthread_33)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_33, _cthread_33, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_33@97@01 $Perm)
(declare-const res@98@01 $Ref)
(declare-const $t@99@01 $Snap)
(assert (= $t@99@01 ($Snap.combine ($Snap.first $t@99@01) ($Snap.second $t@99@01))))
(assert (= ($Snap.first $t@99@01) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: Level(_r_26) <= _current_wait_level_33)
(assert (=
  ($Snap.second $t@99@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@99@01))
    ($Snap.second ($Snap.second $t@99@01)))))
(assert (= ($Snap.first ($Snap.second $t@99@01)) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: Level(_r_26) <= _current_wait_level_33)
(assert (=
  ($Snap.second ($Snap.second $t@99@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@99@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@99@01))) $Snap.unit))
; [eval] _residue_33 <= _current_wait_level_33
(assert (<= _residue_159@83@01 _current_wait_level_33@97@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@99@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))
(assert (not (= res@98@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
  $Snap.unit))
; [eval] res.dict_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))) (as Set_empty  Set<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))
  $Snap.unit))
; [eval] typeof(res) == dict(dict_arg(typeof(res), 0), dict_arg(typeof(res), 1))
; [eval] typeof(res)
; [eval] dict(dict_arg(typeof(res), 0), dict_arg(typeof(res), 1))
; [eval] dict_arg(typeof(res), 0)
; [eval] typeof(res)
; [eval] dict_arg(typeof(res), 1)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@98@01)
  (dict<PyType> (dict_arg<PyType> (typeof<PyType> res@98@01) 0) (dict_arg<PyType> (typeof<PyType> res@98@01) 1))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; inhale issubtype(typeof(dict_0), dict(str(), int()))
(declare-const $t@100@01 $Snap)
(assert (= $t@100@01 $Snap.unit))
; [eval] issubtype(typeof(dict_0), dict(str(), int()))
; [eval] typeof(dict_0)
; [eval] dict(str(), int())
; [eval] str()
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> res@98@01) (dict<PyType> (as str<PyType>  PyType) (as int<PyType>  PyType))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_159 := dict___setitem__(_cthread_159, _method_measures_159, _residue_159,
;   dict_0, str___create__(1, 97), __prim__int___box__(1))
; [eval] str___create__(1, 97)
(set-option :timeout 0)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 1 97))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 1 97))
; [eval] __prim__int___box__(1)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 1))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 1))
; [eval] _cthread_35 != null
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_35), Thread_0())
; [eval] typeof(_cthread_35)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> res@98@01) (dict<PyType> (dict_arg<PyType> (typeof<PyType> res@98@01) 0) (dict_arg<PyType> (typeof<PyType> res@98@01) 1)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> res@98@01) (dict<PyType> (dict_arg<PyType> (typeof<PyType> res@98@01) 0) (dict_arg<PyType> (typeof<PyType> res@98@01) 1))))
; [eval] issubtype(typeof(item), dict_arg(typeof(self), 1))
; [eval] typeof(item)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 1)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1)))
; [eval] issubtype(typeof(key), dict_arg(typeof(self), 0))
; [eval] typeof(key)
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 97)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 97)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0)))
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_35@101@01 $Perm)
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second $t@102@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@102@01))
    ($Snap.second ($Snap.second $t@102@01)))))
(assert (= ($Snap.first ($Snap.second $t@102@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second ($Snap.second $t@102@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@102@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@102@01))) $Snap.unit))
; [eval] _residue_35 <= _current_wait_level_35
(assert (<= _residue_159@83@01 _current_wait_level_35@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@102@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))
  $Snap.unit))
; [eval] self.dict_acc == (old(self.dict_acc) union Set(key))
; [eval] (old(self.dict_acc) union Set(key))
; [eval] old(self.dict_acc)
; [eval] Set(key)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))) (Set_singleton (str___create__ $Snap.unit 1 97)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))
  $Snap.unit))
; [eval] dict___getitem__(self, key) == item
; [eval] dict___getitem__(self, key)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@103@01 $Perm)
(assert ($Perm.isReadVar $k@103@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@103@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@104@01 $Perm)
(assert ($Perm.isReadVar $k@104@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@104@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@105@01 $Perm)
(assert ($Perm.isReadVar $k@105@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@105@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@106@01 $Perm)
(assert ($Perm.isReadVar $k@106@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@106@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@105@01))
(assert ($Perm.isReadVar $k@106@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
(set-option :timeout 0)
(push) ; 4
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@103@01))
(assert ($Perm.isReadVar $k@104@01))
(assert ($Perm.isReadVar $k@105@01))
(assert ($Perm.isReadVar $k@106@01))
(assert (and
  (dict___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
  (dict___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))))
(assert (=
  (dict___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))
  (__prim__int___box__ $Snap.unit 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { dict___getitem__(self, k) } old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k)))
(declare-const k@107@01 $Ref)
(push) ; 3
; [eval] old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] old(dict___contains__(self, k)) && k != key
; [eval] old(dict___contains__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@108@01 $Perm)
(assert ($Perm.isReadVar $k@108@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@108@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@109@01 $Perm)
(assert ($Perm.isReadVar $k@109@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@109@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@108@01))
(assert ($Perm.isReadVar $k@109@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01)) | live]
; [else-branch: 12 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01) | live]
(push) ; 5
; [then-branch: 12 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01))
; [eval] k != key
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01))))
(push) ; 4
; [then-branch: 13 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01) && k@107@01 != str___create__(_, 1, 97) | live]
; [else-branch: 13 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01) && k@107@01 != str___create__(_, 1, 97)) | live]
(push) ; 5
; [then-branch: 13 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01) && k@107@01 != str___create__(_, 1, 97)]
(assert (and
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
  (not (= k@107@01 (str___create__ $Snap.unit 1 97)))))
; [eval] dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 6
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@110@01 $Perm)
(assert ($Perm.isReadVar $k@110@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@110@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@111@01 $Perm)
(assert ($Perm.isReadVar $k@111@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@111@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@110@01))
(assert ($Perm.isReadVar $k@111@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 14 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@107@01)) | live]
; [else-branch: 14 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@107@01) | live]
(push) ; 7
; [then-branch: 14 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@107@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 14 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@107@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01))
; [eval] dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@112@01 $Perm)
(assert ($Perm.isReadVar $k@112@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@112@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@113@01 $Perm)
(assert ($Perm.isReadVar $k@113@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@113@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@114@01 $Perm)
(assert ($Perm.isReadVar $k@114@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@114@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@115@01 $Perm)
(assert ($Perm.isReadVar $k@115@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@115@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@114@01))
(assert ($Perm.isReadVar $k@115@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 k@107@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@112@01))
(assert ($Perm.isReadVar $k@113@01))
(assert ($Perm.isReadVar $k@114@01))
(assert ($Perm.isReadVar $k@115@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 k@107@01))
; [eval] old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@116@01 $Perm)
(assert ($Perm.isReadVar $k@116@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@116@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@117@01 $Perm)
(assert ($Perm.isReadVar $k@117@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@117@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@118@01 $Perm)
(assert ($Perm.isReadVar $k@118@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@118@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@119@01 $Perm)
(assert ($Perm.isReadVar $k@119@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@119@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@118@01))
(assert ($Perm.isReadVar $k@119@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
      $Snap.unit))) res@98@01 k@107@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@116@01))
(assert ($Perm.isReadVar $k@117@01))
(assert ($Perm.isReadVar $k@118@01))
(assert ($Perm.isReadVar $k@119@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
      $Snap.unit))) res@98@01 k@107@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@112@01))
(assert ($Perm.isReadVar $k@113@01))
(assert ($Perm.isReadVar $k@114@01))
(assert ($Perm.isReadVar $k@115@01))
(assert ($Perm.isReadVar $k@116@01))
(assert ($Perm.isReadVar $k@117@01))
(assert ($Perm.isReadVar $k@118@01))
(assert ($Perm.isReadVar $k@119@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
          $Snap.unit))) res@98@01 k@107@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
          $Snap.unit))) res@98@01 k@107@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 13 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, k@107@01) && k@107@01 != str___create__(_, 1, 97))]
(assert (not
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
    (not (= k@107@01 (str___create__ $Snap.unit 1 97))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@110@01))
(assert ($Perm.isReadVar $k@111@01))
(assert ($Perm.isReadVar $k@112@01))
(assert ($Perm.isReadVar $k@113@01))
(assert ($Perm.isReadVar $k@114@01))
(assert ($Perm.isReadVar $k@115@01))
(assert ($Perm.isReadVar $k@116@01))
(assert ($Perm.isReadVar $k@117@01))
(assert ($Perm.isReadVar $k@118@01))
(assert ($Perm.isReadVar $k@119@01))
(assert (=>
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
    (not (= k@107@01 (str___create__ $Snap.unit 1 97))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
    (not (= k@107@01 (str___create__ $Snap.unit 1 97)))
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
              $Snap.unit))) res@98@01 k@107@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
              $Snap.unit))) res@98@01 k@107@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
      (not (= k@107@01 (str___create__ $Snap.unit 1 97)))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
    (not (= k@107@01 (str___create__ $Snap.unit 1 97))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@108@01))
(assert ($Perm.isReadVar $k@109@01))
(assert ($Perm.isReadVar $k@110@01))
(assert ($Perm.isReadVar $k@111@01))
(assert ($Perm.isReadVar $k@112@01))
(assert ($Perm.isReadVar $k@113@01))
(assert ($Perm.isReadVar $k@114@01))
(assert ($Perm.isReadVar $k@115@01))
(assert ($Perm.isReadVar $k@116@01))
(assert ($Perm.isReadVar $k@117@01))
(assert ($Perm.isReadVar $k@118@01))
(assert ($Perm.isReadVar $k@119@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@107@01 $Ref)) (!
  (and
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)))
    (=>
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
        (not (= k@107@01 (str___create__ $Snap.unit 1 97))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
        (not (= k@107@01 (str___create__ $Snap.unit 1 97)))
        (dict___contains__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                  $Snap.unit))) res@98@01 k@107@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
                  $Snap.unit))) res@98@01 k@107@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)))))
    (or
      (not
        (and
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
          (not (= k@107@01 (str___create__ $Snap.unit 1 97)))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
        (not (= k@107@01 (str___create__ $Snap.unit 1 97))))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
        $Snap.unit))) res@98@01 k@107@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196-aux|)))
(assert (forall ((k@107@01 $Ref)) (!
  (=>
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 k@107@01)
      (not (= k@107@01 (str___create__ $Snap.unit 1 97))))
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@107@01)
      (=
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
              $Snap.unit))) res@98@01 k@107@01)
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
              $Snap.unit))) res@98@01 k@107@01))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
        $Snap.unit))) res@98@01 k@107@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))))
  $Snap.unit))
; [eval] |dict___values__(self)| == old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@120@01 $Perm)
(assert ($Perm.isReadVar $k@120@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@120@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@121@01 $Perm)
(assert ($Perm.isReadVar $k@121@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@121@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@120@01))
(assert ($Perm.isReadVar $k@121@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01))
; [eval] old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(|dict___values__(self)|)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@122@01 $Perm)
(assert ($Perm.isReadVar $k@122@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@122@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@123@01 $Perm)
(assert ($Perm.isReadVar $k@123@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@123@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@122@01))
(assert ($Perm.isReadVar $k@123@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01))
; [eval] (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@124@01 $Perm)
(assert ($Perm.isReadVar $k@124@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@124@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@125@01 $Perm)
(assert ($Perm.isReadVar $k@125@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@125@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@124@01))
(assert ($Perm.isReadVar $k@125@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97)) | dead]
; [else-branch: 15 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 15 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97)))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))
(assert (=
  (Seq_length
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01))
  (+
    (Seq_length
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01))
    1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { (k in dict___values__(self)) } (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self)))
(declare-const k@126@01 $Ref)
(push) ; 3
; [eval] (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self))
; [eval] k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] k == item
(push) ; 4
; [then-branch: 16 | k@126@01 == __prim__int___box__(_, 1) | live]
; [else-branch: 16 | k@126@01 != __prim__int___box__(_, 1) | live]
(push) ; 5
; [then-branch: 16 | k@126@01 == __prim__int___box__(_, 1)]
(assert (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | k@126@01 != __prim__int___box__(_, 1)]
(assert (not (= k@126@01 (__prim__int___box__ $Snap.unit 1))))
; [eval] (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] (k in old(dict___values__(self)))
; [eval] old(dict___values__(self))
; [eval] dict___values__(self)
(push) ; 6
(declare-const $k@127@01 $Perm)
(assert ($Perm.isReadVar $k@127@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@127@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@128@01 $Perm)
(assert ($Perm.isReadVar $k@128@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@128@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@127@01))
(assert ($Perm.isReadVar $k@128@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 17 | !(k@126@01 in dict___values__((First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01)))))), res@98@01)) | live]
; [else-branch: 17 | k@126@01 in dict___values__((First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01)))))), res@98@01) | live]
(push) ; 7
; [then-branch: 17 | !(k@126@01 in dict___values__((First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01)))))), res@98@01))]
(assert (not
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
    k@126@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 17 | k@126@01 in dict___values__((First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01)))))), res@98@01)]
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
  k@126@01))
; [eval] !old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key))
; [eval] !old(dict___contains__(self, key))
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@129@01 $Perm)
(assert ($Perm.isReadVar $k@129@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@129@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@130@01 $Perm)
(assert ($Perm.isReadVar $k@130@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@130@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@129@01))
(assert ($Perm.isReadVar $k@130@01))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 18 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97))) | live]
; [else-branch: 18 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97)) | live]
(push) ; 9
; [then-branch: 18 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97)))]
(pop) ; 9
(push) ; 9
; [else-branch: 18 | dict___contains__((_, (First:(Second:(Second:(Second:($t@99@01)))), First:(Second:(Second:(Second:(Second:($t@99@01))))))), res@98@01, str___create__(_, 1, 97))]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
; [eval] k != old(dict___getitem__(self, key))
; [eval] old(dict___getitem__(self, key))
; [eval] dict___getitem__(self, key)
(push) ; 10
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@131@01 $Perm)
(assert ($Perm.isReadVar $k@131@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@131@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@132@01 $Perm)
(assert ($Perm.isReadVar $k@132@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@132@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@133@01 $Perm)
(assert ($Perm.isReadVar $k@133@01))
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@133@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const $k@134@01 $Perm)
(assert ($Perm.isReadVar $k@134@01))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@134@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
; Joined path conditions
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97)))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@131@01))
(assert ($Perm.isReadVar $k@132@01))
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@131@01))
(assert ($Perm.isReadVar $k@132@01))
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
          $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97)))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@129@01))
(assert ($Perm.isReadVar $k@130@01))
(assert ($Perm.isReadVar $k@131@01))
(assert ($Perm.isReadVar $k@132@01))
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert (=>
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
    k@126@01)
  (and
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
      k@126@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
              $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))))))
(assert (or
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
    k@126@01)
  (not
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
      k@126@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@127@01))
(assert ($Perm.isReadVar $k@128@01))
(assert ($Perm.isReadVar $k@129@01))
(assert ($Perm.isReadVar $k@130@01))
(assert ($Perm.isReadVar $k@131@01))
(assert ($Perm.isReadVar $k@132@01))
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert (=>
  (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
  (and
    (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
    (=>
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
        k@126@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
          k@126@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
                  $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))))
    (or
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
        k@126@01)
      (not
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
          k@126@01))))))
(assert (or
  (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
  (= k@126@01 (__prim__int___box__ $Snap.unit 1))))
; [eval] (k in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 4
(declare-const $k@135@01 $Perm)
(assert ($Perm.isReadVar $k@135@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@135@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@136@01 $Perm)
(assert ($Perm.isReadVar $k@136@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@136@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@135@01))
(assert ($Perm.isReadVar $k@136@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@127@01))
(assert ($Perm.isReadVar $k@128@01))
(assert ($Perm.isReadVar $k@129@01))
(assert ($Perm.isReadVar $k@130@01))
(assert ($Perm.isReadVar $k@131@01))
(assert ($Perm.isReadVar $k@132@01))
(assert ($Perm.isReadVar $k@133@01))
(assert ($Perm.isReadVar $k@134@01))
(assert ($Perm.isReadVar $k@135@01))
(assert ($Perm.isReadVar $k@136@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@126@01 $Ref)) (!
  (and
    (=>
      (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
      (and
        (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
            k@126@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
              k@126@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
            k@126@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
              k@126@01)))))
    (or
      (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
      (= k@126@01 (__prim__int___box__ $Snap.unit 1))))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@126@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@126@01 $Ref)) (!
  (and
    (=>
      (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
      (and
        (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
            k@126@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
              k@126@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
            k@126@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
              k@126@01)))))
    (or
      (not (= k@126@01 (__prim__int___box__ $Snap.unit 1)))
      (= k@126@01 (__prim__int___box__ $Snap.unit 1))))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@126@01 $Ref)) (!
  (=
    (or
      (= k@126@01 (__prim__int___box__ $Snap.unit 1))
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))) res@98@01)
          k@126@01)
        (or
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01))))))) res@98@01 (str___create__ $Snap.unit 1 97)))
          (not
            (=
              k@126@01
              (dict___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@99@01))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@99@01)))))
                    $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 97)))))))
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
      k@126@01))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@126@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@126@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_159 := dict___setitem__(_cthread_159, _method_measures_159, _residue_159,
;   dict_0, str___create__(1, 98), __prim__int___box__(2))
; [eval] str___create__(1, 98)
(set-option :timeout 0)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 1 98))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 1 98))
; [eval] __prim__int___box__(2)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 2))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 2))
; [eval] _cthread_35 != null
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_35), Thread_0())
; [eval] typeof(_cthread_35)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
; [eval] issubtype(typeof(item), dict_arg(typeof(self), 1))
; [eval] typeof(item)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 2)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1)))
; [eval] issubtype(typeof(key), dict_arg(typeof(self), 0))
; [eval] typeof(key)
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 98)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 98)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0)))
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_35@137@01 $Perm)
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 ($Snap.combine ($Snap.first $t@138@01) ($Snap.second $t@138@01))))
(assert (= ($Snap.first $t@138@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second $t@138@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@138@01))
    ($Snap.second ($Snap.second $t@138@01)))))
(assert (= ($Snap.first ($Snap.second $t@138@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second ($Snap.second $t@138@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@138@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@138@01))) $Snap.unit))
; [eval] _residue_35 <= _current_wait_level_35
(assert (<= _residue_159@83@01 _current_wait_level_35@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@138@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))
  $Snap.unit))
; [eval] self.dict_acc == (old(self.dict_acc) union Set(key))
; [eval] (old(self.dict_acc) union Set(key))
; [eval] old(self.dict_acc)
; [eval] Set(key)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))) (Set_singleton (str___create__ $Snap.unit 1 98)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))
  $Snap.unit))
; [eval] dict___getitem__(self, key) == item
; [eval] dict___getitem__(self, key)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@139@01 $Perm)
(assert ($Perm.isReadVar $k@139@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@139@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@140@01 $Perm)
(assert ($Perm.isReadVar $k@140@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@140@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@141@01 $Perm)
(assert ($Perm.isReadVar $k@141@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@141@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@142@01 $Perm)
(assert ($Perm.isReadVar $k@142@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@142@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@141@01))
(assert ($Perm.isReadVar $k@142@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
(set-option :timeout 0)
(push) ; 4
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@139@01))
(assert ($Perm.isReadVar $k@140@01))
(assert ($Perm.isReadVar $k@141@01))
(assert ($Perm.isReadVar $k@142@01))
(assert (and
  (dict___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
  (dict___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))))
(assert (=
  (dict___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))
  (__prim__int___box__ $Snap.unit 2)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { dict___getitem__(self, k) } old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k)))
(declare-const k@143@01 $Ref)
(push) ; 3
; [eval] old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] old(dict___contains__(self, k)) && k != key
; [eval] old(dict___contains__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@144@01 $Perm)
(assert ($Perm.isReadVar $k@144@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@144@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@145@01 $Perm)
(assert ($Perm.isReadVar $k@145@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@145@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@144@01))
(assert ($Perm.isReadVar $k@145@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 19 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01)) | live]
; [else-branch: 19 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01) | live]
(push) ; 5
; [then-branch: 19 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01))
; [eval] k != key
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01))))
(push) ; 4
; [then-branch: 20 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01) && k@143@01 != str___create__(_, 1, 98) | live]
; [else-branch: 20 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01) && k@143@01 != str___create__(_, 1, 98)) | live]
(push) ; 5
; [then-branch: 20 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01) && k@143@01 != str___create__(_, 1, 98)]
(assert (and
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
  (not (= k@143@01 (str___create__ $Snap.unit 1 98)))))
; [eval] dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 6
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@146@01 $Perm)
(assert ($Perm.isReadVar $k@146@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@146@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@147@01 $Perm)
(assert ($Perm.isReadVar $k@147@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@147@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@146@01))
(assert ($Perm.isReadVar $k@147@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 21 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@143@01)) | live]
; [else-branch: 21 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@143@01) | live]
(push) ; 7
; [then-branch: 21 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@143@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 21 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@143@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01))
; [eval] dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@148@01 $Perm)
(assert ($Perm.isReadVar $k@148@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@148@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@149@01 $Perm)
(assert ($Perm.isReadVar $k@149@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@149@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@150@01 $Perm)
(assert ($Perm.isReadVar $k@150@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@150@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@151@01 $Perm)
(assert ($Perm.isReadVar $k@151@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@151@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@150@01))
(assert ($Perm.isReadVar $k@151@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 k@143@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@148@01))
(assert ($Perm.isReadVar $k@149@01))
(assert ($Perm.isReadVar $k@150@01))
(assert ($Perm.isReadVar $k@151@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 k@143@01))
; [eval] old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@152@01 $Perm)
(assert ($Perm.isReadVar $k@152@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@152@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@153@01 $Perm)
(assert ($Perm.isReadVar $k@153@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@153@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@154@01 $Perm)
(assert ($Perm.isReadVar $k@154@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@154@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@155@01 $Perm)
(assert ($Perm.isReadVar $k@155@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@155@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@154@01))
(assert ($Perm.isReadVar $k@155@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 k@143@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@152@01))
(assert ($Perm.isReadVar $k@153@01))
(assert ($Perm.isReadVar $k@154@01))
(assert ($Perm.isReadVar $k@155@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 k@143@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@148@01))
(assert ($Perm.isReadVar $k@149@01))
(assert ($Perm.isReadVar $k@150@01))
(assert ($Perm.isReadVar $k@151@01))
(assert ($Perm.isReadVar $k@152@01))
(assert ($Perm.isReadVar $k@153@01))
(assert ($Perm.isReadVar $k@154@01))
(assert ($Perm.isReadVar $k@155@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
          $Snap.unit))) res@98@01 k@143@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
          $Snap.unit))) res@98@01 k@143@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 20 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, k@143@01) && k@143@01 != str___create__(_, 1, 98))]
(assert (not
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
    (not (= k@143@01 (str___create__ $Snap.unit 1 98))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@146@01))
(assert ($Perm.isReadVar $k@147@01))
(assert ($Perm.isReadVar $k@148@01))
(assert ($Perm.isReadVar $k@149@01))
(assert ($Perm.isReadVar $k@150@01))
(assert ($Perm.isReadVar $k@151@01))
(assert ($Perm.isReadVar $k@152@01))
(assert ($Perm.isReadVar $k@153@01))
(assert ($Perm.isReadVar $k@154@01))
(assert ($Perm.isReadVar $k@155@01))
(assert (=>
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
    (not (= k@143@01 (str___create__ $Snap.unit 1 98))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
    (not (= k@143@01 (str___create__ $Snap.unit 1 98)))
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
              $Snap.unit))) res@98@01 k@143@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
              $Snap.unit))) res@98@01 k@143@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
      (not (= k@143@01 (str___create__ $Snap.unit 1 98)))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
    (not (= k@143@01 (str___create__ $Snap.unit 1 98))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@144@01))
(assert ($Perm.isReadVar $k@145@01))
(assert ($Perm.isReadVar $k@146@01))
(assert ($Perm.isReadVar $k@147@01))
(assert ($Perm.isReadVar $k@148@01))
(assert ($Perm.isReadVar $k@149@01))
(assert ($Perm.isReadVar $k@150@01))
(assert ($Perm.isReadVar $k@151@01))
(assert ($Perm.isReadVar $k@152@01))
(assert ($Perm.isReadVar $k@153@01))
(assert ($Perm.isReadVar $k@154@01))
(assert ($Perm.isReadVar $k@155@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@143@01 $Ref)) (!
  (and
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)))
    (=>
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
        (not (= k@143@01 (str___create__ $Snap.unit 1 98))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
        (not (= k@143@01 (str___create__ $Snap.unit 1 98)))
        (dict___contains__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                  $Snap.unit))) res@98@01 k@143@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                  $Snap.unit))) res@98@01 k@143@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)))))
    (or
      (not
        (and
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
          (not (= k@143@01 (str___create__ $Snap.unit 1 98)))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
        (not (= k@143@01 (str___create__ $Snap.unit 1 98))))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
        $Snap.unit))) res@98@01 k@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196-aux|)))
(assert (forall ((k@143@01 $Ref)) (!
  (=>
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 k@143@01)
      (not (= k@143@01 (str___create__ $Snap.unit 1 98))))
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@143@01)
      (=
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
              $Snap.unit))) res@98@01 k@143@01)
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
              $Snap.unit))) res@98@01 k@143@01))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
        $Snap.unit))) res@98@01 k@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))))
  $Snap.unit))
; [eval] |dict___values__(self)| == old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@156@01 $Perm)
(assert ($Perm.isReadVar $k@156@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@156@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@157@01 $Perm)
(assert ($Perm.isReadVar $k@157@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@157@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@156@01))
(assert ($Perm.isReadVar $k@157@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01))
; [eval] old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(|dict___values__(self)|)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@158@01 $Perm)
(assert ($Perm.isReadVar $k@158@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@158@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@159@01 $Perm)
(assert ($Perm.isReadVar $k@159@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@159@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@158@01))
(assert ($Perm.isReadVar $k@159@01))
; [eval] (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@160@01 $Perm)
(assert ($Perm.isReadVar $k@160@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@160@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@161@01 $Perm)
(assert ($Perm.isReadVar $k@161@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@161@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@160@01))
(assert ($Perm.isReadVar $k@161@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98)) | dead]
; [else-branch: 22 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 22 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98)))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))
(assert (=
  (Seq_length
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01))
  (+
    (Seq_length
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01))
    1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { (k in dict___values__(self)) } (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self)))
(declare-const k@162@01 $Ref)
(push) ; 3
; [eval] (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self))
; [eval] k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] k == item
(push) ; 4
; [then-branch: 23 | k@162@01 == __prim__int___box__(_, 2) | live]
; [else-branch: 23 | k@162@01 != __prim__int___box__(_, 2) | live]
(push) ; 5
; [then-branch: 23 | k@162@01 == __prim__int___box__(_, 2)]
(assert (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | k@162@01 != __prim__int___box__(_, 2)]
(assert (not (= k@162@01 (__prim__int___box__ $Snap.unit 2))))
; [eval] (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] (k in old(dict___values__(self)))
; [eval] old(dict___values__(self))
; [eval] dict___values__(self)
(push) ; 6
(declare-const $k@163@01 $Perm)
(assert ($Perm.isReadVar $k@163@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@163@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@164@01 $Perm)
(assert ($Perm.isReadVar $k@164@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@164@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@163@01))
(assert ($Perm.isReadVar $k@164@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 24 | !(k@162@01 in dict___values__((First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01)))))), res@98@01)) | live]
; [else-branch: 24 | k@162@01 in dict___values__((First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01)))))), res@98@01) | live]
(push) ; 7
; [then-branch: 24 | !(k@162@01 in dict___values__((First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01)))))), res@98@01))]
(assert (not
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@162@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 24 | k@162@01 in dict___values__((First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01)))))), res@98@01)]
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
  k@162@01))
; [eval] !old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key))
; [eval] !old(dict___contains__(self, key))
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@165@01 $Perm)
(assert ($Perm.isReadVar $k@165@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@165@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@166@01 $Perm)
(assert ($Perm.isReadVar $k@166@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@166@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@165@01))
(assert ($Perm.isReadVar $k@166@01))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 25 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98))) | live]
; [else-branch: 25 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98)) | live]
(push) ; 9
; [then-branch: 25 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98)))]
(pop) ; 9
(push) ; 9
; [else-branch: 25 | dict___contains__((_, (First:(Second:(Second:(Second:($t@102@01)))), First:(Second:(Second:(Second:(Second:($t@102@01))))))), res@98@01, str___create__(_, 1, 98))]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
; [eval] k != old(dict___getitem__(self, key))
; [eval] old(dict___getitem__(self, key))
; [eval] dict___getitem__(self, key)
(push) ; 10
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@167@01 $Perm)
(assert ($Perm.isReadVar $k@167@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@167@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@168@01 $Perm)
(assert ($Perm.isReadVar $k@168@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@168@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@169@01 $Perm)
(assert ($Perm.isReadVar $k@169@01))
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@169@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const $k@170@01 $Perm)
(assert ($Perm.isReadVar $k@170@01))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@170@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
; Joined path conditions
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98)))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@167@01))
(assert ($Perm.isReadVar $k@168@01))
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@167@01))
(assert ($Perm.isReadVar $k@168@01))
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
          $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98)))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@165@01))
(assert ($Perm.isReadVar $k@166@01))
(assert ($Perm.isReadVar $k@167@01))
(assert ($Perm.isReadVar $k@168@01))
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert (=>
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@162@01)
  (and
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
      k@162@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
              $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))))))
(assert (or
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
    k@162@01)
  (not
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
      k@162@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@163@01))
(assert ($Perm.isReadVar $k@164@01))
(assert ($Perm.isReadVar $k@165@01))
(assert ($Perm.isReadVar $k@166@01))
(assert ($Perm.isReadVar $k@167@01))
(assert ($Perm.isReadVar $k@168@01))
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert (=>
  (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
  (and
    (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
    (=>
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
        k@162@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
          k@162@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                  $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))))
    (or
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
        k@162@01)
      (not
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
          k@162@01))))))
(assert (or
  (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
  (= k@162@01 (__prim__int___box__ $Snap.unit 2))))
; [eval] (k in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 4
(declare-const $k@171@01 $Perm)
(assert ($Perm.isReadVar $k@171@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@171@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@172@01 $Perm)
(assert ($Perm.isReadVar $k@172@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@172@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@171@01))
(assert ($Perm.isReadVar $k@172@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@163@01))
(assert ($Perm.isReadVar $k@164@01))
(assert ($Perm.isReadVar $k@165@01))
(assert ($Perm.isReadVar $k@166@01))
(assert ($Perm.isReadVar $k@167@01))
(assert ($Perm.isReadVar $k@168@01))
(assert ($Perm.isReadVar $k@169@01))
(assert ($Perm.isReadVar $k@170@01))
(assert ($Perm.isReadVar $k@171@01))
(assert ($Perm.isReadVar $k@172@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@162@01 $Ref)) (!
  (and
    (=>
      (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
      (and
        (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
            k@162@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
              k@162@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
            k@162@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
              k@162@01)))))
    (or
      (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
      (= k@162@01 (__prim__int___box__ $Snap.unit 2))))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@162@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@162@01 $Ref)) (!
  (and
    (=>
      (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
      (and
        (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
            k@162@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
              k@162@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
            k@162@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
              k@162@01)))))
    (or
      (not (= k@162@01 (__prim__int___box__ $Snap.unit 2)))
      (= k@162@01 (__prim__int___box__ $Snap.unit 2))))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@162@01 $Ref)) (!
  (=
    (or
      (= k@162@01 (__prim__int___box__ $Snap.unit 2))
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) res@98@01)
          k@162@01)
        (or
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))) res@98@01 (str___create__ $Snap.unit 1 98)))
          (not
            (=
              k@162@01
              (dict___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
                    $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 98)))))))
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
      k@162@01))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@162@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_159 := dict___setitem__(_cthread_159, _method_measures_159, _residue_159,
;   dict_0, str___create__(1, 99), __prim__int___box__(3))
; [eval] str___create__(1, 99)
(set-option :timeout 0)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 1 99))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 1 99))
; [eval] __prim__int___box__(3)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 3))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 3))
; [eval] _cthread_35 != null
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_35), Thread_0())
; [eval] typeof(_cthread_35)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
; [eval] issubtype(typeof(item), dict_arg(typeof(self), 1))
; [eval] typeof(item)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 3)) (dict_arg<PyType> (typeof<PyType> res@98@01) 1)))
; [eval] issubtype(typeof(key), dict_arg(typeof(self), 0))
; [eval] typeof(key)
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 99)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 99)) (dict_arg<PyType> (typeof<PyType> res@98@01) 0)))
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_35@173@01 $Perm)
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 ($Snap.combine ($Snap.first $t@174@01) ($Snap.second $t@174@01))))
(assert (= ($Snap.first $t@174@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second $t@174@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@174@01))
    ($Snap.second ($Snap.second $t@174@01)))))
(assert (= ($Snap.first ($Snap.second $t@174@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second ($Snap.second $t@174@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@174@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@174@01))) $Snap.unit))
; [eval] _residue_35 <= _current_wait_level_35
(assert (<= _residue_159@83@01 _current_wait_level_35@173@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@174@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
  $Snap.unit))
; [eval] self.dict_acc == (old(self.dict_acc) union Set(key))
; [eval] (old(self.dict_acc) union Set(key))
; [eval] old(self.dict_acc)
; [eval] Set(key)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))) (Set_singleton (str___create__ $Snap.unit 1 99)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
  $Snap.unit))
; [eval] dict___getitem__(self, key) == item
; [eval] dict___getitem__(self, key)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@175@01 $Perm)
(assert ($Perm.isReadVar $k@175@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@175@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@176@01 $Perm)
(assert ($Perm.isReadVar $k@176@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@176@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@177@01 $Perm)
(assert ($Perm.isReadVar $k@177@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@177@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@178@01 $Perm)
(assert ($Perm.isReadVar $k@178@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@178@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@177@01))
(assert ($Perm.isReadVar $k@178@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
(set-option :timeout 0)
(push) ; 4
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@175@01))
(assert ($Perm.isReadVar $k@176@01))
(assert ($Perm.isReadVar $k@177@01))
(assert ($Perm.isReadVar $k@178@01))
(assert (and
  (dict___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
  (dict___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))))
(assert (=
  (dict___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
        $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))
  (__prim__int___box__ $Snap.unit 3)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { dict___getitem__(self, k) } old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k)))
(declare-const k@179@01 $Ref)
(push) ; 3
; [eval] old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] old(dict___contains__(self, k)) && k != key
; [eval] old(dict___contains__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@180@01 $Perm)
(assert ($Perm.isReadVar $k@180@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@180@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@181@01 $Perm)
(assert ($Perm.isReadVar $k@181@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@181@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@180@01))
(assert ($Perm.isReadVar $k@181@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 26 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01)) | live]
; [else-branch: 26 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01) | live]
(push) ; 5
; [then-branch: 26 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01))
; [eval] k != key
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01))))
(push) ; 4
; [then-branch: 27 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01) && k@179@01 != str___create__(_, 1, 99) | live]
; [else-branch: 27 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01) && k@179@01 != str___create__(_, 1, 99)) | live]
(push) ; 5
; [then-branch: 27 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01) && k@179@01 != str___create__(_, 1, 99)]
(assert (and
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
  (not (= k@179@01 (str___create__ $Snap.unit 1 99)))))
; [eval] dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 6
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@182@01 $Perm)
(assert ($Perm.isReadVar $k@182@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@182@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@183@01 $Perm)
(assert ($Perm.isReadVar $k@183@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@183@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@182@01))
(assert ($Perm.isReadVar $k@183@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 28 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), res@98@01, k@179@01)) | live]
; [else-branch: 28 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), res@98@01, k@179@01) | live]
(push) ; 7
; [then-branch: 28 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), res@98@01, k@179@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), res@98@01, k@179@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01))
; [eval] dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@184@01 $Perm)
(assert ($Perm.isReadVar $k@184@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@184@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@185@01 $Perm)
(assert ($Perm.isReadVar $k@185@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@185@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@186@01 $Perm)
(assert ($Perm.isReadVar $k@186@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@186@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@187@01 $Perm)
(assert ($Perm.isReadVar $k@187@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@187@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@186@01))
(assert ($Perm.isReadVar $k@187@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) res@98@01 k@179@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@184@01))
(assert ($Perm.isReadVar $k@185@01))
(assert ($Perm.isReadVar $k@186@01))
(assert ($Perm.isReadVar $k@187@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) res@98@01 k@179@01))
; [eval] old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@188@01 $Perm)
(assert ($Perm.isReadVar $k@188@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@188@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@189@01 $Perm)
(assert ($Perm.isReadVar $k@189@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@189@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@190@01 $Perm)
(assert ($Perm.isReadVar $k@190@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@190@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@191@01 $Perm)
(assert ($Perm.isReadVar $k@191@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@191@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@190@01))
(assert ($Perm.isReadVar $k@191@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 k@179@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@188@01))
(assert ($Perm.isReadVar $k@189@01))
(assert ($Perm.isReadVar $k@190@01))
(assert ($Perm.isReadVar $k@191@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 k@179@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@184@01))
(assert ($Perm.isReadVar $k@185@01))
(assert ($Perm.isReadVar $k@186@01))
(assert ($Perm.isReadVar $k@187@01))
(assert ($Perm.isReadVar $k@188@01))
(assert ($Perm.isReadVar $k@189@01))
(assert ($Perm.isReadVar $k@190@01))
(assert ($Perm.isReadVar $k@191@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
          $Snap.unit))) res@98@01 k@179@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
          $Snap.unit))) res@98@01 k@179@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 27 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, k@179@01) && k@179@01 != str___create__(_, 1, 99))]
(assert (not
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
    (not (= k@179@01 (str___create__ $Snap.unit 1 99))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@182@01))
(assert ($Perm.isReadVar $k@183@01))
(assert ($Perm.isReadVar $k@184@01))
(assert ($Perm.isReadVar $k@185@01))
(assert ($Perm.isReadVar $k@186@01))
(assert ($Perm.isReadVar $k@187@01))
(assert ($Perm.isReadVar $k@188@01))
(assert ($Perm.isReadVar $k@189@01))
(assert ($Perm.isReadVar $k@190@01))
(assert ($Perm.isReadVar $k@191@01))
(assert (=>
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
    (not (= k@179@01 (str___create__ $Snap.unit 1 99))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
    (not (= k@179@01 (str___create__ $Snap.unit 1 99)))
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
              $Snap.unit))) res@98@01 k@179@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
              $Snap.unit))) res@98@01 k@179@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
      (not (= k@179@01 (str___create__ $Snap.unit 1 99)))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
    (not (= k@179@01 (str___create__ $Snap.unit 1 99))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@180@01))
(assert ($Perm.isReadVar $k@181@01))
(assert ($Perm.isReadVar $k@182@01))
(assert ($Perm.isReadVar $k@183@01))
(assert ($Perm.isReadVar $k@184@01))
(assert ($Perm.isReadVar $k@185@01))
(assert ($Perm.isReadVar $k@186@01))
(assert ($Perm.isReadVar $k@187@01))
(assert ($Perm.isReadVar $k@188@01))
(assert ($Perm.isReadVar $k@189@01))
(assert ($Perm.isReadVar $k@190@01))
(assert ($Perm.isReadVar $k@191@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@179@01 $Ref)) (!
  (and
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)))
    (=>
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
        (not (= k@179@01 (str___create__ $Snap.unit 1 99))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
        (not (= k@179@01 (str___create__ $Snap.unit 1 99)))
        (dict___contains__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                  $Snap.unit))) res@98@01 k@179@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                  $Snap.unit))) res@98@01 k@179@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)))))
    (or
      (not
        (and
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
          (not (= k@179@01 (str___create__ $Snap.unit 1 99)))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
        (not (= k@179@01 (str___create__ $Snap.unit 1 99))))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
        $Snap.unit))) res@98@01 k@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196-aux|)))
(assert (forall ((k@179@01 $Ref)) (!
  (=>
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 k@179@01)
      (not (= k@179@01 (str___create__ $Snap.unit 1 99))))
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) res@98@01 k@179@01)
      (=
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
              $Snap.unit))) res@98@01 k@179@01)
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
              $Snap.unit))) res@98@01 k@179@01))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
        $Snap.unit))) res@98@01 k@179@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))
  $Snap.unit))
; [eval] |dict___values__(self)| == old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@192@01 $Perm)
(assert ($Perm.isReadVar $k@192@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@192@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@193@01 $Perm)
(assert ($Perm.isReadVar $k@193@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@193@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@192@01))
(assert ($Perm.isReadVar $k@193@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01))
; [eval] old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(|dict___values__(self)|)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@194@01 $Perm)
(assert ($Perm.isReadVar $k@194@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@194@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@195@01 $Perm)
(assert ($Perm.isReadVar $k@195@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@195@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@194@01))
(assert ($Perm.isReadVar $k@195@01))
; [eval] (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@196@01 $Perm)
(assert ($Perm.isReadVar $k@196@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@196@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@197@01 $Perm)
(assert ($Perm.isReadVar $k@197@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@197@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@196@01))
(assert ($Perm.isReadVar $k@197@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99)) | dead]
; [else-branch: 29 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 29 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99)))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))
(assert (=
  (Seq_length
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01))
  (+
    (Seq_length
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01))
    1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { (k in dict___values__(self)) } (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self)))
(declare-const k@198@01 $Ref)
(push) ; 3
; [eval] (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self))
; [eval] k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] k == item
(push) ; 4
; [then-branch: 30 | k@198@01 == __prim__int___box__(_, 3) | live]
; [else-branch: 30 | k@198@01 != __prim__int___box__(_, 3) | live]
(push) ; 5
; [then-branch: 30 | k@198@01 == __prim__int___box__(_, 3)]
(assert (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
(pop) ; 5
(push) ; 5
; [else-branch: 30 | k@198@01 != __prim__int___box__(_, 3)]
(assert (not (= k@198@01 (__prim__int___box__ $Snap.unit 3))))
; [eval] (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] (k in old(dict___values__(self)))
; [eval] old(dict___values__(self))
; [eval] dict___values__(self)
(push) ; 6
(declare-const $k@199@01 $Perm)
(assert ($Perm.isReadVar $k@199@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@199@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@200@01 $Perm)
(assert ($Perm.isReadVar $k@200@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@200@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@199@01))
(assert ($Perm.isReadVar $k@200@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 31 | !(k@198@01 in dict___values__((First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01)))))), res@98@01)) | live]
; [else-branch: 31 | k@198@01 in dict___values__((First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01)))))), res@98@01) | live]
(push) ; 7
; [then-branch: 31 | !(k@198@01 in dict___values__((First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01)))))), res@98@01))]
(assert (not
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@198@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 31 | k@198@01 in dict___values__((First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01)))))), res@98@01)]
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
  k@198@01))
; [eval] !old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key))
; [eval] !old(dict___contains__(self, key))
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@201@01 $Perm)
(assert ($Perm.isReadVar $k@201@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@201@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@202@01 $Perm)
(assert ($Perm.isReadVar $k@202@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@202@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@201@01))
(assert ($Perm.isReadVar $k@202@01))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 32 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99))) | live]
; [else-branch: 32 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99)) | live]
(push) ; 9
; [then-branch: 32 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99)))]
(pop) ; 9
(push) ; 9
; [else-branch: 32 | dict___contains__((_, (First:(Second:(Second:(Second:($t@138@01)))), First:(Second:(Second:(Second:(Second:($t@138@01))))))), res@98@01, str___create__(_, 1, 99))]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
; [eval] k != old(dict___getitem__(self, key))
; [eval] old(dict___getitem__(self, key))
; [eval] dict___getitem__(self, key)
(push) ; 10
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@203@01 $Perm)
(assert ($Perm.isReadVar $k@203@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@203@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@204@01 $Perm)
(assert ($Perm.isReadVar $k@204@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@204@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@205@01 $Perm)
(assert ($Perm.isReadVar $k@205@01))
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@205@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const $k@206@01 $Perm)
(assert ($Perm.isReadVar $k@206@01))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@206@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
; Joined path conditions
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99)))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@203@01))
(assert ($Perm.isReadVar $k@204@01))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@203@01))
(assert ($Perm.isReadVar $k@204@01))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
          $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99)))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@201@01))
(assert ($Perm.isReadVar $k@202@01))
(assert ($Perm.isReadVar $k@203@01))
(assert ($Perm.isReadVar $k@204@01))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (=>
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@198@01)
  (and
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
      k@198@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
              $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))))))
(assert (or
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
    k@198@01)
  (not
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
      k@198@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@199@01))
(assert ($Perm.isReadVar $k@200@01))
(assert ($Perm.isReadVar $k@201@01))
(assert ($Perm.isReadVar $k@202@01))
(assert ($Perm.isReadVar $k@203@01))
(assert ($Perm.isReadVar $k@204@01))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert (=>
  (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
  (and
    (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
    (=>
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
        k@198@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
          k@198@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                  $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))))
    (or
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
        k@198@01)
      (not
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
          k@198@01))))))
(assert (or
  (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
  (= k@198@01 (__prim__int___box__ $Snap.unit 3))))
; [eval] (k in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 4
(declare-const $k@207@01 $Perm)
(assert ($Perm.isReadVar $k@207@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@207@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@208@01 $Perm)
(assert ($Perm.isReadVar $k@208@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@208@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@207@01))
(assert ($Perm.isReadVar $k@208@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@199@01))
(assert ($Perm.isReadVar $k@200@01))
(assert ($Perm.isReadVar $k@201@01))
(assert ($Perm.isReadVar $k@202@01))
(assert ($Perm.isReadVar $k@203@01))
(assert ($Perm.isReadVar $k@204@01))
(assert ($Perm.isReadVar $k@205@01))
(assert ($Perm.isReadVar $k@206@01))
(assert ($Perm.isReadVar $k@207@01))
(assert ($Perm.isReadVar $k@208@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@198@01 $Ref)) (!
  (and
    (=>
      (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
      (and
        (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
            k@198@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
              k@198@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
            k@198@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
              k@198@01)))))
    (or
      (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
      (= k@198@01 (__prim__int___box__ $Snap.unit 3))))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
    k@198@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
    k@198@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@198@01 $Ref)) (!
  (and
    (=>
      (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
      (and
        (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
            k@198@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
              k@198@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                      $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
            k@198@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
              k@198@01)))))
    (or
      (not (= k@198@01 (__prim__int___box__ $Snap.unit 3)))
      (= k@198@01 (__prim__int___box__ $Snap.unit 3))))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
    k@198@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@198@01 $Ref)) (!
  (=
    (or
      (= k@198@01 (__prim__int___box__ $Snap.unit 3))
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))) res@98@01)
          k@198@01)
        (or
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01))))))) res@98@01 (str___create__ $Snap.unit 1 99)))
          (not
            (=
              k@198@01
              (dict___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@138@01))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@138@01)))))
                    $Snap.unit))) res@98@01 (str___create__ $Snap.unit 1 99)))))))
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
      k@198@01))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
    k@198@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) res@98@01)
    k@198@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; a_2 := dict_0
; [exec]
; inhale _isDefined(3301217)
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 $Snap.unit))
; [eval] _isDefined(3301217)
(set-option :timeout 0)
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
; _cwl_159, keys_res := dict_keys(_cthread_159, _method_measures_159, _residue_159,
;   _checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@98@01 3301217))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit res@98@01 3301217))
; [eval] _cthread_34 != null
; [eval] Measure$check(_caller_measures_34, _cthread_34, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_34), Thread_0())
; [eval] typeof(_cthread_34)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) (dict<PyType> (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 0) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 1)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) (dict<PyType> (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 0) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 1))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Measure$check(_caller_measures_34, _cthread_34, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_34@210@01 $Perm)
(declare-const res@211@01 $Ref)
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 ($Snap.combine ($Snap.first $t@212@01) ($Snap.second $t@212@01))))
(assert (= ($Snap.first $t@212@01) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseBounded] :: Level(_r_28) <= _current_wait_level_34)
(assert (=
  ($Snap.second $t@212@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@212@01))
    ($Snap.second ($Snap.second $t@212@01)))))
(assert (= ($Snap.first ($Snap.second $t@212@01)) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseUnbounded] :: Level(_r_28) <= _current_wait_level_34)
(assert (=
  ($Snap.second ($Snap.second $t@212@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@212@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@212@01))) $Snap.unit))
; [eval] _residue_34 <= _current_wait_level_34
(assert (<= _residue_159@83@01 _current_wait_level_34@210@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@212@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@212@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01)))))))))
(assert (not (= res@211@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))
  $Snap.unit))
; [eval] res.set_acc == self.dict_acc
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@212@01))))))) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; keys := keys_res
; [exec]
; inhale _isDefined(1937335659)
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 $Snap.unit))
; [eval] _isDefined(1937335659)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 1937335659))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 1937335659))
(assert (_isDefined $Snap.unit 1937335659))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_159 := dict___setitem__(_cthread_159, _method_measures_159, _residue_159,
;   _checkDefined(a_2, 3301217), str___create__(1, 100), __prim__int___box__(4))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] str___create__(1, 100)
(push) ; 3
(assert (str___create__%precondition $Snap.unit 1 100))
(pop) ; 3
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 1 100))
; [eval] __prim__int___box__(4)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 4))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 4))
; [eval] _cthread_35 != null
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_35), Thread_0())
; [eval] typeof(_cthread_35)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] issubtype(typeof(item), dict_arg(typeof(self), 1))
; [eval] typeof(item)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 4)) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 1)))
; [eval] issubtype(typeof(key), dict_arg(typeof(self), 0))
; [eval] typeof(key)
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 100)) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 0))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 1 100)) (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 0)))
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_35@214@01 $Perm)
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 ($Snap.combine ($Snap.first $t@215@01) ($Snap.second $t@215@01))))
(assert (= ($Snap.first $t@215@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second $t@215@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@215@01))
    ($Snap.second ($Snap.second $t@215@01)))))
(assert (= ($Snap.first ($Snap.second $t@215@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second ($Snap.second $t@215@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@215@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@215@01))) $Snap.unit))
; [eval] _residue_35 <= _current_wait_level_35
(assert (<= _residue_159@83@01 _current_wait_level_35@214@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@215@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
(assert (not (= (_checkDefined $Snap.unit res@98@01 3301217) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
  $Snap.unit))
; [eval] self.dict_acc == (old(self.dict_acc) union Set(key))
; [eval] (old(self.dict_acc) union Set(key))
; [eval] old(self.dict_acc)
(push) ; 3
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Set(key)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))) (Set_singleton (str___create__ $Snap.unit 1 100)))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
  $Snap.unit))
; [eval] dict___getitem__(self, key) == item
; [eval] dict___getitem__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@216@01 $Perm)
(assert ($Perm.isReadVar $k@216@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@216@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@217@01 $Perm)
(assert ($Perm.isReadVar $k@217@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@217@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@218@01 $Perm)
(assert ($Perm.isReadVar $k@218@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@218@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@219@01 $Perm)
(assert ($Perm.isReadVar $k@219@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@219@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@218@01))
(assert ($Perm.isReadVar $k@219@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(set-option :timeout 0)
(push) ; 4
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@216@01))
(assert ($Perm.isReadVar $k@217@01))
(assert ($Perm.isReadVar $k@218@01))
(assert ($Perm.isReadVar $k@219@01))
(assert (and
  (dict___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
  (dict___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
        $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
(assert (=
  (dict___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
        $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
  (__prim__int___box__ $Snap.unit 4)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { dict___getitem__(self, k) } old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k)))
(declare-const k@220@01 $Ref)
(push) ; 3
; [eval] old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] old(dict___contains__(self, k)) && k != key
; [eval] old(dict___contains__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@221@01 $Perm)
(assert ($Perm.isReadVar $k@221@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@221@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@222@01 $Perm)
(assert ($Perm.isReadVar $k@222@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@222@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@221@01))
(assert ($Perm.isReadVar $k@222@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 33 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01)) | live]
; [else-branch: 33 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) | live]
(push) ; 5
; [then-branch: 33 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 33 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
; [eval] k != key
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))))
(push) ; 4
; [then-branch: 34 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) && k@220@01 != str___create__(_, 1, 100) | live]
; [else-branch: 34 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) && k@220@01 != str___create__(_, 1, 100)) | live]
(push) ; 5
; [then-branch: 34 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) && k@220@01 != str___create__(_, 1, 100)]
(assert (and
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
  (not (= k@220@01 (str___create__ $Snap.unit 1 100)))))
; [eval] dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 6
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@223@01 $Perm)
(assert ($Perm.isReadVar $k@223@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@223@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@224@01 $Perm)
(assert ($Perm.isReadVar $k@224@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@224@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@223@01))
(assert ($Perm.isReadVar $k@224@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 35 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@215@01)))), First:(Second:(Second:(Second:(Second:($t@215@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01)) | live]
; [else-branch: 35 | dict___contains__((_, (First:(Second:(Second:(Second:($t@215@01)))), First:(Second:(Second:(Second:(Second:($t@215@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) | live]
(push) ; 7
; [then-branch: 35 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@215@01)))), First:(Second:(Second:(Second:(Second:($t@215@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 35 | dict___contains__((_, (First:(Second:(Second:(Second:($t@215@01)))), First:(Second:(Second:(Second:(Second:($t@215@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
; [eval] dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@225@01 $Perm)
(assert ($Perm.isReadVar $k@225@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@225@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@226@01 $Perm)
(assert ($Perm.isReadVar $k@226@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@226@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@227@01 $Perm)
(assert ($Perm.isReadVar $k@227@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@227@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@228@01 $Perm)
(assert ($Perm.isReadVar $k@228@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@228@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@227@01))
(assert ($Perm.isReadVar $k@228@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@225@01))
(assert ($Perm.isReadVar $k@226@01))
(assert ($Perm.isReadVar $k@227@01))
(assert ($Perm.isReadVar $k@228@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
; [eval] old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@229@01 $Perm)
(assert ($Perm.isReadVar $k@229@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@229@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@230@01 $Perm)
(assert ($Perm.isReadVar $k@230@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@230@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@231@01 $Perm)
(assert ($Perm.isReadVar $k@231@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@231@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@232@01 $Perm)
(assert ($Perm.isReadVar $k@232@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@232@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@231@01))
(assert ($Perm.isReadVar $k@232@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@229@01))
(assert ($Perm.isReadVar $k@230@01))
(assert ($Perm.isReadVar $k@231@01))
(assert ($Perm.isReadVar $k@232@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@225@01))
(assert ($Perm.isReadVar $k@226@01))
(assert ($Perm.isReadVar $k@227@01))
(assert ($Perm.isReadVar $k@228@01))
(assert ($Perm.isReadVar $k@229@01))
(assert ($Perm.isReadVar $k@230@01))
(assert ($Perm.isReadVar $k@231@01))
(assert ($Perm.isReadVar $k@232@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
          $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
          $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 34 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), k@220@01) && k@220@01 != str___create__(_, 1, 100))]
(assert (not
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (not (= k@220@01 (str___create__ $Snap.unit 1 100))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@223@01))
(assert ($Perm.isReadVar $k@224@01))
(assert ($Perm.isReadVar $k@225@01))
(assert ($Perm.isReadVar $k@226@01))
(assert ($Perm.isReadVar $k@227@01))
(assert ($Perm.isReadVar $k@228@01))
(assert ($Perm.isReadVar $k@229@01))
(assert ($Perm.isReadVar $k@230@01))
(assert ($Perm.isReadVar $k@231@01))
(assert ($Perm.isReadVar $k@232@01))
(assert (=>
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (not (= k@220@01 (str___create__ $Snap.unit 1 100))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (not (= k@220@01 (str___create__ $Snap.unit 1 100)))
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
              $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
              $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (not (= k@220@01 (str___create__ $Snap.unit 1 100)))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (not (= k@220@01 (str___create__ $Snap.unit 1 100))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@221@01))
(assert ($Perm.isReadVar $k@222@01))
(assert ($Perm.isReadVar $k@223@01))
(assert ($Perm.isReadVar $k@224@01))
(assert ($Perm.isReadVar $k@225@01))
(assert ($Perm.isReadVar $k@226@01))
(assert ($Perm.isReadVar $k@227@01))
(assert ($Perm.isReadVar $k@228@01))
(assert ($Perm.isReadVar $k@229@01))
(assert ($Perm.isReadVar $k@230@01))
(assert ($Perm.isReadVar $k@231@01))
(assert ($Perm.isReadVar $k@232@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@220@01 $Ref)) (!
  (and
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))
    (=>
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (not (= k@220@01 (str___create__ $Snap.unit 1 100))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (not (= k@220@01 (str___create__ $Snap.unit 1 100)))
        (dict___contains__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)))))
    (or
      (not
        (and
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
          (not (= k@220@01 (str___create__ $Snap.unit 1 100)))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (not (= k@220@01 (str___create__ $Snap.unit 1 100))))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
        $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196-aux|)))
(assert (forall ((k@220@01 $Ref)) (!
  (=>
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (not (= k@220@01 (str___create__ $Snap.unit 1 100))))
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
      (=
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
              $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01)
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
              $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
        $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) k@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
  $Snap.unit))
; [eval] |dict___values__(self)| == old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@233@01 $Perm)
(assert ($Perm.isReadVar $k@233@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@233@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@234@01 $Perm)
(assert ($Perm.isReadVar $k@234@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@234@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@233@01))
(assert ($Perm.isReadVar $k@234@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
; [eval] old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(|dict___values__(self)|)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@235@01 $Perm)
(assert ($Perm.isReadVar $k@235@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@235@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@236@01 $Perm)
(assert ($Perm.isReadVar $k@236@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@236@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@235@01))
(assert ($Perm.isReadVar $k@236@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
; [eval] (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@237@01 $Perm)
(assert ($Perm.isReadVar $k@237@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@237@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@238@01 $Perm)
(assert ($Perm.isReadVar $k@238@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@238@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@237@01))
(assert ($Perm.isReadVar $k@238@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100)) | dead]
; [else-branch: 36 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100))) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 36 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100)))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
(assert (=
  (Seq_length
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
  (+
    (Seq_length
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217)))
    1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { (k in dict___values__(self)) } (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self)))
(declare-const k@239@01 $Ref)
(push) ; 3
; [eval] (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self))
; [eval] k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] k == item
(push) ; 4
; [then-branch: 37 | k@239@01 == __prim__int___box__(_, 4) | live]
; [else-branch: 37 | k@239@01 != __prim__int___box__(_, 4) | live]
(push) ; 5
; [then-branch: 37 | k@239@01 == __prim__int___box__(_, 4)]
(assert (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
(pop) ; 5
(push) ; 5
; [else-branch: 37 | k@239@01 != __prim__int___box__(_, 4)]
(assert (not (= k@239@01 (__prim__int___box__ $Snap.unit 4))))
; [eval] (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] (k in old(dict___values__(self)))
; [eval] old(dict___values__(self))
; [eval] dict___values__(self)
(push) ; 6
(declare-const $k@240@01 $Perm)
(assert ($Perm.isReadVar $k@240@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@240@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@241@01 $Perm)
(assert ($Perm.isReadVar $k@241@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@241@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@240@01))
(assert ($Perm.isReadVar $k@241@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 38 | !(k@239@01 in dict___values__((First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01)))))), _checkDefined(_, res@98@01, 3301217))) | live]
; [else-branch: 38 | k@239@01 in dict___values__((First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01)))))), _checkDefined(_, res@98@01, 3301217)) | live]
(push) ; 7
; [then-branch: 38 | !(k@239@01 in dict___values__((First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01)))))), _checkDefined(_, res@98@01, 3301217)))]
(assert (not
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 38 | k@239@01 in dict___values__((First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01)))))), _checkDefined(_, res@98@01, 3301217))]
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
  k@239@01))
; [eval] !old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key))
; [eval] !old(dict___contains__(self, key))
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@242@01 $Perm)
(assert ($Perm.isReadVar $k@242@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@242@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@243@01 $Perm)
(assert ($Perm.isReadVar $k@243@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@243@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@242@01))
(assert ($Perm.isReadVar $k@243@01))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 39 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100))) | live]
; [else-branch: 39 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100)) | live]
(push) ; 9
; [then-branch: 39 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100)))]
(pop) ; 9
(push) ; 9
; [else-branch: 39 | dict___contains__((_, (First:(Second:(Second:(Second:($t@174@01)))), First:(Second:(Second:(Second:(Second:($t@174@01))))))), _checkDefined(_, res@98@01, 3301217), str___create__(_, 1, 100))]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
; [eval] k != old(dict___getitem__(self, key))
; [eval] old(dict___getitem__(self, key))
; [eval] dict___getitem__(self, key)
(push) ; 10
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@244@01 $Perm)
(assert ($Perm.isReadVar $k@244@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@244@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@245@01 $Perm)
(assert ($Perm.isReadVar $k@245@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@245@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@246@01 $Perm)
(assert ($Perm.isReadVar $k@246@01))
(push) ; 12
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@246@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const $k@247@01 $Perm)
(assert ($Perm.isReadVar $k@247@01))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (= res@98@01 (_checkDefined $Snap.unit res@98@01 3301217))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@247@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
; Joined path conditions
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@244@01))
(assert ($Perm.isReadVar $k@245@01))
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@244@01))
(assert ($Perm.isReadVar $k@245@01))
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
          $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@242@01))
(assert ($Perm.isReadVar $k@243@01))
(assert ($Perm.isReadVar $k@244@01))
(assert ($Perm.isReadVar $k@245@01))
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert (=>
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01)
  (and
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
      k@239@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
              $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))))))
(assert (or
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01)
  (not
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
      k@239@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@240@01))
(assert ($Perm.isReadVar $k@241@01))
(assert ($Perm.isReadVar $k@242@01))
(assert ($Perm.isReadVar $k@243@01))
(assert ($Perm.isReadVar $k@244@01))
(assert ($Perm.isReadVar $k@245@01))
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert (=>
  (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
  (and
    (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
    (=>
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
        k@239@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
          k@239@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                  $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))))
    (or
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
        k@239@01)
      (not
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
          k@239@01))))))
(assert (or
  (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
  (= k@239@01 (__prim__int___box__ $Snap.unit 4))))
; [eval] (k in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 4
(declare-const $k@248@01 $Perm)
(assert ($Perm.isReadVar $k@248@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@248@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@249@01 $Perm)
(assert ($Perm.isReadVar $k@249@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@249@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@248@01))
(assert ($Perm.isReadVar $k@249@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@240@01))
(assert ($Perm.isReadVar $k@241@01))
(assert ($Perm.isReadVar $k@242@01))
(assert ($Perm.isReadVar $k@243@01))
(assert ($Perm.isReadVar $k@244@01))
(assert ($Perm.isReadVar $k@245@01))
(assert ($Perm.isReadVar $k@246@01))
(assert ($Perm.isReadVar $k@247@01))
(assert ($Perm.isReadVar $k@248@01))
(assert ($Perm.isReadVar $k@249@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@239@01 $Ref)) (!
  (and
    (=>
      (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
      (and
        (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
            k@239@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
              k@239@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
            k@239@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
              k@239@01)))))
    (or
      (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
      (= k@239@01 (__prim__int___box__ $Snap.unit 4))))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@239@01 $Ref)) (!
  (and
    (=>
      (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
      (and
        (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
            k@239@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
              k@239@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                      $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100))))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
            k@239@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
              k@239@01)))))
    (or
      (not (= k@239@01 (__prim__int___box__ $Snap.unit 4)))
      (= k@239@01 (__prim__int___box__ $Snap.unit 4))))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@239@01 $Ref)) (!
  (=
    (or
      (= k@239@01 (__prim__int___box__ $Snap.unit 4))
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
          k@239@01)
        (or
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01))))))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))
          (not
            (=
              k@239@01
              (dict___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@174@01))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@174@01)))))
                    $Snap.unit))) (_checkDefined $Snap.unit res@98@01 3301217) (str___create__ $Snap.unit 1 100)))))))
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
      k@239@01))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))
    k@239@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_159, values_res := dict_values(_cthread_159, _method_measures_159, _residue_159,
;   _checkDefined(a_2, 3301217))
; [eval] _checkDefined(a_2, 3301217)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(pop) ; 3
; Joined path conditions
; [eval] _cthread_37 != null
; [eval] Measure$check(_caller_measures_37, _cthread_37, 1)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] issubtype(typeof(_cthread_37), Thread_0())
; [eval] typeof(_cthread_37)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] Measure$check(_caller_measures_37, _cthread_37, 1)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(declare-const _current_wait_level_37@250@01 $Perm)
(declare-const _res@251@01 $Ref)
(declare-const $t@252@01 $Snap)
(assert (= $t@252@01 ($Snap.combine ($Snap.first $t@252@01) ($Snap.second $t@252@01))))
(assert (= ($Snap.first $t@252@01) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseBounded] :: Level(_r_32) <= _current_wait_level_37)
(assert (=
  ($Snap.second $t@252@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@252@01))
    ($Snap.second ($Snap.second $t@252@01)))))
(assert (= ($Snap.first ($Snap.second $t@252@01)) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseUnbounded] :: Level(_r_32) <= _current_wait_level_37)
(assert (=
  ($Snap.second ($Snap.second $t@252@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@252@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@252@01))) $Snap.unit))
; [eval] _residue_37 <= _current_wait_level_37
(assert (<= _residue_159@83@01 _current_wait_level_37@250@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@252@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@252@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))
  $Snap.unit))
; [eval] self.dict_acc == old(self.dict_acc)
; [eval] old(self.dict_acc)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))
  $Snap.unit))
; [eval] typeof(_res) == list(dict_arg(typeof(self), 1))
; [eval] typeof(_res)
; [eval] list(dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (=
  (typeof<PyType> _res@251@01)
  (list<PyType> (dict_arg<PyType> (typeof<PyType> (_checkDefined $Snap.unit res@98@01 3301217)) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))))))
(assert (not (= _res@251@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01))))))))
  $Snap.unit))
; [eval] _res.list_acc == dict___values__(self)
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@253@01 $Perm)
(assert ($Perm.isReadVar $k@253@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@253@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@254@01 $Perm)
(assert ($Perm.isReadVar $k@254@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@254@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@253@01))
(assert ($Perm.isReadVar $k@254@01))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@252@01)))))))))
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))) (_checkDefined $Snap.unit res@98@01 3301217))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; values := values_res
; [exec]
; inhale _isDefined(126879598928246)
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 $Snap.unit))
; [eval] _isDefined(126879598928246)
(set-option :timeout 0)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 126879598928246))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 126879598928246))
(assert (_isDefined $Snap.unit 126879598928246))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label __end
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_160@256@01 $Ref)
(declare-const _caller_measures_160@257@01 Seq<Measure$>)
(declare-const _residue_160@258@01 $Perm)
(declare-const _current_wait_level_160@259@01 $Perm)
(declare-const _cthread_160@260@01 $Ref)
(declare-const _caller_measures_160@261@01 Seq<Measure$>)
(declare-const _residue_160@262@01 $Perm)
(declare-const _current_wait_level_160@263@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 ($Snap.combine ($Snap.first $t@264@01) ($Snap.second $t@264@01))))
(assert (= ($Snap.first $t@264@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@260@01 $Ref.null)))
(assert (=
  ($Snap.second $t@264@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@264@01))
    ($Snap.second ($Snap.second $t@264@01)))))
(assert (= ($Snap.first ($Snap.second $t@264@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@260@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@264@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@265@01 $Snap)
(assert (= $t@265@01 ($Snap.combine ($Snap.first $t@265@01) ($Snap.second $t@265@01))))
(assert (= ($Snap.first $t@265@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@265@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@265@01))
    ($Snap.second ($Snap.second $t@265@01)))))
(assert (= ($Snap.first ($Snap.second $t@265@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@265@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@265@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@265@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@265@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@262@01 _current_wait_level_160@263@01))
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
; module_names_0 := (module_names_0 union Set(_single(6872323072689856351)))
; [eval] (module_names_0 union Set(_single(6872323072689856351)))
; [eval] Set(_single(6872323072689856351))
; [eval] _single(6872323072689856351)
(declare-const module_names_0@270@01 Set<_Name>)
(assert (=
  module_names_0@270@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
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
; module_names_0 := (module_names_0 union Set(_single(6872323076851130207)))
; [eval] (module_names_0 union Set(_single(6872323076851130207)))
; [eval] Set(_single(6872323076851130207))
; [eval] _single(6872323076851130207)
(declare-const module_names_0@272@01 Set<_Name>)
(assert (=
  module_names_0@272@01
  (Set_union module_names_0@270@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@273@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(128034677158721)))
; [eval] (module_names_0 union Set(_single(128034677158721)))
; [eval] Set(_single(128034677158721))
; [eval] _single(128034677158721)
(declare-const module_names_0@274@01 Set<_Name>)
(assert (=
  module_names_0@274@01
  (Set_union module_names_0@272@01 (Set_singleton (_single<_Name> 128034677158721)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8315178084276987218)))
; [eval] (module_names_0 union Set(_single(8315178084276987218)))
; [eval] Set(_single(8315178084276987218))
; [eval] _single(8315178084276987218)
(declare-const module_names_0@275@01 Set<_Name>)
(assert (=
  module_names_0@275@01
  (Set_union module_names_0@274@01 (Set_singleton (_single<_Name> 8315178084276987218)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2147776066907203333705)))
; [eval] (module_names_0 union Set(_single(2147776066907203333705)))
; [eval] Set(_single(2147776066907203333705))
; [eval] _single(2147776066907203333705)
(declare-const module_names_0@276@01 Set<_Name>)
(assert (=
  module_names_0@276@01
  (Set_union module_names_0@275@01 (Set_singleton (_single<_Name> 2147776066907203333705)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(32481125787004233)))
; [eval] (module_names_0 union Set(_single(32481125787004233)))
; [eval] Set(_single(32481125787004233))
; [eval] _single(32481125787004233)
(declare-const module_names_0@277@01 Set<_Name>)
(assert (=
  module_names_0@277@01
  (Set_union module_names_0@276@01 (Set_singleton (_single<_Name> 32481125787004233)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7738150958662902082)))
; [eval] (module_names_0 union Set(_single(7738150958662902082)))
; [eval] Set(_single(7738150958662902082))
; [eval] _single(7738150958662902082)
(declare-const module_names_0@278@01 Set<_Name>)
(assert (=
  module_names_0@278@01
  (Set_union module_names_0@277@01 (Set_singleton (_single<_Name> 7738150958662902082)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2148138609894455731572)))
; [eval] (module_names_0 union Set(_single(2148138609894455731572)))
; [eval] Set(_single(2148138609894455731572))
; [eval] _single(2148138609894455731572)
(declare-const module_names_0@279@01 Set<_Name>)
(assert (=
  module_names_0@279@01
  (Set_union module_names_0@278@01 (Set_singleton (_single<_Name> 2148138609894455731572)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(238266462753376716416372)))
; [eval] (module_names_0 union Set(_single(238266462753376716416372)))
; [eval] Set(_single(238266462753376716416372))
; [eval] _single(238266462753376716416372)
(declare-const module_names_0@280@01 Set<_Name>)
(assert (=
  module_names_0@280@01
  (Set_union module_names_0@279@01 (Set_singleton (_single<_Name> 238266462753376716416372)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8387236734860223860)))
; [eval] (module_names_0 union Set(_single(8387236734860223860)))
; [eval] Set(_single(8387236734860223860))
; [eval] _single(8387236734860223860)
(declare-const module_names_0@281@01 Set<_Name>)
(assert (=
  module_names_0@281@01
  (Set_union module_names_0@280@01 (Set_singleton (_single<_Name> 8387236734860223860)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2146985679593755862388)))
; [eval] (module_names_0 union Set(_single(2146985679593755862388)))
; [eval] Set(_single(2146985679593755862388))
; [eval] _single(2146985679593755862388)
(declare-const module_names_0@282@01 Set<_Name>)
(assert (=
  module_names_0@282@01
  (Set_union module_names_0@281@01 (Set_singleton (_single<_Name> 2146985679593755862388)))))
; [exec]
; label __end
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- list___init__ ----------
(declare-const _cthread_8@283@01 $Ref)
(declare-const _caller_measures_8@284@01 Seq<Measure$>)
(declare-const _residue_8@285@01 $Perm)
(declare-const _current_wait_level_8@286@01 $Perm)
(declare-const res@287@01 $Ref)
(declare-const _cthread_8@288@01 $Ref)
(declare-const _caller_measures_8@289@01 Seq<Measure$>)
(declare-const _residue_8@290@01 $Perm)
(declare-const _current_wait_level_8@291@01 $Perm)
(declare-const res@292@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@293@01 $Snap)
(assert (= $t@293@01 ($Snap.combine ($Snap.first $t@293@01) ($Snap.second $t@293@01))))
(assert (= ($Snap.first $t@293@01) $Snap.unit))
; [eval] _cthread_8 != null
(assert (not (= _cthread_8@288@01 $Ref.null)))
(assert (=
  ($Snap.second $t@293@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@293@01))
    ($Snap.second ($Snap.second $t@293@01)))))
(assert (= ($Snap.first ($Snap.second $t@293@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_8, _cthread_8, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@289@01 _cthread_8@288@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_8@289@01 _cthread_8@288@01 1))
(assert (Measure$check $Snap.unit _caller_measures_8@289@01 _cthread_8@288@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@293@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@293@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@293@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@293@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_8), Thread_0())
; [eval] typeof(_cthread_8)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_8@288@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@293@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 ($Snap.combine ($Snap.first $t@294@01) ($Snap.second $t@294@01))))
(assert (= ($Snap.first $t@294@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_8)
(assert (=
  ($Snap.second $t@294@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@294@01))
    ($Snap.second ($Snap.second $t@294@01)))))
(assert (= ($Snap.first ($Snap.second $t@294@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_8)
(assert (=
  ($Snap.second ($Snap.second $t@294@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@294@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@294@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@294@01))) $Snap.unit))
; [eval] _residue_8 <= _current_wait_level_8
(assert (<= _residue_8@290@01 _current_wait_level_8@291@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@294@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@294@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))))
(assert (not (= res@292@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))
  $Snap.unit))
; [eval] res.list_acc == Seq[Ref]()
; [eval] Seq[Ref]()
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))
  (as Seq_empty  Seq<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01))))))
  $Snap.unit))
; [eval] typeof(res) == list(list_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] list(list_arg(typeof(res), 0))
; [eval] list_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@292@01)
  (list<PyType> (list_arg<PyType> (typeof<PyType> res@292@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@294@01))))))
  $Snap.unit))
; [eval] (Low(res): Bool)
(assert (Low<Bool> res@292@01))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_8: Perm
(declare-const _cwl_8@295@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- list___setitem__ ----------
(declare-const _cthread_12@296@01 $Ref)
(declare-const _caller_measures_12@297@01 Seq<Measure$>)
(declare-const _residue_12@298@01 $Perm)
(declare-const self@299@01 $Ref)
(declare-const key@300@01 Int)
(declare-const item@301@01 $Ref)
(declare-const _current_wait_level_12@302@01 $Perm)
(declare-const _cthread_12@303@01 $Ref)
(declare-const _caller_measures_12@304@01 Seq<Measure$>)
(declare-const _residue_12@305@01 $Perm)
(declare-const self@306@01 $Ref)
(declare-const key@307@01 Int)
(declare-const item@308@01 $Ref)
(declare-const _current_wait_level_12@309@01 $Perm)
(push) ; 1
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 ($Snap.combine ($Snap.first $t@310@01) ($Snap.second $t@310@01))))
(assert (= ($Snap.first $t@310@01) $Snap.unit))
; [eval] _cthread_12 != null
(assert (not (= _cthread_12@303@01 $Ref.null)))
(assert (=
  ($Snap.second $t@310@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@310@01))
    ($Snap.second ($Snap.second $t@310@01)))))
(assert (= ($Snap.first ($Snap.second $t@310@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_12, _cthread_12, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_12@304@01 _cthread_12@303@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_12@304@01 _cthread_12@303@01 1))
(assert (Measure$check $Snap.unit _caller_measures_12@304@01 _cthread_12@303@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@310@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@310@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@310@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_12), Thread_0())
; [eval] typeof(_cthread_12)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_12@303@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@310@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@310@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@310@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@306@01) (list<PyType> (list_arg<PyType> (typeof<PyType> self@306@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))
(assert (not (= self@306@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
  $Snap.unit))
; [eval] key >= 0
(assert (>= key@307@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))
  $Snap.unit))
; [eval] key < list___len__(self)
; [eval] list___len__(self)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@311@01 $Perm)
(assert ($Perm.isReadVar $k@311@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@311@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@311@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
(assert (<
  key@307@01
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(item), list_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> item@308@01) (list_arg<PyType> (typeof<PyType> self@306@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 ($Snap.combine ($Snap.first $t@312@01) ($Snap.second $t@312@01))))
(assert (= ($Snap.first $t@312@01) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _current_wait_level_12)
(assert (=
  ($Snap.second $t@312@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@312@01))
    ($Snap.second ($Snap.second $t@312@01)))))
(assert (= ($Snap.first ($Snap.second $t@312@01)) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _current_wait_level_12)
(assert (=
  ($Snap.second ($Snap.second $t@312@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@312@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@312@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@312@01))) $Snap.unit))
; [eval] _residue_12 <= _current_wait_level_12
(assert (<= _residue_12@305@01 _current_wait_level_12@309@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@312@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01)))))
  $Snap.unit))
; [eval] self.list_acc == old(self.list_acc)[key := item]
; [eval] old(self.list_acc)[key := item]
; [eval] old(self.list_acc)
(push) ; 3
(assert (not (<
  key@307@01
  (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01)))))
  (Seq_append
    (Seq_take
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
      key@307@01)
    (Seq_append
      (Seq_singleton item@308@01)
      (Seq_drop
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01))))))
        (+ key@307@01 1))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@312@01)))))
  $Snap.unit))
; [eval] (Low(key): Bool) && (Low(item): Bool) ==> (forall i: Ref :: { list___getitem__(self, i) } issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool))
; [eval] (Low(key): Bool) && (Low(item): Bool)
; [eval] (Low(key): Bool)
(push) ; 3
; [then-branch: 40 | !(Low[Bool](key@307@01)) | live]
; [else-branch: 40 | Low[Bool](key@307@01) | live]
(push) ; 4
; [then-branch: 40 | !(Low[Bool](key@307@01))]
(assert (not (Low<Bool> key@307@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 40 | Low[Bool](key@307@01)]
(assert (Low<Bool> key@307@01))
; [eval] (Low(item): Bool)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (Low<Bool> key@307@01) (not (Low<Bool> key@307@01))))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and (Low<Bool> key@307@01) (Low<Bool> item@308@01)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and (Low<Bool> key@307@01) (Low<Bool> item@308@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | Low[Bool](key@307@01) && Low[Bool](item@308@01) | live]
; [else-branch: 41 | !(Low[Bool](key@307@01) && Low[Bool](item@308@01)) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 41 | Low[Bool](key@307@01) && Low[Bool](item@308@01)]
(assert (and (Low<Bool> key@307@01) (Low<Bool> item@308@01)))
; [eval] (forall i: Ref :: { list___getitem__(self, i) } issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool))
(declare-const i@313@01 $Ref)
(push) ; 5
; [eval] issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool))) ==> (Low(list___getitem__(self, i)): Bool)
; [eval] issubtype(typeof(i), int()) && (int___unbox__(i) >= 0 && (int___unbox__(i) < list___len__(self) && (Low(old(list___getitem__(self, i))): Bool)))
; [eval] issubtype(typeof(i), int())
; [eval] typeof(i)
; [eval] int()
(push) ; 6
; [then-branch: 42 | !(issubtype[Bool](typeof[PyType](i@313@01), int[PyType])) | live]
; [else-branch: 42 | issubtype[Bool](typeof[PyType](i@313@01), int[PyType]) | live]
(push) ; 7
; [then-branch: 42 | !(issubtype[Bool](typeof[PyType](i@313@01), int[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))))
(pop) ; 7
(push) ; 7
; [else-branch: 42 | issubtype[Bool](typeof[PyType](i@313@01), int[PyType])]
(assert (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType)))
; [eval] int___unbox__(i) >= 0
; [eval] int___unbox__(i)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i@313@01))
(pop) ; 8
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i@313@01))
(push) ; 8
; [then-branch: 43 | !(int___unbox__(_, i@313@01) >= 0) | live]
; [else-branch: 43 | int___unbox__(_, i@313@01) >= 0 | live]
(push) ; 9
; [then-branch: 43 | !(int___unbox__(_, i@313@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 43 | int___unbox__(_, i@313@01) >= 0]
(assert (>= (int___unbox__ $Snap.unit i@313@01) 0))
; [eval] int___unbox__(i) < list___len__(self)
; [eval] int___unbox__(i)
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
; [eval] list___len__(self)
(push) ; 10
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@314@01 $Perm)
(assert ($Perm.isReadVar $k@314@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@314@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@314@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
(set-option :timeout 0)
(push) ; 10
; [then-branch: 44 | !(int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01)) | live]
; [else-branch: 44 | int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) | live]
(push) ; 11
; [then-branch: 44 | !(int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01))]
(assert (not
  (<
    (int___unbox__ $Snap.unit i@313@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 44 | int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01)]
(assert (<
  (int___unbox__ $Snap.unit i@313@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
; [eval] (Low(old(list___getitem__(self, i))): Bool)
; [eval] old(list___getitem__(self, i))
; [eval] list___getitem__(self, i)
(push) ; 12
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@315@01 $Perm)
(assert ($Perm.isReadVar $k@315@01))
(push) ; 13
(set-option :timeout 10)
(assert (not (< $Perm.No $k@315@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@316@01 $Perm)
(assert ($Perm.isReadVar $k@316@01))
(push) ; 14
(set-option :timeout 10)
(assert (not (< $Perm.No $k@316@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
; Joined path conditions
(assert ($Perm.isReadVar $k@316@01))
(declare-fun letvar@317@01 ($Ref) Int)
(assert (=
  (letvar@317@01 i@313@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(push) ; 13
; [then-branch: 45 | int___unbox__(_, i@313@01) < 0 | live]
; [else-branch: 45 | !(int___unbox__(_, i@313@01) < 0) | live]
(push) ; 14
; [then-branch: 45 | int___unbox__(_, i@313@01) < 0]
(assert (< (int___unbox__ $Snap.unit i@313@01) 0))
; [eval] int___unbox__(key) >= -ln
; [eval] int___unbox__(key)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 15
; Joined path conditions
; [eval] -ln
(pop) ; 14
(push) ; 14
; [else-branch: 45 | !(int___unbox__(_, i@313@01) < 0)]
(assert (not (< (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (int___unbox__ $Snap.unit i@313@01) 0))
  (< (int___unbox__ $Snap.unit i@313@01) 0)))
(push) ; 13
; [then-branch: 46 | !(int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:(Second:($t@310@01)))))), self@306@01)) | live]
; [else-branch: 46 | int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:(Second:($t@310@01)))))), self@306@01) | live]
(push) ; 14
; [then-branch: 46 | !(int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:(Second:($t@310@01)))))), self@306@01))]
(assert (not
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
(pop) ; 14
(push) ; 14
; [else-branch: 46 | int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:(Second:($t@310@01)))))), self@306@01)]
(assert (=>
  (< (int___unbox__ $Snap.unit i@313@01) 0)
  (>=
    (int___unbox__ $Snap.unit i@313@01)
    (-
      0
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))))
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 15
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 15
; Joined path conditions
(push) ; 15
; [then-branch: 47 | int___unbox__(_, i@313@01) >= 0 | live]
; [else-branch: 47 | !(int___unbox__(_, i@313@01) >= 0) | live]
(push) ; 16
; [then-branch: 47 | int___unbox__(_, i@313@01) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 17
; Joined path conditions
(pop) ; 16
(push) ; 16
; [else-branch: 47 | !(int___unbox__(_, i@313@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
  (>= (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
  (and
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
    (or
      (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
      (>= (int___unbox__ $Snap.unit i@313@01) 0)))))
(assert (or
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
  (not
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))))))
(push) ; 13
(assert (not (and
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
      $Snap.unit))) self@306@01 i@313@01))
(pop) ; 12
; Joined path conditions
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert (and
  (=
    (letvar@317@01 i@313@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
  (or
    (not (< (int___unbox__ $Snap.unit i@313@01) 0))
    (< (int___unbox__ $Snap.unit i@313@01) 0))
  (=>
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
    (and
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
      (or
        (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
        (>= (int___unbox__ $Snap.unit i@313@01) 0))))
  (or
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
    (not
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
        $Snap.unit))) self@306@01 i@313@01)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert (=>
  (<
    (int___unbox__ $Snap.unit i@313@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
  (and
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
    (=
      (letvar@317@01 i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
    (or
      (not (< (int___unbox__ $Snap.unit i@313@01) 0))
      (< (int___unbox__ $Snap.unit i@313@01) 0))
    (=>
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
      (and
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
        (or
          (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
          (>= (int___unbox__ $Snap.unit i@313@01) 0))))
    (or
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
      (not
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
    (=>
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (<
        (int___unbox__ $Snap.unit i@313@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
    (list___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
          $Snap.unit))) self@306@01 i@313@01))))
(assert (or
  (<
    (int___unbox__ $Snap.unit i@313@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
  (not
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@314@01))
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert (=>
  (>= (int___unbox__ $Snap.unit i@313@01) 0)
  (and
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (list___len__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
    (=>
      (<
        (int___unbox__ $Snap.unit i@313@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
      (and
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (=
          (letvar@317@01 i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
        (or
          (not (< (int___unbox__ $Snap.unit i@313@01) 0))
          (< (int___unbox__ $Snap.unit i@313@01) 0))
        (=>
          (=>
            (< (int___unbox__ $Snap.unit i@313@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@313@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
          (and
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
            (or
              (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
              (>= (int___unbox__ $Snap.unit i@313@01) 0))))
        (or
          (=>
            (< (int___unbox__ $Snap.unit i@313@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@313@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
          (not
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
        (=>
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (<
            (int___unbox__ $Snap.unit i@313@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
        (list___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
              $Snap.unit))) self@306@01 i@313@01)))
    (or
      (<
        (int___unbox__ $Snap.unit i@313@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
      (not
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))))))
(assert (or
  (>= (int___unbox__ $Snap.unit i@313@01) 0)
  (not (>= (int___unbox__ $Snap.unit i@313@01) 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@314@01))
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert (=>
  (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
  (and
    (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit i@313@01)
    (=>
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (and
        (>= (int___unbox__ $Snap.unit i@313@01) 0)
        (list___len__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
        (=>
          (<
            (int___unbox__ $Snap.unit i@313@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
          (and
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (=
              (letvar@317@01 i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
            (or
              (not (< (int___unbox__ $Snap.unit i@313@01) 0))
              (< (int___unbox__ $Snap.unit i@313@01) 0))
            (=>
              (=>
                (< (int___unbox__ $Snap.unit i@313@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@313@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
              (and
                (=>
                  (< (int___unbox__ $Snap.unit i@313@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@313@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                (or
                  (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
                  (>= (int___unbox__ $Snap.unit i@313@01) 0))))
            (or
              (=>
                (< (int___unbox__ $Snap.unit i@313@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@313@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
              (not
                (=>
                  (< (int___unbox__ $Snap.unit i@313@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@313@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
            (=>
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (<
                (int___unbox__ $Snap.unit i@313@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
            (list___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                  $Snap.unit))) self@306@01 i@313@01)))
        (or
          (<
            (int___unbox__ $Snap.unit i@313@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
          (not
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
    (or
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (not (>= (int___unbox__ $Snap.unit i@313@01) 0))))))
(assert (or
  (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
  (not (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType)))))
(push) ; 6
; [then-branch: 48 | issubtype[Bool](typeof[PyType](i@313@01), int[PyType]) && int___unbox__(_, i@313@01) >= 0 && int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:(Second:($t@310@01))))), _))), self@306@01, i@313@01)) | live]
; [else-branch: 48 | !(issubtype[Bool](typeof[PyType](i@313@01), int[PyType]) && int___unbox__(_, i@313@01) >= 0 && int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:(Second:($t@310@01))))), _))), self@306@01, i@313@01))) | live]
(push) ; 7
; [then-branch: 48 | issubtype[Bool](typeof[PyType](i@313@01), int[PyType]) && int___unbox__(_, i@313@01) >= 0 && int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:(Second:($t@310@01))))), _))), self@306@01, i@313@01))]
(assert (and
  (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
  (and
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (and
      (<
        (int___unbox__ $Snap.unit i@313@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
      (Low<Bool> (list___getitem__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
            $Snap.unit))) self@306@01 i@313@01))))))
; [eval] (Low(list___getitem__(self, i)): Bool)
; [eval] list___getitem__(self, i)
(push) ; 8
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@318@01 $Perm)
(assert ($Perm.isReadVar $k@318@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@318@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@319@01 $Perm)
(assert ($Perm.isReadVar $k@319@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@319@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@319@01))
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
(declare-fun letvar@320@01 ($Ref) Int)
(assert (=
  (letvar@320@01 i@313@01)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i@313@01))
(pop) ; 9
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i@313@01))
(push) ; 9
; [then-branch: 49 | int___unbox__(_, i@313@01) < 0 | live]
; [else-branch: 49 | !(int___unbox__(_, i@313@01) < 0) | live]
(push) ; 10
; [then-branch: 49 | int___unbox__(_, i@313@01) < 0]
(assert (< (int___unbox__ $Snap.unit i@313@01) 0))
; [eval] int___unbox__(key) >= -ln
; [eval] int___unbox__(key)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] -ln
(pop) ; 10
(push) ; 10
; [else-branch: 49 | !(int___unbox__(_, i@313@01) < 0)]
(assert (not (< (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (not (< (int___unbox__ $Snap.unit i@313@01) 0))
  (< (int___unbox__ $Snap.unit i@313@01) 0)))
(push) ; 9
; [then-branch: 50 | !(int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01)) | live]
; [else-branch: 50 | int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) | live]
(push) ; 10
; [then-branch: 50 | !(int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01))]
(assert (not
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
(pop) ; 10
(push) ; 10
; [else-branch: 50 | int___unbox__(_, i@313@01) < 0 ==> int___unbox__(_, i@313@01) >= 0 - list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01)]
(assert (=>
  (< (int___unbox__ $Snap.unit i@313@01) 0)
  (>=
    (int___unbox__ $Snap.unit i@313@01)
    (-
      0
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))))
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 51 | int___unbox__(_, i@313@01) >= 0 | live]
; [else-branch: 51 | !(int___unbox__(_, i@313@01) >= 0) | live]
(push) ; 12
; [then-branch: 51 | int___unbox__(_, i@313@01) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(pop) ; 12
(push) ; 12
; [else-branch: 51 | !(int___unbox__(_, i@313@01) >= 0)]
(assert (not (>= (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
  (>= (int___unbox__ $Snap.unit i@313@01) 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
  (and
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
    (or
      (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
      (>= (int___unbox__ $Snap.unit i@313@01) 0)))))
(assert (or
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
  (not
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))))))
(push) ; 9
(assert (not (and
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
      $Snap.unit))) self@306@01 i@313@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@318@01))
(assert ($Perm.isReadVar $k@319@01))
(assert (and
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
  (=
    (letvar@320@01 i@313@01)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
  (int___unbox__%precondition $Snap.unit i@313@01)
  (or
    (not (< (int___unbox__ $Snap.unit i@313@01) 0))
    (< (int___unbox__ $Snap.unit i@313@01) 0))
  (=>
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
    (and
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
      (or
        (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
        (>= (int___unbox__ $Snap.unit i@313@01) 0))))
  (or
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
    (not
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
  (=>
    (< (int___unbox__ $Snap.unit i@313@01) 0)
    (>=
      (int___unbox__ $Snap.unit i@313@01)
      (-
        0
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
  (=>
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
        $Snap.unit))) self@306@01 i@313@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 48 | !(issubtype[Bool](typeof[PyType](i@313@01), int[PyType]) && int___unbox__(_, i@313@01) >= 0 && int___unbox__(_, i@313@01) < list___len__((_, First:(Second:(Second:(Second:($t@312@01))))), self@306@01) && Low[Bool](list___getitem__((_, (_, (First:(Second:(Second:(Second:(Second:($t@310@01))))), _))), self@306@01, i@313@01)))]
(assert (not
  (and
    (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
              $Snap.unit))) self@306@01 i@313@01)))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@318@01))
(assert ($Perm.isReadVar $k@319@01))
(assert (=>
  (and
    (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
              $Snap.unit))) self@306@01 i@313@01)))))
  (and
    (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
    (>= (int___unbox__ $Snap.unit i@313@01) 0)
    (<
      (int___unbox__ $Snap.unit i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
    (Low<Bool> (list___getitem__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
          $Snap.unit))) self@306@01 i@313@01))
    (list___len__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
    (=
      (letvar@320@01 i@313@01)
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
    (int___unbox__%precondition $Snap.unit i@313@01)
    (or
      (not (< (int___unbox__ $Snap.unit i@313@01) 0))
      (< (int___unbox__ $Snap.unit i@313@01) 0))
    (=>
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
      (and
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
        (or
          (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
          (>= (int___unbox__ $Snap.unit i@313@01) 0))))
    (or
      (=>
        (< (int___unbox__ $Snap.unit i@313@01) 0)
        (>=
          (int___unbox__ $Snap.unit i@313@01)
          (-
            0
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
      (not
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
    (=>
      (< (int___unbox__ $Snap.unit i@313@01) 0)
      (>=
        (int___unbox__ $Snap.unit i@313@01)
        (-
          0
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
    (=>
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (<
        (int___unbox__ $Snap.unit i@313@01)
        (list___len__ ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
    (list___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
          $Snap.unit))) self@306@01 i@313@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
      (and
        (>= (int___unbox__ $Snap.unit i@313@01) 0)
        (and
          (<
            (int___unbox__ $Snap.unit i@313@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
          (Low<Bool> (list___getitem__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                $Snap.unit))) self@306@01 i@313@01))))))
  (and
    (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
    (and
      (>= (int___unbox__ $Snap.unit i@313@01) 0)
      (and
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
              $Snap.unit))) self@306@01 i@313@01)))))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@314@01))
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert ($Perm.isReadVar $k@318@01))
(assert ($Perm.isReadVar $k@319@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@313@01 $Ref)) (!
  (and
    (=>
      (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
      (and
        (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
        (int___unbox__%precondition $Snap.unit i@313@01)
        (=>
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (and
            (>= (int___unbox__ $Snap.unit i@313@01) 0)
            (list___len__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
            (=>
              (<
                (int___unbox__ $Snap.unit i@313@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
              (and
                (<
                  (int___unbox__ $Snap.unit i@313@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                (=
                  (letvar@317@01 i@313@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
                (or
                  (not (< (int___unbox__ $Snap.unit i@313@01) 0))
                  (< (int___unbox__ $Snap.unit i@313@01) 0))
                (=>
                  (=>
                    (< (int___unbox__ $Snap.unit i@313@01) 0)
                    (>=
                      (int___unbox__ $Snap.unit i@313@01)
                      (-
                        0
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                  (and
                    (=>
                      (< (int___unbox__ $Snap.unit i@313@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@313@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                    (or
                      (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
                      (>= (int___unbox__ $Snap.unit i@313@01) 0))))
                (or
                  (=>
                    (< (int___unbox__ $Snap.unit i@313@01) 0)
                    (>=
                      (int___unbox__ $Snap.unit i@313@01)
                      (-
                        0
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                  (not
                    (=>
                      (< (int___unbox__ $Snap.unit i@313@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@313@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
                (=>
                  (< (int___unbox__ $Snap.unit i@313@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@313@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                (=>
                  (>= (int___unbox__ $Snap.unit i@313@01) 0)
                  (<
                    (int___unbox__ $Snap.unit i@313@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
                (list___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                      $Snap.unit))) self@306@01 i@313@01)))
            (or
              (<
                (int___unbox__ $Snap.unit i@313@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
              (not
                (<
                  (int___unbox__ $Snap.unit i@313@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
        (or
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (not (>= (int___unbox__ $Snap.unit i@313@01) 0)))))
    (or
      (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
      (not (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))))
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                  $Snap.unit))) self@306@01 i@313@01)))))
      (and
        (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
        (>= (int___unbox__ $Snap.unit i@313@01) 0)
        (<
          (int___unbox__ $Snap.unit i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (Low<Bool> (list___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
              $Snap.unit))) self@306@01 i@313@01))
        (list___len__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
        (=
          (letvar@320@01 i@313@01)
          (list___len__ ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
        (int___unbox__%precondition $Snap.unit i@313@01)
        (or
          (not (< (int___unbox__ $Snap.unit i@313@01) 0))
          (< (int___unbox__ $Snap.unit i@313@01) 0))
        (=>
          (=>
            (< (int___unbox__ $Snap.unit i@313@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@313@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
          (and
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
            (or
              (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
              (>= (int___unbox__ $Snap.unit i@313@01) 0))))
        (or
          (=>
            (< (int___unbox__ $Snap.unit i@313@01) 0)
            (>=
              (int___unbox__ $Snap.unit i@313@01)
              (-
                0
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
          (not
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
        (=>
          (< (int___unbox__ $Snap.unit i@313@01) 0)
          (>=
            (int___unbox__ $Snap.unit i@313@01)
            (-
              0
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
        (=>
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (<
            (int___unbox__ $Snap.unit i@313@01)
            (list___len__ ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
        (list___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
              $Snap.unit))) self@306@01 i@313@01)))
    (or
      (not
        (and
          (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
          (and
            (>= (int___unbox__ $Snap.unit i@313@01) 0)
            (and
              (<
                (int___unbox__ $Snap.unit i@313@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
              (Low<Bool> (list___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                    $Snap.unit))) self@306@01 i@313@01))))))
      (and
        (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                  $Snap.unit))) self@306@01 i@313@01)))))))
  :pattern ((list___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
        $Snap.unit))) self@306@01 i@313@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256-aux|)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@314@01))
(assert ($Perm.isReadVar $k@315@01))
(assert ($Perm.isReadVar $k@316@01))
(assert ($Perm.isReadVar $k@318@01))
(assert ($Perm.isReadVar $k@319@01))
(assert (=>
  (and (Low<Bool> key@307@01) (Low<Bool> item@308@01))
  (and
    (Low<Bool> key@307@01)
    (Low<Bool> item@308@01)
    (forall ((i@313@01 $Ref)) (!
      (and
        (=>
          (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
          (and
            (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
            (int___unbox__%precondition $Snap.unit i@313@01)
            (=>
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (and
                (>= (int___unbox__ $Snap.unit i@313@01) 0)
                (list___len__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
                (=>
                  (<
                    (int___unbox__ $Snap.unit i@313@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                  (and
                    (<
                      (int___unbox__ $Snap.unit i@313@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                    (=
                      (letvar@317@01 i@313@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))
                    (or
                      (not (< (int___unbox__ $Snap.unit i@313@01) 0))
                      (< (int___unbox__ $Snap.unit i@313@01) 0))
                    (=>
                      (=>
                        (< (int___unbox__ $Snap.unit i@313@01) 0)
                        (>=
                          (int___unbox__ $Snap.unit i@313@01)
                          (-
                            0
                            (list___len__ ($Snap.combine
                              $Snap.unit
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                      (and
                        (=>
                          (< (int___unbox__ $Snap.unit i@313@01) 0)
                          (>=
                            (int___unbox__ $Snap.unit i@313@01)
                            (-
                              0
                              (list___len__ ($Snap.combine
                                $Snap.unit
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                        (or
                          (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
                          (>= (int___unbox__ $Snap.unit i@313@01) 0))))
                    (or
                      (=>
                        (< (int___unbox__ $Snap.unit i@313@01) 0)
                        (>=
                          (int___unbox__ $Snap.unit i@313@01)
                          (-
                            0
                            (list___len__ ($Snap.combine
                              $Snap.unit
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                      (not
                        (=>
                          (< (int___unbox__ $Snap.unit i@313@01) 0)
                          (>=
                            (int___unbox__ $Snap.unit i@313@01)
                            (-
                              0
                              (list___len__ ($Snap.combine
                                $Snap.unit
                                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))))
                    (=>
                      (< (int___unbox__ $Snap.unit i@313@01) 0)
                      (>=
                        (int___unbox__ $Snap.unit i@313@01)
                        (-
                          0
                          (list___len__ ($Snap.combine
                            $Snap.unit
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01))))
                    (=>
                      (>= (int___unbox__ $Snap.unit i@313@01) 0)
                      (<
                        (int___unbox__ $Snap.unit i@313@01)
                        (list___len__ ($Snap.combine
                          $Snap.unit
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))) self@306@01)))
                    (list___getitem__%precondition ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                          $Snap.unit))) self@306@01 i@313@01)))
                (or
                  (<
                    (int___unbox__ $Snap.unit i@313@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                  (not
                    (<
                      (int___unbox__ $Snap.unit i@313@01)
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
            (or
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (not (>= (int___unbox__ $Snap.unit i@313@01) 0)))))
        (or
          (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
          (not
            (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))))
        (=>
          (and
            (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
            (and
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (and
                (<
                  (int___unbox__ $Snap.unit i@313@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                (Low<Bool> (list___getitem__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                      $Snap.unit))) self@306@01 i@313@01)))))
          (and
            (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
            (>= (int___unbox__ $Snap.unit i@313@01) 0)
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                  $Snap.unit))) self@306@01 i@313@01))
            (list___len__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)
            (=
              (letvar@320@01 i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (int___unbox__%precondition $Snap.unit i@313@01)
            (or
              (not (< (int___unbox__ $Snap.unit i@313@01) 0))
              (< (int___unbox__ $Snap.unit i@313@01) 0))
            (=>
              (=>
                (< (int___unbox__ $Snap.unit i@313@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@313@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
              (and
                (=>
                  (< (int___unbox__ $Snap.unit i@313@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@313@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
                (or
                  (not (>= (int___unbox__ $Snap.unit i@313@01) 0))
                  (>= (int___unbox__ $Snap.unit i@313@01) 0))))
            (or
              (=>
                (< (int___unbox__ $Snap.unit i@313@01) 0)
                (>=
                  (int___unbox__ $Snap.unit i@313@01)
                  (-
                    0
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
              (not
                (=>
                  (< (int___unbox__ $Snap.unit i@313@01) 0)
                  (>=
                    (int___unbox__ $Snap.unit i@313@01)
                    (-
                      0
                      (list___len__ ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))))
            (=>
              (< (int___unbox__ $Snap.unit i@313@01) 0)
              (>=
                (int___unbox__ $Snap.unit i@313@01)
                (-
                  0
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))))
            (=>
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (<
                (int___unbox__ $Snap.unit i@313@01)
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01)))
            (list___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
                  $Snap.unit))) self@306@01 i@313@01)))
        (or
          (not
            (and
              (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
              (and
                (>= (int___unbox__ $Snap.unit i@313@01) 0)
                (and
                  (<
                    (int___unbox__ $Snap.unit i@313@01)
                    (list___len__ ($Snap.combine
                      $Snap.unit
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                  (Low<Bool> (list___getitem__ ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                        $Snap.unit))) self@306@01 i@313@01))))))
          (and
            (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
            (and
              (>= (int___unbox__ $Snap.unit i@313@01) 0)
              (and
                (<
                  (int___unbox__ $Snap.unit i@313@01)
                  (list___len__ ($Snap.combine
                    $Snap.unit
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
                (Low<Bool> (list___getitem__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                      $Snap.unit))) self@306@01 i@313@01)))))))
      :pattern ((list___getitem__%limited ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
            $Snap.unit))) self@306@01 i@313@01))
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256-aux|)))))
(assert (and (Low<Bool> key@307@01) (Low<Bool> item@308@01)))
(assert (=>
  (and (Low<Bool> key@307@01) (Low<Bool> item@308@01))
  (forall ((i@313@01 $Ref)) (!
    (=>
      (and
        (issubtype<Bool> (typeof<PyType> i@313@01) (as int<PyType>  PyType))
        (and
          (>= (int___unbox__ $Snap.unit i@313@01) 0)
          (and
            (<
              (int___unbox__ $Snap.unit i@313@01)
              (list___len__ ($Snap.combine
                $Snap.unit
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))) self@306@01))
            (Low<Bool> (list___getitem__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@310@01)))))
                  $Snap.unit))) self@306@01 i@313@01)))))
      (Low<Bool> (list___getitem__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
            $Snap.unit))) self@306@01 i@313@01)))
    :pattern ((list___getitem__%limited ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@312@01))))
          $Snap.unit))) self@306@01 i@313@01))
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@742@38@742@256|))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_12: Perm
(declare-const _cwl_12@321@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- list_append ----------
(declare-const _cthread_9@322@01 $Ref)
(declare-const _caller_measures_9@323@01 Seq<Measure$>)
(declare-const _residue_9@324@01 $Perm)
(declare-const self@325@01 $Ref)
(declare-const item@326@01 $Ref)
(declare-const _current_wait_level_9@327@01 $Perm)
(declare-const _cthread_9@328@01 $Ref)
(declare-const _caller_measures_9@329@01 Seq<Measure$>)
(declare-const _residue_9@330@01 $Perm)
(declare-const self@331@01 $Ref)
(declare-const item@332@01 $Ref)
(declare-const _current_wait_level_9@333@01 $Perm)
(push) ; 1
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 ($Snap.combine ($Snap.first $t@334@01) ($Snap.second $t@334@01))))
(assert (= ($Snap.first $t@334@01) $Snap.unit))
; [eval] _cthread_9 != null
(assert (not (= _cthread_9@328@01 $Ref.null)))
(assert (=
  ($Snap.second $t@334@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@334@01))
    ($Snap.second ($Snap.second $t@334@01)))))
(assert (= ($Snap.first ($Snap.second $t@334@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_9, _cthread_9, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_9@329@01 _cthread_9@328@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_9@329@01 _cthread_9@328@01 1))
(assert (Measure$check $Snap.unit _caller_measures_9@329@01 _cthread_9@328@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@334@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@334@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@334@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_9), Thread_0())
; [eval] typeof(_cthread_9)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_9@328@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@334@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@331@01) (list<PyType> (list_arg<PyType> (typeof<PyType> self@331@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))
(assert (not (= self@331@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(item), list_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> item@332@01) (list_arg<PyType> (typeof<PyType> self@331@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@335@01 $Snap)
(assert (= $t@335@01 ($Snap.combine ($Snap.first $t@335@01) ($Snap.second $t@335@01))))
(assert (= ($Snap.first $t@335@01) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _current_wait_level_9)
(assert (=
  ($Snap.second $t@335@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@335@01))
    ($Snap.second ($Snap.second $t@335@01)))))
(assert (= ($Snap.first ($Snap.second $t@335@01)) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _current_wait_level_9)
(assert (=
  ($Snap.second ($Snap.second $t@335@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@335@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@335@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@335@01))) $Snap.unit))
; [eval] _residue_9 <= _current_wait_level_9
(assert (<= _residue_9@330@01 _current_wait_level_9@333@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@335@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@335@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@335@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@335@01))))
  $Snap.unit))
; [eval] self.list_acc == old(self.list_acc) ++ Seq(item)
; [eval] old(self.list_acc) ++ Seq(item)
; [eval] old(self.list_acc)
; [eval] Seq(item)
(assert (= (Seq_length (Seq_singleton item@332@01)) 1))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@335@01)))))
  (Seq_append
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
    (Seq_singleton item@332@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_9: Perm
(declare-const _cwl_9@336@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- set___init__ ----------
(declare-const _cthread_21@337@01 $Ref)
(declare-const _caller_measures_21@338@01 Seq<Measure$>)
(declare-const _residue_21@339@01 $Perm)
(declare-const _current_wait_level_21@340@01 $Perm)
(declare-const res@341@01 $Ref)
(declare-const _cthread_21@342@01 $Ref)
(declare-const _caller_measures_21@343@01 Seq<Measure$>)
(declare-const _residue_21@344@01 $Perm)
(declare-const _current_wait_level_21@345@01 $Perm)
(declare-const res@346@01 $Ref)
(push) ; 1
(declare-const $t@347@01 $Snap)
(assert (= $t@347@01 ($Snap.combine ($Snap.first $t@347@01) ($Snap.second $t@347@01))))
(assert (= ($Snap.first $t@347@01) $Snap.unit))
; [eval] _cthread_21 != null
(assert (not (= _cthread_21@342@01 $Ref.null)))
(assert (=
  ($Snap.second $t@347@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@347@01))
    ($Snap.second ($Snap.second $t@347@01)))))
(assert (= ($Snap.first ($Snap.second $t@347@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_21, _cthread_21, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_21@343@01 _cthread_21@342@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_21@343@01 _cthread_21@342@01 1))
(assert (Measure$check $Snap.unit _caller_measures_21@343@01 _cthread_21@342@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@347@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@347@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@347@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@347@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_21), Thread_0())
; [eval] typeof(_cthread_21)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_21@342@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@347@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@348@01 $Snap)
(assert (= $t@348@01 ($Snap.combine ($Snap.first $t@348@01) ($Snap.second $t@348@01))))
(assert (= ($Snap.first $t@348@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_21)
(assert (=
  ($Snap.second $t@348@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@348@01))
    ($Snap.second ($Snap.second $t@348@01)))))
(assert (= ($Snap.first ($Snap.second $t@348@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_21)
(assert (=
  ($Snap.second ($Snap.second $t@348@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@348@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@348@01))) $Snap.unit))
; [eval] _residue_21 <= _current_wait_level_21
(assert (<= _residue_21@344@01 _current_wait_level_21@345@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@348@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@348@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))))
(assert (not (= res@346@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))
  $Snap.unit))
; [eval] res.set_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@348@01))))) (as Set_empty  Set<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@348@01)))))
  $Snap.unit))
; [eval] typeof(res) == set(set_arg(typeof(res), 0))
; [eval] typeof(res)
; [eval] set(set_arg(typeof(res), 0))
; [eval] set_arg(typeof(res), 0)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@346@01)
  (set<PyType> (set_arg<PyType> (typeof<PyType> res@346@01) 0))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_21: Perm
(declare-const _cwl_21@349@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- set_add ----------
(declare-const _cthread_22@350@01 $Ref)
(declare-const _caller_measures_22@351@01 Seq<Measure$>)
(declare-const _residue_22@352@01 $Perm)
(declare-const self@353@01 $Ref)
(declare-const item@354@01 $Ref)
(declare-const _current_wait_level_22@355@01 $Perm)
(declare-const _cthread_22@356@01 $Ref)
(declare-const _caller_measures_22@357@01 Seq<Measure$>)
(declare-const _residue_22@358@01 $Perm)
(declare-const self@359@01 $Ref)
(declare-const item@360@01 $Ref)
(declare-const _current_wait_level_22@361@01 $Perm)
(push) ; 1
(declare-const $t@362@01 $Snap)
(assert (= $t@362@01 ($Snap.combine ($Snap.first $t@362@01) ($Snap.second $t@362@01))))
(assert (= ($Snap.first $t@362@01) $Snap.unit))
; [eval] _cthread_22 != null
(assert (not (= _cthread_22@356@01 $Ref.null)))
(assert (=
  ($Snap.second $t@362@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@362@01))
    ($Snap.second ($Snap.second $t@362@01)))))
(assert (= ($Snap.first ($Snap.second $t@362@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_22, _cthread_22, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_22@357@01 _cthread_22@356@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_22@357@01 _cthread_22@356@01 1))
(assert (Measure$check $Snap.unit _caller_measures_22@357@01 _cthread_22@356@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@362@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@362@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@362@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@362@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_22), Thread_0())
; [eval] typeof(_cthread_22)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_22@356@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@362@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@362@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@362@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), set(set_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] set(set_arg(typeof(self), 0))
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@359@01) (set<PyType> (set_arg<PyType> (typeof<PyType> self@359@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01))))))))
(assert (not (= self@359@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(item), set_arg(typeof(self), 0))
; [eval] typeof(item)
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> item@360@01) (set_arg<PyType> (typeof<PyType> self@359@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@363@01 $Snap)
(assert (= $t@363@01 ($Snap.combine ($Snap.first $t@363@01) ($Snap.second $t@363@01))))
(assert (= ($Snap.first $t@363@01) $Snap.unit))
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseBounded] :: Level(_r_22) <= _current_wait_level_22)
(assert (=
  ($Snap.second $t@363@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@363@01))
    ($Snap.second ($Snap.second $t@363@01)))))
(assert (= ($Snap.first ($Snap.second $t@363@01)) $Snap.unit))
; [eval] (forperm _r_22: Ref [_r_22.MustReleaseUnbounded] :: Level(_r_22) <= _current_wait_level_22)
(assert (=
  ($Snap.second ($Snap.second $t@363@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@363@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@363@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@363@01))) $Snap.unit))
; [eval] _residue_22 <= _current_wait_level_22
(assert (<= _residue_22@358@01 _current_wait_level_22@361@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@363@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@363@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@363@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@363@01))))
  $Snap.unit))
; [eval] self.set_acc == (old(self.set_acc) union Set(item))
; [eval] (old(self.set_acc) union Set(item))
; [eval] old(self.set_acc)
; [eval] Set(item)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@363@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@362@01)))))) (Set_singleton item@360@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_22: Perm
(declare-const _cwl_22@364@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- set_clear ----------
(declare-const _cthread_24@365@01 $Ref)
(declare-const _caller_measures_24@366@01 Seq<Measure$>)
(declare-const _residue_24@367@01 $Perm)
(declare-const self@368@01 $Ref)
(declare-const _current_wait_level_24@369@01 $Perm)
(declare-const _cthread_24@370@01 $Ref)
(declare-const _caller_measures_24@371@01 Seq<Measure$>)
(declare-const _residue_24@372@01 $Perm)
(declare-const self@373@01 $Ref)
(declare-const _current_wait_level_24@374@01 $Perm)
(push) ; 1
(declare-const $t@375@01 $Snap)
(assert (= $t@375@01 ($Snap.combine ($Snap.first $t@375@01) ($Snap.second $t@375@01))))
(assert (= ($Snap.first $t@375@01) $Snap.unit))
; [eval] _cthread_24 != null
(assert (not (= _cthread_24@370@01 $Ref.null)))
(assert (=
  ($Snap.second $t@375@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@375@01))
    ($Snap.second ($Snap.second $t@375@01)))))
(assert (= ($Snap.first ($Snap.second $t@375@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_24, _cthread_24, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_24@371@01 _cthread_24@370@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_24@371@01 _cthread_24@370@01 1))
(assert (Measure$check $Snap.unit _caller_measures_24@371@01 _cthread_24@370@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@375@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@375@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@375@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@375@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_24), Thread_0())
; [eval] typeof(_cthread_24)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_24@370@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@375@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@375@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@375@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@375@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), set(set_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] set(set_arg(typeof(self), 0))
; [eval] set_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@373@01) (set<PyType> (set_arg<PyType> (typeof<PyType> self@373@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@375@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@375@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@375@01))))))))
(assert (not (= self@373@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@375@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@376@01 $Snap)
(assert (= $t@376@01 ($Snap.combine ($Snap.first $t@376@01) ($Snap.second $t@376@01))))
(assert (= ($Snap.first $t@376@01) $Snap.unit))
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseBounded] :: Level(_r_24) <= _current_wait_level_24)
(assert (=
  ($Snap.second $t@376@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@376@01))
    ($Snap.second ($Snap.second $t@376@01)))))
(assert (= ($Snap.first ($Snap.second $t@376@01)) $Snap.unit))
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: Level(_r_24) <= _current_wait_level_24)
(assert (=
  ($Snap.second ($Snap.second $t@376@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@376@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@376@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@376@01))) $Snap.unit))
; [eval] _residue_24 <= _current_wait_level_24
(assert (<= _residue_24@372@01 _current_wait_level_24@374@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@376@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@376@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@376@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@376@01))))
  $Snap.unit))
; [eval] self.set_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@376@01))))) (as Set_empty  Set<$Ref>)))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_24: Perm
(declare-const _cwl_24@377@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- dict___init__ ----------
(declare-const _cthread_33@378@01 $Ref)
(declare-const _caller_measures_33@379@01 Seq<Measure$>)
(declare-const _residue_33@380@01 $Perm)
(declare-const _current_wait_level_33@381@01 $Perm)
(declare-const res@382@01 $Ref)
(declare-const _cthread_33@383@01 $Ref)
(declare-const _caller_measures_33@384@01 Seq<Measure$>)
(declare-const _residue_33@385@01 $Perm)
(declare-const _current_wait_level_33@386@01 $Perm)
(declare-const res@387@01 $Ref)
(push) ; 1
(declare-const $t@388@01 $Snap)
(assert (= $t@388@01 ($Snap.combine ($Snap.first $t@388@01) ($Snap.second $t@388@01))))
(assert (= ($Snap.first $t@388@01) $Snap.unit))
; [eval] _cthread_33 != null
(assert (not (= _cthread_33@383@01 $Ref.null)))
(assert (=
  ($Snap.second $t@388@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@388@01))
    ($Snap.second ($Snap.second $t@388@01)))))
(assert (= ($Snap.first ($Snap.second $t@388@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_33, _cthread_33, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_33@384@01 _cthread_33@383@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_33@384@01 _cthread_33@383@01 1))
(assert (Measure$check $Snap.unit _caller_measures_33@384@01 _cthread_33@383@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@388@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@388@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@388@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@388@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_33), Thread_0())
; [eval] typeof(_cthread_33)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_33@383@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@388@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@389@01 $Snap)
(assert (= $t@389@01 ($Snap.combine ($Snap.first $t@389@01) ($Snap.second $t@389@01))))
(assert (= ($Snap.first $t@389@01) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: Level(_r_26) <= _current_wait_level_33)
(assert (=
  ($Snap.second $t@389@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@389@01))
    ($Snap.second ($Snap.second $t@389@01)))))
(assert (= ($Snap.first ($Snap.second $t@389@01)) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: Level(_r_26) <= _current_wait_level_33)
(assert (=
  ($Snap.second ($Snap.second $t@389@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@389@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@389@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@389@01))) $Snap.unit))
; [eval] _residue_33 <= _current_wait_level_33
(assert (<= _residue_33@385@01 _current_wait_level_33@386@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@389@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@389@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01)))))))
(assert (not (= res@387@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01))))))
  $Snap.unit))
; [eval] res.dict_acc == Set[Ref]()
; [eval] Set[Ref]()
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@389@01))))) (as Set_empty  Set<$Ref>)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@389@01))))))
  $Snap.unit))
; [eval] typeof(res) == dict(dict_arg(typeof(res), 0), dict_arg(typeof(res), 1))
; [eval] typeof(res)
; [eval] dict(dict_arg(typeof(res), 0), dict_arg(typeof(res), 1))
; [eval] dict_arg(typeof(res), 0)
; [eval] typeof(res)
; [eval] dict_arg(typeof(res), 1)
; [eval] typeof(res)
(assert (=
  (typeof<PyType> res@387@01)
  (dict<PyType> (dict_arg<PyType> (typeof<PyType> res@387@01) 0) (dict_arg<PyType> (typeof<PyType> res@387@01) 1))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_33: Perm
(declare-const _cwl_33@390@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- dict_keys ----------
(declare-const _cthread_34@391@01 $Ref)
(declare-const _caller_measures_34@392@01 Seq<Measure$>)
(declare-const _residue_34@393@01 $Perm)
(declare-const self@394@01 $Ref)
(declare-const _current_wait_level_34@395@01 $Perm)
(declare-const res@396@01 $Ref)
(declare-const _cthread_34@397@01 $Ref)
(declare-const _caller_measures_34@398@01 Seq<Measure$>)
(declare-const _residue_34@399@01 $Perm)
(declare-const self@400@01 $Ref)
(declare-const _current_wait_level_34@401@01 $Perm)
(declare-const res@402@01 $Ref)
(push) ; 1
(declare-const $t@403@01 $Snap)
(assert (= $t@403@01 ($Snap.combine ($Snap.first $t@403@01) ($Snap.second $t@403@01))))
(assert (= ($Snap.first $t@403@01) $Snap.unit))
; [eval] _cthread_34 != null
(assert (not (= _cthread_34@397@01 $Ref.null)))
(assert (=
  ($Snap.second $t@403@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@403@01))
    ($Snap.second ($Snap.second $t@403@01)))))
(assert (= ($Snap.first ($Snap.second $t@403@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_34, _cthread_34, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_34@398@01 _cthread_34@397@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_34@398@01 _cthread_34@397@01 1))
(assert (Measure$check $Snap.unit _caller_measures_34@398@01 _cthread_34@397@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@403@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@403@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@403@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@403@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_34), Thread_0())
; [eval] typeof(_cthread_34)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_34@397@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@403@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@403@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@403@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@400@01) (dict<PyType> (dict_arg<PyType> (typeof<PyType> self@400@01) 0) (dict_arg<PyType> (typeof<PyType> self@400@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01))))))))
(assert (not (= self@400@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@403@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@404@01 $Snap)
(assert (= $t@404@01 ($Snap.combine ($Snap.first $t@404@01) ($Snap.second $t@404@01))))
(assert (= ($Snap.first $t@404@01) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseBounded] :: Level(_r_28) <= _current_wait_level_34)
(assert (=
  ($Snap.second $t@404@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@404@01))
    ($Snap.second ($Snap.second $t@404@01)))))
(assert (= ($Snap.first ($Snap.second $t@404@01)) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseUnbounded] :: Level(_r_28) <= _current_wait_level_34)
(assert (=
  ($Snap.second ($Snap.second $t@404@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@404@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@404@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@404@01))) $Snap.unit))
; [eval] _residue_34 <= _current_wait_level_34
(assert (<= _residue_34@399@01 _current_wait_level_34@401@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@404@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@404@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01)))))))))
(assert (not (= res@402@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01))))))
  $Snap.unit))
; [eval] res.set_acc == self.dict_acc
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@404@01))))))) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@404@01)))))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_34: Perm
(declare-const _cwl_34@405@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- dict___setitem__ ----------
(declare-const _cthread_35@406@01 $Ref)
(declare-const _caller_measures_35@407@01 Seq<Measure$>)
(declare-const _residue_35@408@01 $Perm)
(declare-const self@409@01 $Ref)
(declare-const key@410@01 $Ref)
(declare-const item@411@01 $Ref)
(declare-const _current_wait_level_35@412@01 $Perm)
(declare-const _cthread_35@413@01 $Ref)
(declare-const _caller_measures_35@414@01 Seq<Measure$>)
(declare-const _residue_35@415@01 $Perm)
(declare-const self@416@01 $Ref)
(declare-const key@417@01 $Ref)
(declare-const item@418@01 $Ref)
(declare-const _current_wait_level_35@419@01 $Perm)
(push) ; 1
(declare-const $t@420@01 $Snap)
(assert (= $t@420@01 ($Snap.combine ($Snap.first $t@420@01) ($Snap.second $t@420@01))))
(assert (= ($Snap.first $t@420@01) $Snap.unit))
; [eval] _cthread_35 != null
(assert (not (= _cthread_35@413@01 $Ref.null)))
(assert (=
  ($Snap.second $t@420@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@420@01))
    ($Snap.second ($Snap.second $t@420@01)))))
(assert (= ($Snap.first ($Snap.second $t@420@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_35, _cthread_35, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_35@414@01 _cthread_35@413@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_35@414@01 _cthread_35@413@01 1))
(assert (Measure$check $Snap.unit _caller_measures_35@414@01 _cthread_35@413@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@420@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@420@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@420@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_35), Thread_0())
; [eval] typeof(_cthread_35)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_35@413@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@420@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@420@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@420@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@416@01) (dict<PyType> (dict_arg<PyType> (typeof<PyType> self@416@01) 0) (dict_arg<PyType> (typeof<PyType> self@416@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))))
(assert (not (= self@416@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(item), dict_arg(typeof(self), 1))
; [eval] typeof(item)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> item@418@01) (dict_arg<PyType> (typeof<PyType> self@416@01) 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(key), dict_arg(typeof(self), 0))
; [eval] typeof(key)
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> key@417@01) (dict_arg<PyType> (typeof<PyType> self@416@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@421@01 $Snap)
(assert (= $t@421@01 ($Snap.combine ($Snap.first $t@421@01) ($Snap.second $t@421@01))))
(assert (= ($Snap.first $t@421@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second $t@421@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@421@01))
    ($Snap.second ($Snap.second $t@421@01)))))
(assert (= ($Snap.first ($Snap.second $t@421@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_35)
(assert (=
  ($Snap.second ($Snap.second $t@421@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@421@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@421@01))) $Snap.unit))
; [eval] _residue_35 <= _current_wait_level_35
(assert (<= _residue_35@415@01 _current_wait_level_35@419@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@421@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))
  $Snap.unit))
; [eval] self.dict_acc == (old(self.dict_acc) union Set(key))
; [eval] (old(self.dict_acc) union Set(key))
; [eval] old(self.dict_acc)
; [eval] Set(key)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))) (Set_union ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))) (Set_singleton key@417@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))
  $Snap.unit))
; [eval] dict___getitem__(self, key) == item
; [eval] dict___getitem__(self, key)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@422@01 $Perm)
(assert ($Perm.isReadVar $k@422@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@422@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@423@01 $Perm)
(assert ($Perm.isReadVar $k@423@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@423@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@424@01 $Perm)
(assert ($Perm.isReadVar $k@424@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@424@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@425@01 $Perm)
(assert ($Perm.isReadVar $k@425@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@425@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@424@01))
(assert ($Perm.isReadVar $k@425@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01))
(set-option :timeout 0)
(push) ; 4
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
      $Snap.unit))) self@416@01 key@417@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@422@01))
(assert ($Perm.isReadVar $k@423@01))
(assert ($Perm.isReadVar $k@424@01))
(assert ($Perm.isReadVar $k@425@01))
(assert (and
  (dict___contains__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01)
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 key@417@01)
  (dict___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
        $Snap.unit))) self@416@01 key@417@01)))
(assert (=
  (dict___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
        $Snap.unit))) self@416@01 key@417@01)
  item@418@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { dict___getitem__(self, k) } old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k)))
(declare-const k@426@01 $Ref)
(push) ; 3
; [eval] old(dict___contains__(self, k)) && k != key ==> dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] old(dict___contains__(self, k)) && k != key
; [eval] old(dict___contains__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 4
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@427@01 $Perm)
(assert ($Perm.isReadVar $k@427@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@427@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@428@01 $Perm)
(assert ($Perm.isReadVar $k@428@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@428@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@427@01))
(assert ($Perm.isReadVar $k@428@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01))
(set-option :timeout 0)
(push) ; 4
; [then-branch: 52 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01)) | live]
; [else-branch: 52 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01) | live]
(push) ; 5
; [then-branch: 52 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 52 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01))
; [eval] k != key
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01))))
(push) ; 4
; [then-branch: 53 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01) && k@426@01 != key@417@01 | live]
; [else-branch: 53 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01) && k@426@01 != key@417@01) | live]
(push) ; 5
; [then-branch: 53 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01) && k@426@01 != key@417@01]
(assert (and
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
  (not (= k@426@01 key@417@01))))
; [eval] dict___contains__(self, k) && dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___contains__(self, k)
(push) ; 6
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@429@01 $Perm)
(assert ($Perm.isReadVar $k@429@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@429@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@430@01 $Perm)
(assert ($Perm.isReadVar $k@430@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@430@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@429@01))
(assert ($Perm.isReadVar $k@430@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 54 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@421@01)))), First:(Second:(Second:(Second:(Second:($t@421@01))))))), self@416@01, k@426@01)) | live]
; [else-branch: 54 | dict___contains__((_, (First:(Second:(Second:(Second:($t@421@01)))), First:(Second:(Second:(Second:(Second:($t@421@01))))))), self@416@01, k@426@01) | live]
(push) ; 7
; [then-branch: 54 | !(dict___contains__((_, (First:(Second:(Second:(Second:($t@421@01)))), First:(Second:(Second:(Second:(Second:($t@421@01))))))), self@416@01, k@426@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 54 | dict___contains__((_, (First:(Second:(Second:(Second:($t@421@01)))), First:(Second:(Second:(Second:(Second:($t@421@01))))))), self@416@01, k@426@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01))
; [eval] dict___getitem__(self, k) == old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@431@01 $Perm)
(assert ($Perm.isReadVar $k@431@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@431@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@432@01 $Perm)
(assert ($Perm.isReadVar $k@432@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@432@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@433@01 $Perm)
(assert ($Perm.isReadVar $k@433@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@433@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@434@01 $Perm)
(assert ($Perm.isReadVar $k@434@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@434@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@433@01))
(assert ($Perm.isReadVar $k@434@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
      $Snap.unit))) self@416@01 k@426@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@431@01))
(assert ($Perm.isReadVar $k@432@01))
(assert ($Perm.isReadVar $k@433@01))
(assert ($Perm.isReadVar $k@434@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
      $Snap.unit))) self@416@01 k@426@01))
; [eval] old(dict___getitem__(self, k))
; [eval] dict___getitem__(self, k)
(set-option :timeout 0)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@435@01 $Perm)
(assert ($Perm.isReadVar $k@435@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@435@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@436@01 $Perm)
(assert ($Perm.isReadVar $k@436@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@436@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@437@01 $Perm)
(assert ($Perm.isReadVar $k@437@01))
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@437@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(declare-const $k@438@01 $Perm)
(assert ($Perm.isReadVar $k@438@01))
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< $Perm.No $k@438@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
; Joined path conditions
(assert ($Perm.isReadVar $k@437@01))
(assert ($Perm.isReadVar $k@438@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
      $Snap.unit))) self@416@01 k@426@01))
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@435@01))
(assert ($Perm.isReadVar $k@436@01))
(assert ($Perm.isReadVar $k@437@01))
(assert ($Perm.isReadVar $k@438@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
      $Snap.unit))) self@416@01 k@426@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@431@01))
(assert ($Perm.isReadVar $k@432@01))
(assert ($Perm.isReadVar $k@433@01))
(assert ($Perm.isReadVar $k@434@01))
(assert ($Perm.isReadVar $k@435@01))
(assert ($Perm.isReadVar $k@436@01))
(assert ($Perm.isReadVar $k@437@01))
(assert ($Perm.isReadVar $k@438@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
          $Snap.unit))) self@416@01 k@426@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
          $Snap.unit))) self@416@01 k@426@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 53 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, k@426@01) && k@426@01 != key@417@01)]
(assert (not
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
    (not (= k@426@01 key@417@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@429@01))
(assert ($Perm.isReadVar $k@430@01))
(assert ($Perm.isReadVar $k@431@01))
(assert ($Perm.isReadVar $k@432@01))
(assert ($Perm.isReadVar $k@433@01))
(assert ($Perm.isReadVar $k@434@01))
(assert ($Perm.isReadVar $k@435@01))
(assert ($Perm.isReadVar $k@436@01))
(assert ($Perm.isReadVar $k@437@01))
(assert ($Perm.isReadVar $k@438@01))
(assert (=>
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
    (not (= k@426@01 key@417@01)))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
    (not (= k@426@01 key@417@01))
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
              $Snap.unit))) self@416@01 k@426@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
              $Snap.unit))) self@416@01 k@426@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01))))))
; Joined path conditions
(assert (or
  (not
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
      (not (= k@426@01 key@417@01))))
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
    (not (= k@426@01 key@417@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@427@01))
(assert ($Perm.isReadVar $k@428@01))
(assert ($Perm.isReadVar $k@429@01))
(assert ($Perm.isReadVar $k@430@01))
(assert ($Perm.isReadVar $k@431@01))
(assert ($Perm.isReadVar $k@432@01))
(assert ($Perm.isReadVar $k@433@01))
(assert ($Perm.isReadVar $k@434@01))
(assert ($Perm.isReadVar $k@435@01))
(assert ($Perm.isReadVar $k@436@01))
(assert ($Perm.isReadVar $k@437@01))
(assert ($Perm.isReadVar $k@438@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@426@01 $Ref)) (!
  (and
    (dict___contains__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)))
    (=>
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
        (not (= k@426@01 key@417@01)))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
        (not (= k@426@01 key@417@01))
        (dict___contains__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
                  $Snap.unit))) self@416@01 k@426@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
                  $Snap.unit))) self@416@01 k@426@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)))))
    (or
      (not
        (and
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
          (not (= k@426@01 key@417@01))))
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
        (not (= k@426@01 key@417@01)))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
        $Snap.unit))) self@416@01 k@426@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196-aux|)))
(assert (forall ((k@426@01 $Ref)) (!
  (=>
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 k@426@01)
      (not (= k@426@01 key@417@01)))
    (and
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))) self@416@01 k@426@01)
      (=
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
              $Snap.unit))) self@416@01 k@426@01)
        (dict___getitem__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
              $Snap.unit))) self@416@01 k@426@01))))
  :pattern ((dict___getitem__%limited ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))
        $Snap.unit))) self@416@01 k@426@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@852@12@852@196|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))))
  $Snap.unit))
; [eval] |dict___values__(self)| == old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@439@01 $Perm)
(assert ($Perm.isReadVar $k@439@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@439@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@440@01 $Perm)
(assert ($Perm.isReadVar $k@440@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@440@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@439@01))
(assert ($Perm.isReadVar $k@440@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01))
; [eval] old(|dict___values__(self)|) + (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(|dict___values__(self)|)
; [eval] |dict___values__(self)|
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 3
(declare-const $k@441@01 $Perm)
(assert ($Perm.isReadVar $k@441@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@441@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@442@01 $Perm)
(assert ($Perm.isReadVar $k@442@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@442@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@441@01))
(assert ($Perm.isReadVar $k@442@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01))
; [eval] (old(dict___contains__(self, key)) ? 0 : 1)
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@443@01 $Perm)
(assert ($Perm.isReadVar $k@443@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@443@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@444@01 $Perm)
(assert ($Perm.isReadVar $k@444@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@444@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@443@01))
(assert ($Perm.isReadVar $k@444@01))
(assert (dict___contains__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01) | live]
; [else-branch: 55 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01)) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 55 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
(pop) ; 4
(push) ; 4
; [else-branch: 55 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))
(assert (=
  (Seq_length
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01))
  (+
    (Seq_length
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01))
    (ite
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
      0
      1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))))))
  $Snap.unit))
; [eval] (forall k: Ref :: { (k in dict___values__(self)) } (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self)))
(declare-const k@445@01 $Ref)
(push) ; 3
; [eval] (k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))) == (k in dict___values__(self))
; [eval] k == item || (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] k == item
(push) ; 4
; [then-branch: 56 | k@445@01 == item@418@01 | live]
; [else-branch: 56 | k@445@01 != item@418@01 | live]
(push) ; 5
; [then-branch: 56 | k@445@01 == item@418@01]
(assert (= k@445@01 item@418@01))
(pop) ; 5
(push) ; 5
; [else-branch: 56 | k@445@01 != item@418@01]
(assert (not (= k@445@01 item@418@01)))
; [eval] (k in old(dict___values__(self))) && (!old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key)))
; [eval] (k in old(dict___values__(self)))
; [eval] old(dict___values__(self))
; [eval] dict___values__(self)
(push) ; 6
(declare-const $k@446@01 $Perm)
(assert ($Perm.isReadVar $k@446@01))
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@446@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $k@447@01 $Perm)
(assert ($Perm.isReadVar $k@447@01))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@447@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@446@01))
(assert ($Perm.isReadVar $k@447@01))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 57 | !(k@445@01 in dict___values__((First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01))))))), self@416@01)) | live]
; [else-branch: 57 | k@445@01 in dict___values__((First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01))))))), self@416@01) | live]
(push) ; 7
; [then-branch: 57 | !(k@445@01 in dict___values__((First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01))))))), self@416@01))]
(assert (not
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
    k@445@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 57 | k@445@01 in dict___values__((First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01))))))), self@416@01)]
(assert (Seq_contains
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
  k@445@01))
; [eval] !old(dict___contains__(self, key)) || k != old(dict___getitem__(self, key))
; [eval] !old(dict___contains__(self, key))
; [eval] old(dict___contains__(self, key))
; [eval] dict___contains__(self, key)
(push) ; 8
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@448@01 $Perm)
(assert ($Perm.isReadVar $k@448@01))
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@448@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const $k@449@01 $Perm)
(assert ($Perm.isReadVar $k@449@01))
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< $Perm.No $k@449@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
; Joined path conditions
(assert ($Perm.isReadVar $k@448@01))
(assert ($Perm.isReadVar $k@449@01))
(set-option :timeout 0)
(push) ; 8
; [then-branch: 58 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01)) | live]
; [else-branch: 58 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01) | live]
(push) ; 9
; [then-branch: 58 | !(dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01))]
(assert (not
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 58 | dict___contains__((_, (First:(Second:(Second:(Second:(Second:($t@420@01))))), First:(Second:(Second:(Second:(Second:(Second:($t@420@01)))))))), self@416@01, key@417@01)]
(assert (dict___contains__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
; [eval] k != old(dict___getitem__(self, key))
; [eval] old(dict___getitem__(self, key))
; [eval] dict___getitem__(self, key)
(push) ; 10
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@450@01 $Perm)
(assert ($Perm.isReadVar $k@450@01))
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@450@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const $k@451@01 $Perm)
(assert ($Perm.isReadVar $k@451@01))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (< $Perm.No $k@451@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] dict___contains__(self, key)
(set-option :timeout 0)
(push) ; 11
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(declare-const $k@452@01 $Perm)
(assert ($Perm.isReadVar $k@452@01))
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@452@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const $k@453@01 $Perm)
(assert ($Perm.isReadVar $k@453@01))
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (< $Perm.No $k@453@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
; Joined path conditions
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
      $Snap.unit))) self@416@01 key@417@01))
(pop) ; 10
; Joined path conditions
(assert ($Perm.isReadVar $k@450@01))
(assert ($Perm.isReadVar $k@451@01))
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert (dict___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
      $Snap.unit))) self@416@01 key@417@01))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@450@01))
(assert ($Perm.isReadVar $k@451@01))
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert (=>
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
  (and
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
    (dict___getitem__%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
          $Snap.unit))) self@416@01 key@417@01))))
(assert (or
  (dict___contains__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
  (not
    (dict___contains__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@448@01))
(assert ($Perm.isReadVar $k@449@01))
(assert ($Perm.isReadVar $k@450@01))
(assert ($Perm.isReadVar $k@451@01))
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert (=>
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
    k@445@01)
  (and
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
      k@445@01)
    (=>
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
      (and
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
        (dict___getitem__%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
              $Snap.unit))) self@416@01 key@417@01)))
    (or
      (dict___contains__ ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
      (not
        (dict___contains__ ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))))))
(assert (or
  (Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
    k@445@01)
  (not
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
      k@445@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@446@01))
(assert ($Perm.isReadVar $k@447@01))
(assert ($Perm.isReadVar $k@448@01))
(assert ($Perm.isReadVar $k@449@01))
(assert ($Perm.isReadVar $k@450@01))
(assert ($Perm.isReadVar $k@451@01))
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert (=>
  (not (= k@445@01 item@418@01))
  (and
    (not (= k@445@01 item@418@01))
    (=>
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
        k@445@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
          k@445@01)
        (=>
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
          (and
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
            (dict___getitem__%precondition ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
                  $Snap.unit))) self@416@01 key@417@01)))
        (or
          (dict___contains__ ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))))
    (or
      (Seq_contains
        (dict___values__ ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
        k@445@01)
      (not
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
          k@445@01))))))
(assert (or (not (= k@445@01 item@418@01)) (= k@445@01 item@418@01)))
; [eval] (k in dict___values__(self))
; [eval] dict___values__(self)
(set-option :timeout 0)
(push) ; 4
(declare-const $k@454@01 $Perm)
(assert ($Perm.isReadVar $k@454@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@454@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $k@455@01 $Perm)
(assert ($Perm.isReadVar $k@455@01))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@455@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@454@01))
(assert ($Perm.isReadVar $k@455@01))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert ($Perm.isReadVar $k@446@01))
(assert ($Perm.isReadVar $k@447@01))
(assert ($Perm.isReadVar $k@448@01))
(assert ($Perm.isReadVar $k@449@01))
(assert ($Perm.isReadVar $k@450@01))
(assert ($Perm.isReadVar $k@451@01))
(assert ($Perm.isReadVar $k@452@01))
(assert ($Perm.isReadVar $k@453@01))
(assert ($Perm.isReadVar $k@454@01))
(assert ($Perm.isReadVar $k@455@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@445@01 $Ref)) (!
  (and
    (=>
      (not (= k@445@01 item@418@01))
      (and
        (not (= k@445@01 item@418@01))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
            k@445@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
              k@445@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
                      $Snap.unit))) self@416@01 key@417@01)))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
            k@445@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
              k@445@01)))))
    (or (not (= k@445@01 item@418@01)) (= k@445@01 item@418@01)))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
    k@445@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
    k@445@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@445@01 $Ref)) (!
  (and
    (=>
      (not (= k@445@01 item@418@01))
      (and
        (not (= k@445@01 item@418@01))
        (=>
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
            k@445@01)
          (and
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
              k@445@01)
            (=>
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
              (and
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
                (dict___getitem__%precondition ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
                      $Snap.unit))) self@416@01 key@417@01)))
            (or
              (dict___contains__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)
              (not
                (dict___contains__ ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01)))))
        (or
          (Seq_contains
            (dict___values__ ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
            k@445@01)
          (not
            (Seq_contains
              (dict___values__ ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
              k@445@01)))))
    (or (not (= k@445@01 item@418@01)) (= k@445@01 item@418@01)))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
    k@445@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223-aux|)))
(assert (forall ((k@445@01 $Ref)) (!
  (=
    (or
      (= k@445@01 item@418@01)
      (and
        (Seq_contains
          (dict___values__ ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))) self@416@01)
          k@445@01)
        (or
          (not
            (dict___contains__ ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))))) self@416@01 key@417@01))
          (not
            (=
              k@445@01
              (dict___getitem__ ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01)))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@420@01))))))
                    $Snap.unit))) self@416@01 key@417@01))))))
    (Seq_contains
      (dict___values__ ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
      k@445@01))
  :pattern ((Seq_contains
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
    k@445@01))
  :pattern ((Seq_contains_trigger
    (dict___values__ ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@421@01))))
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@421@01)))))) self@416@01)
    k@445@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/nagini/testsobligationsverificationtest_builtin_must_terminate.py.vpr@854@12@854@223|)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; var _cwl_35: Perm
(declare-const _cwl_35@456@01 $Perm)
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- dict_values ----------
(declare-const _cthread_37@457@01 $Ref)
(declare-const _caller_measures_37@458@01 Seq<Measure$>)
(declare-const _residue_37@459@01 $Perm)
(declare-const self@460@01 $Ref)
(declare-const _current_wait_level_37@461@01 $Perm)
(declare-const _res@462@01 $Ref)
(declare-const _cthread_37@463@01 $Ref)
(declare-const _caller_measures_37@464@01 Seq<Measure$>)
(declare-const _residue_37@465@01 $Perm)
(declare-const self@466@01 $Ref)
(declare-const _current_wait_level_37@467@01 $Perm)
(declare-const _res@468@01 $Ref)
(push) ; 1
(declare-const $t@469@01 $Snap)
(assert (= $t@469@01 ($Snap.combine ($Snap.first $t@469@01) ($Snap.second $t@469@01))))
(assert (= ($Snap.first $t@469@01) $Snap.unit))
; [eval] _cthread_37 != null
(assert (not (= _cthread_37@463@01 $Ref.null)))
(assert (=
  ($Snap.second $t@469@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@469@01))
    ($Snap.second ($Snap.second $t@469@01)))))
(assert (= ($Snap.first ($Snap.second $t@469@01)) $Snap.unit))
; [eval] Measure$check(_caller_measures_37, _cthread_37, 1)
(push) ; 2
(assert (Measure$check%precondition $Snap.unit _caller_measures_37@464@01 _cthread_37@463@01 1))
(pop) ; 2
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _caller_measures_37@464@01 _cthread_37@463@01 1))
(assert (Measure$check $Snap.unit _caller_measures_37@464@01 _cthread_37@463@01 1))
(assert (=
  ($Snap.second ($Snap.second $t@469@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@469@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@469@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@469@01))) $Snap.unit))
; [eval] issubtype(typeof(_cthread_37), Thread_0())
; [eval] typeof(_cthread_37)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_37@463@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@469@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@469@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@469@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1)))
; [eval] typeof(self)
; [eval] dict(dict_arg(typeof(self), 0), dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (issubtype<Bool> (typeof<PyType> self@466@01) (dict<PyType> (dict_arg<PyType> (typeof<PyType> self@466@01) 0) (dict_arg<PyType> (typeof<PyType> self@466@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01))))))))
(assert (not (= self@466@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@470@01 $Snap)
(assert (= $t@470@01 ($Snap.combine ($Snap.first $t@470@01) ($Snap.second $t@470@01))))
(assert (= ($Snap.first $t@470@01) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseBounded] :: Level(_r_32) <= _current_wait_level_37)
(assert (=
  ($Snap.second $t@470@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@470@01))
    ($Snap.second ($Snap.second $t@470@01)))))
(assert (= ($Snap.first ($Snap.second $t@470@01)) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseUnbounded] :: Level(_r_32) <= _current_wait_level_37)
(assert (=
  ($Snap.second ($Snap.second $t@470@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@470@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@470@01))) $Snap.unit))
; [eval] _residue_37 <= _current_wait_level_37
(assert (<= _residue_37@465@01 _current_wait_level_37@467@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@470@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
  $Snap.unit))
; [eval] self.dict_acc == old(self.dict_acc)
; [eval] old(self.dict_acc)
(assert (Set_equal ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))) ($SortWrappers.$SnapToSet<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@469@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
  $Snap.unit))
; [eval] typeof(_res) == list(dict_arg(typeof(self), 1))
; [eval] typeof(_res)
; [eval] list(dict_arg(typeof(self), 1))
; [eval] dict_arg(typeof(self), 1)
; [eval] typeof(self)
(assert (=
  (typeof<PyType> _res@468@01)
  (list<PyType> (dict_arg<PyType> (typeof<PyType> self@466@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))))))
(assert (not (= _res@468@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))
  $Snap.unit))
; [eval] _res.list_acc == dict___values__(self)
; [eval] dict___values__(self)
(push) ; 3
(declare-const $k@471@01 $Perm)
(assert ($Perm.isReadVar $k@471@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@471@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@472@01 $Perm)
(assert ($Perm.isReadVar $k@472@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@472@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))) self@466@01))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@471@01))
(assert ($Perm.isReadVar $k@472@01))
(assert (dict___values__%precondition ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))) self@466@01))
(assert (Seq_equal
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))))
  (dict___values__ ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))) self@466@01)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
