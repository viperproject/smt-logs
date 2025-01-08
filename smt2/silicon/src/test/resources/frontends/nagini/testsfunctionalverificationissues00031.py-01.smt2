(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:13:12
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
(declare-sort _list_ce_helper 0)
(declare-sort _Name 0)
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
(declare-const C1<PyType> PyType)
(declare-const C2<PyType> PyType)
(declare-const C3<PyType> PyType)
(declare-const C4<PyType> PyType)
(declare-const C5<PyType> PyType)
(declare-const C6<PyType> PyType)
(declare-const C7<PyType> PyType)
(declare-const C8<PyType> PyType)
(declare-const C9<PyType> PyType)
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
(declare-fun __prim__bool___box__ ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%limited ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%stateless (Bool) Bool)
(declare-fun __prim__bool___box__%precondition ($Snap Bool) Bool)
(declare-fun bool___unbox__ ($Snap $Ref) Bool)
(declare-fun bool___unbox__%limited ($Snap $Ref) Bool)
(declare-fun bool___unbox__%stateless ($Ref) Bool)
(declare-fun bool___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun int___unbox__ ($Snap $Ref) Int)
(declare-fun int___unbox__%limited ($Snap $Ref) Int)
(declare-fun int___unbox__%stateless ($Ref) Bool)
(declare-fun int___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__int___box__ ($Snap Int) $Ref)
(declare-fun __prim__int___box__%limited ($Snap Int) $Ref)
(declare-fun __prim__int___box__%stateless (Int) Bool)
(declare-fun __prim__int___box__%precondition ($Snap Int) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun is_c5 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c5%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c5%stateless ($Ref $Ref) Bool)
(declare-fun is_c5%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c9 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c9%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c9%stateless ($Ref $Ref) Bool)
(declare-fun is_c9%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c7 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c7%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c7%stateless ($Ref $Ref) Bool)
(declare-fun is_c7%precondition ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c6 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c6%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c6%stateless ($Ref $Ref) Bool)
(declare-fun is_c6%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c4 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c4%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c4%stateless ($Ref $Ref) Bool)
(declare-fun is_c4%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c2 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c2%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c2%stateless ($Ref $Ref) Bool)
(declare-fun is_c2%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c1 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c1%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c1%stateless ($Ref $Ref) Bool)
(declare-fun is_c1%precondition ($Snap $Ref $Ref) Bool)
(declare-fun is_c3 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c3%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c3%stateless ($Ref $Ref) Bool)
(declare-fun is_c3%precondition ($Snap $Ref $Ref) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun __name__ ($Snap) $Ref)
(declare-fun __name__%limited ($Snap) $Ref)
(declare-const __name__%stateless Bool)
(declare-fun __name__%precondition ($Snap) Bool)
(declare-fun is_c8 ($Snap $Ref $Ref) $Ref)
(declare-fun is_c8%limited ($Snap $Ref $Ref) $Ref)
(declare-fun is_c8%stateless ($Ref $Ref) Bool)
(declare-fun is_c8%precondition ($Snap $Ref $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun MustTerminate%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct float<PyType> bytes<PyType> C1<PyType> C7<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> PMultiset_basic<PyType> C2<PyType> Iterator_basic<PyType> PSeq_basic<PyType> object<PyType> C5<PyType> bool<PyType> C9<PyType> traceback<PyType> dict_basic<PyType> type<PyType> C3<PyType> ConnectionRefusedError<PyType> C6<PyType> C8<PyType> C4<PyType> PSet_basic<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as C1<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C1<PyType>  PyType)) (as C1<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C2<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C2<PyType>  PyType)) (as C2<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C3<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C3<PyType>  PyType)) (as C3<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C4<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C4<PyType>  PyType)) (as C4<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C5<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C5<PyType>  PyType)) (as C5<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C6<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C6<PyType>  PyType)) (as C6<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C7<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C7<PyType>  PyType)) (as C7<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C8<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C8<PyType>  PyType)) (as C8<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C9<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C9<PyType>  PyType)) (as C9<PyType>  PyType))))
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
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-3582|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-3583|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-3584|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3585|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3622|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3623|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@4@00)
    (__prim__bool___box__ s@$ prim@4@00))
  :pattern ((__prim__bool___box__ s@$ prim@4@00))
  :qid |quant-u-3586|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (__prim__bool___box__%stateless prim@4@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-3587|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (and
      (= (typeof<PyType> result@5@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@5@00) prim@4@00)
      (= (int___unbox__%limited $Snap.unit result@5@00) (ite prim@4@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-3624|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-3625|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (bool___unbox__%precondition $Snap.unit result@5@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-3626|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (int___unbox__%precondition $Snap.unit result@5@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-3627|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@6@00) (bool___unbox__ s@$ box@6@00))
  :pattern ((bool___unbox__ s@$ box@6@00))
  :qid |quant-u-3588|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (bool___unbox__%stateless box@6@00)
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3589|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (= (__prim__bool___box__%limited $Snap.unit result@7@00) box@6@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3628|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (__prim__bool___box__%precondition $Snap.unit result@7@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-3629|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@8@00) (int___unbox__ s@$ box@8@00))
  :pattern ((int___unbox__ s@$ box@8@00))
  :qid |quant-u-3590|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (int___unbox__%stateless box@8@00)
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3591|)))
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
  :qid |quant-u-3630|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@9@00)))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3631|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3632|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@10@00)
    (__prim__int___box__ s@$ prim@10@00))
  :pattern ((__prim__int___box__ s@$ prim@10@00))
  :qid |quant-u-3592|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (__prim__int___box__%stateless prim@10@00)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3593|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (and
      (= (typeof<PyType> result@11@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@11@00) prim@10@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3633|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3634|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (int___unbox__%precondition $Snap.unit result@11@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3635|)))
(assert (forall ((s@$ $Snap) (r@12@00 $Ref)) (!
  (= (Level%limited s@$ r@12@00) (Level s@$ r@12@00))
  :pattern ((Level s@$ r@12@00))
  :qid |quant-u-3594|)))
(assert (forall ((s@$ $Snap) (r@12@00 $Ref)) (!
  (Level%stateless r@12@00)
  :pattern ((Level%limited s@$ r@12@00))
  :qid |quant-u-3595|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (=
    (str___create__%limited s@$ len@14@00 value@15@00)
    (str___create__ s@$ len@14@00 value@15@00))
  :pattern ((str___create__ s@$ len@14@00 value@15@00))
  :qid |quant-u-3596|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (str___create__%stateless len@14@00 value@15@00)
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3597|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (and
      (= (str___len__ $Snap.unit result@16@00) len@14@00)
      (= (str___val__ $Snap.unit result@16@00) value@15@00)
      (= (typeof<PyType> result@16@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3636|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (str___len__%precondition $Snap.unit result@16@00)))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3637|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (str___val__%precondition $Snap.unit result@16@00)))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3638|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) true)
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3639|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (= (is_c5%limited s@$ x_4@17@00 y_3@18@00) (is_c5 s@$ x_4@17@00 y_3@18@00))
  :pattern ((is_c5 s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3598|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (is_c5%stateless x_4@17@00 y_3@18@00)
  :pattern ((is_c5%limited s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3599|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (let ((result@19@00 (is_c5%limited s@$ x_4@17@00 y_3@18@00))) (=>
    (is_c5%precondition s@$ x_4@17@00 y_3@18@00)
    (issubtype<Bool> (typeof<PyType> result@19@00) (as bool<PyType>  PyType))))
  :pattern ((is_c5%limited s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3640|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (let ((result@19@00 (is_c5%limited s@$ x_4@17@00 y_3@18@00))) true)
  :pattern ((is_c5%limited s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3641|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (=>
    (is_c5%precondition s@$ x_4@17@00 y_3@18@00)
    (= (is_c5 s@$ x_4@17@00 y_3@18@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c5 s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3642|)))
(assert (forall ((s@$ $Snap) (x_4@17@00 $Ref) (y_3@18@00 $Ref)) (!
  (=>
    (is_c5%precondition s@$ x_4@17@00 y_3@18@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c5 s@$ x_4@17@00 y_3@18@00))
  :qid |quant-u-3643|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (= (is_c9%limited s@$ x_8@20@00 y_7@21@00) (is_c9 s@$ x_8@20@00 y_7@21@00))
  :pattern ((is_c9 s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3600|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (is_c9%stateless x_8@20@00 y_7@21@00)
  :pattern ((is_c9%limited s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3601|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (let ((result@22@00 (is_c9%limited s@$ x_8@20@00 y_7@21@00))) (=>
    (is_c9%precondition s@$ x_8@20@00 y_7@21@00)
    (issubtype<Bool> (typeof<PyType> result@22@00) (as bool<PyType>  PyType))))
  :pattern ((is_c9%limited s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3644|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (let ((result@22@00 (is_c9%limited s@$ x_8@20@00 y_7@21@00))) true)
  :pattern ((is_c9%limited s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3645|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (=>
    (is_c9%precondition s@$ x_8@20@00 y_7@21@00)
    (= (is_c9 s@$ x_8@20@00 y_7@21@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c9 s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3646|)))
(assert (forall ((s@$ $Snap) (x_8@20@00 $Ref) (y_7@21@00 $Ref)) (!
  (=>
    (is_c9%precondition s@$ x_8@20@00 y_7@21@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c9 s@$ x_8@20@00 y_7@21@00))
  :qid |quant-u-3647|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (= (is_c7%limited s@$ x_6@23@00 y_5@24@00) (is_c7 s@$ x_6@23@00 y_5@24@00))
  :pattern ((is_c7 s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3602|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (is_c7%stateless x_6@23@00 y_5@24@00)
  :pattern ((is_c7%limited s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3603|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (let ((result@25@00 (is_c7%limited s@$ x_6@23@00 y_5@24@00))) (=>
    (is_c7%precondition s@$ x_6@23@00 y_5@24@00)
    (issubtype<Bool> (typeof<PyType> result@25@00) (as bool<PyType>  PyType))))
  :pattern ((is_c7%limited s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3648|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (let ((result@25@00 (is_c7%limited s@$ x_6@23@00 y_5@24@00))) true)
  :pattern ((is_c7%limited s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3649|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (=>
    (is_c7%precondition s@$ x_6@23@00 y_5@24@00)
    (= (is_c7 s@$ x_6@23@00 y_5@24@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c7 s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3650|)))
(assert (forall ((s@$ $Snap) (x_6@23@00 $Ref) (y_5@24@00 $Ref)) (!
  (=>
    (is_c7%precondition s@$ x_6@23@00 y_5@24@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c7 s@$ x_6@23@00 y_5@24@00))
  :qid |quant-u-3651|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@26@00 other@27@00)
    (str___eq__ s@$ self@26@00 other@27@00))
  :pattern ((str___eq__ s@$ self@26@00 other@27@00))
  :qid |quant-u-3604|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (str___eq__%stateless self@26@00 other@27@00)
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-3605|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (let ((result@28@00 (str___eq__%limited s@$ self@26@00 other@27@00))) (=>
    (str___eq__%precondition s@$ self@26@00 other@27@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@26@00)
          (str___val__ $Snap.unit other@27@00))
        result@28@00)
      (=>
        result@28@00
        (=
          (str___len__ $Snap.unit self@26@00)
          (str___len__ $Snap.unit other@27@00))))))
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-3652|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (let ((result@28@00 (str___eq__%limited s@$ self@26@00 other@27@00))) (=>
    (str___eq__%precondition s@$ self@26@00 other@27@00)
    (and
      (str___val__%precondition $Snap.unit self@26@00)
      (str___val__%precondition $Snap.unit other@27@00))))
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-3653|)))
(assert (forall ((s@$ $Snap) (self@26@00 $Ref) (other@27@00 $Ref)) (!
  (let ((result@28@00 (str___eq__%limited s@$ self@26@00 other@27@00))) (=>
    (and (str___eq__%precondition s@$ self@26@00 other@27@00) result@28@00)
    (and
      (str___len__%precondition $Snap.unit self@26@00)
      (str___len__%precondition $Snap.unit other@27@00))))
  :pattern ((str___eq__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-3654|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (= (is_c6%limited s@$ x_5@29@00 y_4@30@00) (is_c6 s@$ x_5@29@00 y_4@30@00))
  :pattern ((is_c6 s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3606|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (is_c6%stateless x_5@29@00 y_4@30@00)
  :pattern ((is_c6%limited s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3607|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (let ((result@31@00 (is_c6%limited s@$ x_5@29@00 y_4@30@00))) (=>
    (is_c6%precondition s@$ x_5@29@00 y_4@30@00)
    (issubtype<Bool> (typeof<PyType> result@31@00) (as bool<PyType>  PyType))))
  :pattern ((is_c6%limited s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3655|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (let ((result@31@00 (is_c6%limited s@$ x_5@29@00 y_4@30@00))) true)
  :pattern ((is_c6%limited s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3656|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (=>
    (is_c6%precondition s@$ x_5@29@00 y_4@30@00)
    (= (is_c6 s@$ x_5@29@00 y_4@30@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c6 s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3657|)))
(assert (forall ((s@$ $Snap) (x_5@29@00 $Ref) (y_4@30@00 $Ref)) (!
  (=>
    (is_c6%precondition s@$ x_5@29@00 y_4@30@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c6 s@$ x_5@29@00 y_4@30@00))
  :qid |quant-u-3658|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (= (is_c4%limited s@$ x_3@32@00 y_2@33@00) (is_c4 s@$ x_3@32@00 y_2@33@00))
  :pattern ((is_c4 s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3608|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (is_c4%stateless x_3@32@00 y_2@33@00)
  :pattern ((is_c4%limited s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3609|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (let ((result@34@00 (is_c4%limited s@$ x_3@32@00 y_2@33@00))) (=>
    (is_c4%precondition s@$ x_3@32@00 y_2@33@00)
    (issubtype<Bool> (typeof<PyType> result@34@00) (as bool<PyType>  PyType))))
  :pattern ((is_c4%limited s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3659|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (let ((result@34@00 (is_c4%limited s@$ x_3@32@00 y_2@33@00))) true)
  :pattern ((is_c4%limited s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3660|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (=>
    (is_c4%precondition s@$ x_3@32@00 y_2@33@00)
    (= (is_c4 s@$ x_3@32@00 y_2@33@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c4 s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3661|)))
(assert (forall ((s@$ $Snap) (x_3@32@00 $Ref) (y_2@33@00 $Ref)) (!
  (=>
    (is_c4%precondition s@$ x_3@32@00 y_2@33@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c4 s@$ x_3@32@00 y_2@33@00))
  :qid |quant-u-3662|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (= (is_c2%limited s@$ x_1@35@00 y_0@36@00) (is_c2 s@$ x_1@35@00 y_0@36@00))
  :pattern ((is_c2 s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3610|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (is_c2%stateless x_1@35@00 y_0@36@00)
  :pattern ((is_c2%limited s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3611|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (let ((result@37@00 (is_c2%limited s@$ x_1@35@00 y_0@36@00))) (=>
    (is_c2%precondition s@$ x_1@35@00 y_0@36@00)
    (issubtype<Bool> (typeof<PyType> result@37@00) (as bool<PyType>  PyType))))
  :pattern ((is_c2%limited s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3663|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (let ((result@37@00 (is_c2%limited s@$ x_1@35@00 y_0@36@00))) true)
  :pattern ((is_c2%limited s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3664|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (=>
    (is_c2%precondition s@$ x_1@35@00 y_0@36@00)
    (= (is_c2 s@$ x_1@35@00 y_0@36@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c2 s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3665|)))
(assert (forall ((s@$ $Snap) (x_1@35@00 $Ref) (y_0@36@00 $Ref)) (!
  (=>
    (is_c2%precondition s@$ x_1@35@00 y_0@36@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c2 s@$ x_1@35@00 y_0@36@00))
  :qid |quant-u-3666|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (= (is_c1%limited s@$ x_0@38@00 y@39@00) (is_c1 s@$ x_0@38@00 y@39@00))
  :pattern ((is_c1 s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3612|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (is_c1%stateless x_0@38@00 y@39@00)
  :pattern ((is_c1%limited s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3613|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (let ((result@40@00 (is_c1%limited s@$ x_0@38@00 y@39@00))) (=>
    (is_c1%precondition s@$ x_0@38@00 y@39@00)
    (issubtype<Bool> (typeof<PyType> result@40@00) (as bool<PyType>  PyType))))
  :pattern ((is_c1%limited s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3667|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (let ((result@40@00 (is_c1%limited s@$ x_0@38@00 y@39@00))) true)
  :pattern ((is_c1%limited s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3668|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (=>
    (is_c1%precondition s@$ x_0@38@00 y@39@00)
    (= (is_c1 s@$ x_0@38@00 y@39@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c1 s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3669|)))
(assert (forall ((s@$ $Snap) (x_0@38@00 $Ref) (y@39@00 $Ref)) (!
  (=>
    (is_c1%precondition s@$ x_0@38@00 y@39@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c1 s@$ x_0@38@00 y@39@00))
  :qid |quant-u-3670|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (= (is_c3%limited s@$ x_2@41@00 y_1@42@00) (is_c3 s@$ x_2@41@00 y_1@42@00))
  :pattern ((is_c3 s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3614|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (is_c3%stateless x_2@41@00 y_1@42@00)
  :pattern ((is_c3%limited s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3615|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (let ((result@43@00 (is_c3%limited s@$ x_2@41@00 y_1@42@00))) (=>
    (is_c3%precondition s@$ x_2@41@00 y_1@42@00)
    (issubtype<Bool> (typeof<PyType> result@43@00) (as bool<PyType>  PyType))))
  :pattern ((is_c3%limited s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3671|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (let ((result@43@00 (is_c3%limited s@$ x_2@41@00 y_1@42@00))) true)
  :pattern ((is_c3%limited s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3672|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (=>
    (is_c3%precondition s@$ x_2@41@00 y_1@42@00)
    (= (is_c3 s@$ x_2@41@00 y_1@42@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c3 s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3673|)))
(assert (forall ((s@$ $Snap) (x_2@41@00 $Ref) (y_1@42@00 $Ref)) (!
  (=>
    (is_c3%precondition s@$ x_2@41@00 y_1@42@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c3 s@$ x_2@41@00 y_1@42@00))
  :qid |quant-u-3674|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3616|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3617|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3618|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3619|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (= (is_c8%limited s@$ x_7@46@00 y_6@47@00) (is_c8 s@$ x_7@46@00 y_6@47@00))
  :pattern ((is_c8 s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3620|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (is_c8%stateless x_7@46@00 y_6@47@00)
  :pattern ((is_c8%limited s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3621|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (let ((result@48@00 (is_c8%limited s@$ x_7@46@00 y_6@47@00))) (=>
    (is_c8%precondition s@$ x_7@46@00 y_6@47@00)
    (issubtype<Bool> (typeof<PyType> result@48@00) (as bool<PyType>  PyType))))
  :pattern ((is_c8%limited s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3675|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (let ((result@48@00 (is_c8%limited s@$ x_7@46@00 y_6@47@00))) true)
  :pattern ((is_c8%limited s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3676|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (=>
    (is_c8%precondition s@$ x_7@46@00 y_6@47@00)
    (= (is_c8 s@$ x_7@46@00 y_6@47@00) (__prim__bool___box__ $Snap.unit true)))
  :pattern ((is_c8 s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3677|)))
(assert (forall ((s@$ $Snap) (x_7@46@00 $Ref) (y_6@47@00 $Ref)) (!
  (=>
    (is_c8%precondition s@$ x_7@46@00 y_6@47@00)
    (__prim__bool___box__%precondition $Snap.unit true))
  :pattern ((is_c8 s@$ x_7@46@00 y_6@47@00))
  :qid |quant-u-3678|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- io_exists2 ----------
(declare-const _cthread_165@0@01 $Ref)
(declare-const _caller_measures_165@1@01 Seq<Measure$>)
(declare-const _residue_165@2@01 $Perm)
(declare-const c1@3@01 $Ref)
(declare-const c2@4@01 $Ref)
(declare-const c3@5@01 $Ref)
(declare-const c4@6@01 $Ref)
(declare-const c5@7@01 $Ref)
(declare-const c6@8@01 $Ref)
(declare-const c7@9@01 $Ref)
(declare-const c8@10@01 $Ref)
(declare-const c9@11@01 $Ref)
(declare-const _current_wait_level_165@12@01 $Perm)
(declare-const _cthread_165@13@01 $Ref)
(declare-const _caller_measures_165@14@01 Seq<Measure$>)
(declare-const _residue_165@15@01 $Perm)
(declare-const c1@16@01 $Ref)
(declare-const c2@17@01 $Ref)
(declare-const c3@18@01 $Ref)
(declare-const c4@19@01 $Ref)
(declare-const c5@20@01 $Ref)
(declare-const c6@21@01 $Ref)
(declare-const c7@22@01 $Ref)
(declare-const c8@23@01 $Ref)
(declare-const c9@24@01 $Ref)
(declare-const _current_wait_level_165@25@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(assert (= ($Snap.first $t@26@01) $Snap.unit))
; [eval] _cthread_165 != null
(assert (not (= _cthread_165@13@01 $Ref.null)))
(assert (=
  ($Snap.second $t@26@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@01))
    ($Snap.second ($Snap.second $t@26@01)))))
(assert (= ($Snap.first ($Snap.second $t@26@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_165@13@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@26@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@26@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@26@01))) $Snap.unit))
; [eval] issubtype(typeof(c1), C1())
; [eval] typeof(c1)
; [eval] C1()
(assert (issubtype<Bool> (typeof<PyType> c1@16@01) (as C1<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@26@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
  $Snap.unit))
; [eval] issubtype(typeof(c2), C2())
; [eval] typeof(c2)
; [eval] C2()
(assert (issubtype<Bool> (typeof<PyType> c2@17@01) (as C2<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(c3), C3())
; [eval] typeof(c3)
; [eval] C3()
(assert (issubtype<Bool> (typeof<PyType> c3@18@01) (as C3<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(c4), C4())
; [eval] typeof(c4)
; [eval] C4()
(assert (issubtype<Bool> (typeof<PyType> c4@19@01) (as C4<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(c5), C5())
; [eval] typeof(c5)
; [eval] C5()
(assert (issubtype<Bool> (typeof<PyType> c5@20@01) (as C5<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(c6), C6())
; [eval] typeof(c6)
; [eval] C6()
(assert (issubtype<Bool> (typeof<PyType> c6@21@01) (as C6<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(c7), C7())
; [eval] typeof(c7)
; [eval] C7()
(assert (issubtype<Bool> (typeof<PyType> c7@22@01) (as C7<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(c8), C8())
; [eval] typeof(c8)
; [eval] C8()
(assert (issubtype<Bool> (typeof<PyType> c8@23@01) (as C8<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(c9), C9())
; [eval] typeof(c9)
; [eval] C9()
(assert (issubtype<Bool> (typeof<PyType> c9@24@01) (as C9<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))))
  $Snap.unit))
(assert false)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unsat
(set-option :timeout 0)
(push) ; 2
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@27@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@27@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@27@01))) $Snap.unit))
; [eval] _residue_165 <= _current_wait_level_165
(assert (<= _residue_165@15@01 _current_wait_level_165@25@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@27@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))
  $Snap.unit))
; [eval] bool___unbox__(is_c1(c1, c1))
; [eval] is_c1(c1, c1)
(push) ; 3
; [eval] issubtype(typeof(x_0), C1())
; [eval] typeof(x_0)
; [eval] C1()
; [eval] issubtype(typeof(y), C1())
; [eval] typeof(y)
; [eval] C1()
(assert (is_c1%precondition ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01))
(pop) ; 3
; Joined path conditions
(assert (is_c1%precondition ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c1 ($Snap.combine
  $Snap.unit
  $Snap.unit) c1@16@01 c1@16@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c1 ($Snap.combine
    $Snap.unit
    $Snap.unit) c1@16@01 c1@16@01))))
(assert (bool___unbox__ $Snap.unit (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c2(c2, c2))
; [eval] is_c2(c2, c2)
(push) ; 3
; [eval] issubtype(typeof(x_1), C2())
; [eval] typeof(x_1)
; [eval] C2()
; [eval] issubtype(typeof(y_0), C2())
; [eval] typeof(y_0)
; [eval] C2()
(assert (is_c2%precondition ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01))
(pop) ; 3
; Joined path conditions
(assert (is_c2%precondition ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c2 ($Snap.combine
  $Snap.unit
  $Snap.unit) c2@17@01 c2@17@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c2 ($Snap.combine
    $Snap.unit
    $Snap.unit) c2@17@01 c2@17@01))))
(assert (bool___unbox__ $Snap.unit (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c3(c3, c3))
; [eval] is_c3(c3, c3)
(push) ; 3
; [eval] issubtype(typeof(x_2), C3())
; [eval] typeof(x_2)
; [eval] C3()
; [eval] issubtype(typeof(y_1), C3())
; [eval] typeof(y_1)
; [eval] C3()
(assert (is_c3%precondition ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01))
(pop) ; 3
; Joined path conditions
(assert (is_c3%precondition ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c3 ($Snap.combine
  $Snap.unit
  $Snap.unit) c3@18@01 c3@18@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c3 ($Snap.combine
    $Snap.unit
    $Snap.unit) c3@18@01 c3@18@01))))
(assert (bool___unbox__ $Snap.unit (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c4(c4, c4))
; [eval] is_c4(c4, c4)
(push) ; 3
; [eval] issubtype(typeof(x_3), C4())
; [eval] typeof(x_3)
; [eval] C4()
; [eval] issubtype(typeof(y_2), C4())
; [eval] typeof(y_2)
; [eval] C4()
(assert (is_c4%precondition ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01))
(pop) ; 3
; Joined path conditions
(assert (is_c4%precondition ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c4 ($Snap.combine
  $Snap.unit
  $Snap.unit) c4@19@01 c4@19@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c4 ($Snap.combine
    $Snap.unit
    $Snap.unit) c4@19@01 c4@19@01))))
(assert (bool___unbox__ $Snap.unit (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c5(c5, c5))
; [eval] is_c5(c5, c5)
(push) ; 3
; [eval] issubtype(typeof(x_4), C5())
; [eval] typeof(x_4)
; [eval] C5()
; [eval] issubtype(typeof(y_3), C5())
; [eval] typeof(y_3)
; [eval] C5()
(assert (is_c5%precondition ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01))
(pop) ; 3
; Joined path conditions
(assert (is_c5%precondition ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c5 ($Snap.combine
  $Snap.unit
  $Snap.unit) c5@20@01 c5@20@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c5 ($Snap.combine
    $Snap.unit
    $Snap.unit) c5@20@01 c5@20@01))))
(assert (bool___unbox__ $Snap.unit (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c6(c6, c6))
; [eval] is_c6(c6, c6)
(push) ; 3
; [eval] issubtype(typeof(x_5), C6())
; [eval] typeof(x_5)
; [eval] C6()
; [eval] issubtype(typeof(y_4), C6())
; [eval] typeof(y_4)
; [eval] C6()
(assert (is_c6%precondition ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01))
(pop) ; 3
; Joined path conditions
(assert (is_c6%precondition ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c6 ($Snap.combine
  $Snap.unit
  $Snap.unit) c6@21@01 c6@21@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c6 ($Snap.combine
    $Snap.unit
    $Snap.unit) c6@21@01 c6@21@01))))
(assert (bool___unbox__ $Snap.unit (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c7(c7, c7))
; [eval] is_c7(c7, c7)
(push) ; 3
; [eval] issubtype(typeof(x_6), C7())
; [eval] typeof(x_6)
; [eval] C7()
; [eval] issubtype(typeof(y_5), C7())
; [eval] typeof(y_5)
; [eval] C7()
(assert (is_c7%precondition ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01))
(pop) ; 3
; Joined path conditions
(assert (is_c7%precondition ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c7 ($Snap.combine
  $Snap.unit
  $Snap.unit) c7@22@01 c7@22@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c7 ($Snap.combine
    $Snap.unit
    $Snap.unit) c7@22@01 c7@22@01))))
(assert (bool___unbox__ $Snap.unit (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c8(c8, c8))
; [eval] is_c8(c8, c8)
(push) ; 3
; [eval] issubtype(typeof(x_7), C8())
; [eval] typeof(x_7)
; [eval] C8()
; [eval] issubtype(typeof(y_6), C8())
; [eval] typeof(y_6)
; [eval] C8()
(assert (is_c8%precondition ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01))
(pop) ; 3
; Joined path conditions
(assert (is_c8%precondition ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c8 ($Snap.combine
  $Snap.unit
  $Snap.unit) c8@23@01 c8@23@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c8 ($Snap.combine
    $Snap.unit
    $Snap.unit) c8@23@01 c8@23@01))))
(assert (bool___unbox__ $Snap.unit (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))))
  $Snap.unit))
; [eval] bool___unbox__(is_c9(c9, c9))
; [eval] is_c9(c9, c9)
(push) ; 3
; [eval] issubtype(typeof(x_8), C9())
; [eval] typeof(x_8)
; [eval] C9()
; [eval] issubtype(typeof(y_7), C9())
; [eval] typeof(y_7)
; [eval] C9()
(assert (is_c9%precondition ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01))
(pop) ; 3
; Joined path conditions
(assert (is_c9%precondition ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c9 ($Snap.combine
  $Snap.unit
  $Snap.unit) c9@24@01 c9@24@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c9 ($Snap.combine
    $Snap.unit
    $Snap.unit) c9@24@01 c9@24@01))))
(assert (bool___unbox__ $Snap.unit (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))))))))))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@28@01 $Ref)
; [exec]
; var c1_0: Ref
(declare-const c1_0@29@01 $Ref)
; [exec]
; var c2_0: Ref
(declare-const c2_0@30@01 $Ref)
; [exec]
; var c3_0: Ref
(declare-const c3_0@31@01 $Ref)
; [exec]
; var c4_0: Ref
(declare-const c4_0@32@01 $Ref)
; [exec]
; var c5_0: Ref
(declare-const c5_0@33@01 $Ref)
; [exec]
; var c6_0: Ref
(declare-const c6_0@34@01 $Ref)
; [exec]
; var c7_0: Ref
(declare-const c7_0@35@01 $Ref)
; [exec]
; var c8_0: Ref
(declare-const c8_0@36@01 $Ref)
; [exec]
; var c9_0: Ref
(declare-const c9_0@37@01 $Ref)
; [exec]
; var _cwl_165: Perm
(declare-const _cwl_165@38@01 $Perm)
; [exec]
; var _method_measures_165: Seq[Measure$]
(declare-const _method_measures_165@39@01 Seq<Measure$>)
; [exec]
; _method_measures_165 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; c1_0 := c1
; [exec]
; c2_0 := c2
; [exec]
; c3_0 := c3
; [exec]
; c4_0 := c4
; [exec]
; c5_0 := c5
; [exec]
; c6_0 := c6
; [exec]
; c7_0 := c7
; [exec]
; c8_0 := c8
; [exec]
; c9_0 := c9
; [exec]
; label __end
; [eval] bool___unbox__(is_c1(c1, c1))
; [eval] is_c1(c1, c1)
(push) ; 3
; [eval] issubtype(typeof(x_0), C1())
; [eval] typeof(x_0)
; [eval] C1()
; [eval] issubtype(typeof(y), C1())
; [eval] typeof(y)
; [eval] C1()
(assert (is_c1%precondition ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01))
(pop) ; 3
; Joined path conditions
(assert (is_c1%precondition ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c1 ($Snap.combine
  $Snap.unit
  $Snap.unit) c1@16@01 c1@16@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c1 ($Snap.combine
    $Snap.unit
    $Snap.unit) c1@16@01 c1@16@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c1 ($Snap.combine $Snap.unit $Snap.unit) c1@16@01 c1@16@01)))
; [eval] bool___unbox__(is_c2(c2, c2))
; [eval] is_c2(c2, c2)
(push) ; 3
; [eval] issubtype(typeof(x_1), C2())
; [eval] typeof(x_1)
; [eval] C2()
; [eval] issubtype(typeof(y_0), C2())
; [eval] typeof(y_0)
; [eval] C2()
(assert (is_c2%precondition ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01))
(pop) ; 3
; Joined path conditions
(assert (is_c2%precondition ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c2 ($Snap.combine
  $Snap.unit
  $Snap.unit) c2@17@01 c2@17@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c2 ($Snap.combine
    $Snap.unit
    $Snap.unit) c2@17@01 c2@17@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c2 ($Snap.combine $Snap.unit $Snap.unit) c2@17@01 c2@17@01)))
; [eval] bool___unbox__(is_c3(c3, c3))
; [eval] is_c3(c3, c3)
(push) ; 3
; [eval] issubtype(typeof(x_2), C3())
; [eval] typeof(x_2)
; [eval] C3()
; [eval] issubtype(typeof(y_1), C3())
; [eval] typeof(y_1)
; [eval] C3()
(assert (is_c3%precondition ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01))
(pop) ; 3
; Joined path conditions
(assert (is_c3%precondition ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c3 ($Snap.combine
  $Snap.unit
  $Snap.unit) c3@18@01 c3@18@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c3 ($Snap.combine
    $Snap.unit
    $Snap.unit) c3@18@01 c3@18@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c3 ($Snap.combine $Snap.unit $Snap.unit) c3@18@01 c3@18@01)))
; [eval] bool___unbox__(is_c4(c4, c4))
; [eval] is_c4(c4, c4)
(push) ; 3
; [eval] issubtype(typeof(x_3), C4())
; [eval] typeof(x_3)
; [eval] C4()
; [eval] issubtype(typeof(y_2), C4())
; [eval] typeof(y_2)
; [eval] C4()
(assert (is_c4%precondition ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01))
(pop) ; 3
; Joined path conditions
(assert (is_c4%precondition ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c4 ($Snap.combine
  $Snap.unit
  $Snap.unit) c4@19@01 c4@19@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c4 ($Snap.combine
    $Snap.unit
    $Snap.unit) c4@19@01 c4@19@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c4 ($Snap.combine $Snap.unit $Snap.unit) c4@19@01 c4@19@01)))
; [eval] bool___unbox__(is_c5(c5, c5))
; [eval] is_c5(c5, c5)
(push) ; 3
; [eval] issubtype(typeof(x_4), C5())
; [eval] typeof(x_4)
; [eval] C5()
; [eval] issubtype(typeof(y_3), C5())
; [eval] typeof(y_3)
; [eval] C5()
(assert (is_c5%precondition ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01))
(pop) ; 3
; Joined path conditions
(assert (is_c5%precondition ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c5 ($Snap.combine
  $Snap.unit
  $Snap.unit) c5@20@01 c5@20@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c5 ($Snap.combine
    $Snap.unit
    $Snap.unit) c5@20@01 c5@20@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c5 ($Snap.combine $Snap.unit $Snap.unit) c5@20@01 c5@20@01)))
; [eval] bool___unbox__(is_c6(c6, c6))
; [eval] is_c6(c6, c6)
(push) ; 3
; [eval] issubtype(typeof(x_5), C6())
; [eval] typeof(x_5)
; [eval] C6()
; [eval] issubtype(typeof(y_4), C6())
; [eval] typeof(y_4)
; [eval] C6()
(assert (is_c6%precondition ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01))
(pop) ; 3
; Joined path conditions
(assert (is_c6%precondition ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c6 ($Snap.combine
  $Snap.unit
  $Snap.unit) c6@21@01 c6@21@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c6 ($Snap.combine
    $Snap.unit
    $Snap.unit) c6@21@01 c6@21@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c6 ($Snap.combine $Snap.unit $Snap.unit) c6@21@01 c6@21@01)))
; [eval] bool___unbox__(is_c7(c7, c7))
; [eval] is_c7(c7, c7)
(push) ; 3
; [eval] issubtype(typeof(x_6), C7())
; [eval] typeof(x_6)
; [eval] C7()
; [eval] issubtype(typeof(y_5), C7())
; [eval] typeof(y_5)
; [eval] C7()
(assert (is_c7%precondition ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01))
(pop) ; 3
; Joined path conditions
(assert (is_c7%precondition ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c7 ($Snap.combine
  $Snap.unit
  $Snap.unit) c7@22@01 c7@22@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c7 ($Snap.combine
    $Snap.unit
    $Snap.unit) c7@22@01 c7@22@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c7 ($Snap.combine $Snap.unit $Snap.unit) c7@22@01 c7@22@01)))
; [eval] bool___unbox__(is_c8(c8, c8))
; [eval] is_c8(c8, c8)
(push) ; 3
; [eval] issubtype(typeof(x_7), C8())
; [eval] typeof(x_7)
; [eval] C8()
; [eval] issubtype(typeof(y_6), C8())
; [eval] typeof(y_6)
; [eval] C8()
(assert (is_c8%precondition ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01))
(pop) ; 3
; Joined path conditions
(assert (is_c8%precondition ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c8 ($Snap.combine
  $Snap.unit
  $Snap.unit) c8@23@01 c8@23@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c8 ($Snap.combine
    $Snap.unit
    $Snap.unit) c8@23@01 c8@23@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c8 ($Snap.combine $Snap.unit $Snap.unit) c8@23@01 c8@23@01)))
; [eval] bool___unbox__(is_c9(c9, c9))
; [eval] is_c9(c9, c9)
(push) ; 3
; [eval] issubtype(typeof(x_8), C9())
; [eval] typeof(x_8)
; [eval] C9()
; [eval] issubtype(typeof(y_7), C9())
; [eval] typeof(y_7)
; [eval] C9()
(assert (is_c9%precondition ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01))
(pop) ; 3
; Joined path conditions
(assert (is_c9%precondition ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01))
(push) ; 3
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (is_c9 ($Snap.combine
  $Snap.unit
  $Snap.unit) c9@24@01 c9@24@01)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (is_c9 ($Snap.combine
    $Snap.unit
    $Snap.unit) c9@24@01 c9@24@01))))
(push) ; 3
(assert (not (bool___unbox__ $Snap.unit (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (bool___unbox__ $Snap.unit (is_c9 ($Snap.combine $Snap.unit $Snap.unit) c9@24@01 c9@24@01)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_166@40@01 $Ref)
(declare-const _caller_measures_166@41@01 Seq<Measure$>)
(declare-const _residue_166@42@01 $Perm)
(declare-const _current_wait_level_166@43@01 $Perm)
(declare-const _cthread_166@44@01 $Ref)
(declare-const _caller_measures_166@45@01 Seq<Measure$>)
(declare-const _residue_166@46@01 $Perm)
(declare-const _current_wait_level_166@47@01 $Perm)
(push) ; 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] _cthread_166 != null
(assert (not (= _cthread_166@44@01 $Ref.null)))
(assert (=
  ($Snap.second $t@48@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@01))
    ($Snap.second ($Snap.second $t@48@01)))))
(assert (= ($Snap.first ($Snap.second $t@48@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_166), Thread_0())
; [eval] typeof(_cthread_166)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_166@44@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@48@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 ($Snap.combine ($Snap.first $t@49@01) ($Snap.second $t@49@01))))
(assert (= ($Snap.first $t@49@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_166)
(assert (=
  ($Snap.second $t@49@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@49@01))
    ($Snap.second ($Snap.second $t@49@01)))))
(assert (= ($Snap.first ($Snap.second $t@49@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_166)
(assert (=
  ($Snap.second ($Snap.second $t@49@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@49@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@49@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@49@01))) $Snap.unit))
; [eval] _residue_166 <= _current_wait_level_166
(assert (<= _residue_166@46@01 _current_wait_level_166@47@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@49@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@50@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@51@01 Set<_Name>)
; [exec]
; var _cwl_166: Perm
(declare-const _cwl_166@52@01 $Perm)
; [exec]
; var _method_measures_166: Seq[Measure$]
(declare-const _method_measures_166@53@01 Seq<Measure$>)
; [exec]
; _method_measures_166 := Seq[Measure$]()
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
(declare-const module_names_0@54@01 Set<_Name>)
(assert (=
  module_names_0@54@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 ($Snap.combine ($Snap.first $t@55@01) ($Snap.second $t@55@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@55@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@55@01))
    ($Snap.second ($Snap.second $t@55@01)))))
(assert (= ($Snap.first ($Snap.second $t@55@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@55@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@55@01)) $Snap.unit))
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
(declare-const module_names_0@56@01 Set<_Name>)
(assert (=
  module_names_0@56@01
  (Set_union module_names_0@54@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 ($Snap.combine ($Snap.first $t@57@01) ($Snap.second $t@57@01))))
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
  ($Snap.second $t@57@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@57@01))
    ($Snap.second ($Snap.second $t@57@01)))))
(assert (= ($Snap.first ($Snap.second $t@57@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@57@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@57@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@57@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@57@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@57@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@57@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@57@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@57@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@57@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12611)))
; [eval] (module_names_0 union Set(_single(12611)))
; [eval] Set(_single(12611))
; [eval] _single(12611)
(declare-const module_names_0@58@01 Set<_Name>)
(assert (=
  module_names_0@58@01
  (Set_union module_names_0@56@01 (Set_singleton (_single<_Name> 12611)))))
; [exec]
; assert true &&
;   ((_single(12611) in module_names_0) && (_single(12611) in module_names_0))
; [eval] (_single(12611) in module_names_0)
; [eval] _single(12611)
(set-option :timeout 0)
(push) ; 3
(assert (not (Set_in (_single<_Name> 12611) module_names_0@58@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 12611) module_names_0@58@01))
; [eval] (_single(12611) in module_names_0)
; [eval] _single(12611)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(212120597353)))
; [eval] (module_names_0 union Set(_single(212120597353)))
; [eval] Set(_single(212120597353))
; [eval] _single(212120597353)
(declare-const module_names_0@59@01 Set<_Name>)
(assert (=
  module_names_0@59@01
  (Set_union module_names_0@58@01 (Set_singleton (_single<_Name> 212120597353)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12867)))
; [eval] (module_names_0 union Set(_single(12867)))
; [eval] Set(_single(12867))
; [eval] _single(12867)
(declare-const module_names_0@60@01 Set<_Name>)
(assert (=
  module_names_0@60@01
  (Set_union module_names_0@59@01 (Set_singleton (_single<_Name> 12867)))))
; [exec]
; assert true &&
;   ((_single(12867) in module_names_0) && (_single(12867) in module_names_0))
; [eval] (_single(12867) in module_names_0)
; [eval] _single(12867)
(push) ; 3
(assert (not (Set_in (_single<_Name> 12867) module_names_0@60@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 12867) module_names_0@60@01))
; [eval] (_single(12867) in module_names_0)
; [eval] _single(12867)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(216415564649)))
; [eval] (module_names_0 union Set(_single(216415564649)))
; [eval] Set(_single(216415564649))
; [eval] _single(216415564649)
(declare-const module_names_0@61@01 Set<_Name>)
(assert (=
  module_names_0@61@01
  (Set_union module_names_0@60@01 (Set_singleton (_single<_Name> 216415564649)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13123)))
; [eval] (module_names_0 union Set(_single(13123)))
; [eval] Set(_single(13123))
; [eval] _single(13123)
(declare-const module_names_0@62@01 Set<_Name>)
(assert (=
  module_names_0@62@01
  (Set_union module_names_0@61@01 (Set_singleton (_single<_Name> 13123)))))
; [exec]
; assert true &&
;   ((_single(13123) in module_names_0) && (_single(13123) in module_names_0))
; [eval] (_single(13123) in module_names_0)
; [eval] _single(13123)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13123) module_names_0@62@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13123) module_names_0@62@01))
; [eval] (_single(13123) in module_names_0)
; [eval] _single(13123)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(220710531945)))
; [eval] (module_names_0 union Set(_single(220710531945)))
; [eval] Set(_single(220710531945))
; [eval] _single(220710531945)
(declare-const module_names_0@63@01 Set<_Name>)
(assert (=
  module_names_0@63@01
  (Set_union module_names_0@62@01 (Set_singleton (_single<_Name> 220710531945)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13379)))
; [eval] (module_names_0 union Set(_single(13379)))
; [eval] Set(_single(13379))
; [eval] _single(13379)
(declare-const module_names_0@64@01 Set<_Name>)
(assert (=
  module_names_0@64@01
  (Set_union module_names_0@63@01 (Set_singleton (_single<_Name> 13379)))))
; [exec]
; assert true &&
;   ((_single(13379) in module_names_0) && (_single(13379) in module_names_0))
; [eval] (_single(13379) in module_names_0)
; [eval] _single(13379)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13379) module_names_0@64@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13379) module_names_0@64@01))
; [eval] (_single(13379) in module_names_0)
; [eval] _single(13379)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(225005499241)))
; [eval] (module_names_0 union Set(_single(225005499241)))
; [eval] Set(_single(225005499241))
; [eval] _single(225005499241)
(declare-const module_names_0@65@01 Set<_Name>)
(assert (=
  module_names_0@65@01
  (Set_union module_names_0@64@01 (Set_singleton (_single<_Name> 225005499241)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13635)))
; [eval] (module_names_0 union Set(_single(13635)))
; [eval] Set(_single(13635))
; [eval] _single(13635)
(declare-const module_names_0@66@01 Set<_Name>)
(assert (=
  module_names_0@66@01
  (Set_union module_names_0@65@01 (Set_singleton (_single<_Name> 13635)))))
; [exec]
; assert true &&
;   ((_single(13635) in module_names_0) && (_single(13635) in module_names_0))
; [eval] (_single(13635) in module_names_0)
; [eval] _single(13635)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13635) module_names_0@66@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13635) module_names_0@66@01))
; [eval] (_single(13635) in module_names_0)
; [eval] _single(13635)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(229300466537)))
; [eval] (module_names_0 union Set(_single(229300466537)))
; [eval] Set(_single(229300466537))
; [eval] _single(229300466537)
(declare-const module_names_0@67@01 Set<_Name>)
(assert (=
  module_names_0@67@01
  (Set_union module_names_0@66@01 (Set_singleton (_single<_Name> 229300466537)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13891)))
; [eval] (module_names_0 union Set(_single(13891)))
; [eval] Set(_single(13891))
; [eval] _single(13891)
(declare-const module_names_0@68@01 Set<_Name>)
(assert (=
  module_names_0@68@01
  (Set_union module_names_0@67@01 (Set_singleton (_single<_Name> 13891)))))
; [exec]
; assert true &&
;   ((_single(13891) in module_names_0) && (_single(13891) in module_names_0))
; [eval] (_single(13891) in module_names_0)
; [eval] _single(13891)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13891) module_names_0@68@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13891) module_names_0@68@01))
; [eval] (_single(13891) in module_names_0)
; [eval] _single(13891)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(233595433833)))
; [eval] (module_names_0 union Set(_single(233595433833)))
; [eval] Set(_single(233595433833))
; [eval] _single(233595433833)
(declare-const module_names_0@69@01 Set<_Name>)
(assert (=
  module_names_0@69@01
  (Set_union module_names_0@68@01 (Set_singleton (_single<_Name> 233595433833)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14147)))
; [eval] (module_names_0 union Set(_single(14147)))
; [eval] Set(_single(14147))
; [eval] _single(14147)
(declare-const module_names_0@70@01 Set<_Name>)
(assert (=
  module_names_0@70@01
  (Set_union module_names_0@69@01 (Set_singleton (_single<_Name> 14147)))))
; [exec]
; assert true &&
;   ((_single(14147) in module_names_0) && (_single(14147) in module_names_0))
; [eval] (_single(14147) in module_names_0)
; [eval] _single(14147)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14147) module_names_0@70@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14147) module_names_0@70@01))
; [eval] (_single(14147) in module_names_0)
; [eval] _single(14147)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(237890401129)))
; [eval] (module_names_0 union Set(_single(237890401129)))
; [eval] Set(_single(237890401129))
; [eval] _single(237890401129)
(declare-const module_names_0@71@01 Set<_Name>)
(assert (=
  module_names_0@71@01
  (Set_union module_names_0@70@01 (Set_singleton (_single<_Name> 237890401129)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14403)))
; [eval] (module_names_0 union Set(_single(14403)))
; [eval] Set(_single(14403))
; [eval] _single(14403)
(declare-const module_names_0@72@01 Set<_Name>)
(assert (=
  module_names_0@72@01
  (Set_union module_names_0@71@01 (Set_singleton (_single<_Name> 14403)))))
; [exec]
; assert true &&
;   ((_single(14403) in module_names_0) && (_single(14403) in module_names_0))
; [eval] (_single(14403) in module_names_0)
; [eval] _single(14403)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14403) module_names_0@72@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14403) module_names_0@72@01))
; [eval] (_single(14403) in module_names_0)
; [eval] _single(14403)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(242185368425)))
; [eval] (module_names_0 union Set(_single(242185368425)))
; [eval] Set(_single(242185368425))
; [eval] _single(242185368425)
(declare-const module_names_0@73@01 Set<_Name>)
(assert (=
  module_names_0@73@01
  (Set_union module_names_0@72@01 (Set_singleton (_single<_Name> 242185368425)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14659)))
; [eval] (module_names_0 union Set(_single(14659)))
; [eval] Set(_single(14659))
; [eval] _single(14659)
(declare-const module_names_0@74@01 Set<_Name>)
(assert (=
  module_names_0@74@01
  (Set_union module_names_0@73@01 (Set_singleton (_single<_Name> 14659)))))
; [exec]
; assert true &&
;   ((_single(14659) in module_names_0) && (_single(14659) in module_names_0))
; [eval] (_single(14659) in module_names_0)
; [eval] _single(14659)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14659) module_names_0@74@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14659) module_names_0@74@01))
; [eval] (_single(14659) in module_names_0)
; [eval] _single(14659)
; [exec]
; module_names_0 := (module_names_0 union Set(_single(246480335721)))
; [eval] (module_names_0 union Set(_single(246480335721)))
; [eval] Set(_single(246480335721))
; [eval] _single(246480335721)
(declare-const module_names_0@75@01 Set<_Name>)
(assert (=
  module_names_0@75@01
  (Set_union module_names_0@74@01 (Set_singleton (_single<_Name> 246480335721)))))
; [exec]
; assert true &&
;   ((_single(13379) in module_names_0) &&
;   ((_single(14147) in module_names_0) &&
;   ((_single(13123) in module_names_0) &&
;   ((_single(13891) in module_names_0) &&
;   ((_single(12611) in module_names_0) &&
;   ((_single(14403) in module_names_0) &&
;   ((_single(12867) in module_names_0) &&
;   ((_single(14659) in module_names_0) && (_single(13635) in module_names_0)))))))))
; [eval] (_single(13379) in module_names_0)
; [eval] _single(13379)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13379) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13379) module_names_0@75@01))
; [eval] (_single(14147) in module_names_0)
; [eval] _single(14147)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14147) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14147) module_names_0@75@01))
; [eval] (_single(13123) in module_names_0)
; [eval] _single(13123)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13123) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13123) module_names_0@75@01))
; [eval] (_single(13891) in module_names_0)
; [eval] _single(13891)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13891) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13891) module_names_0@75@01))
; [eval] (_single(12611) in module_names_0)
; [eval] _single(12611)
(push) ; 3
(assert (not (Set_in (_single<_Name> 12611) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 12611) module_names_0@75@01))
; [eval] (_single(14403) in module_names_0)
; [eval] _single(14403)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14403) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14403) module_names_0@75@01))
; [eval] (_single(12867) in module_names_0)
; [eval] _single(12867)
(push) ; 3
(assert (not (Set_in (_single<_Name> 12867) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 12867) module_names_0@75@01))
; [eval] (_single(14659) in module_names_0)
; [eval] _single(14659)
(push) ; 3
(assert (not (Set_in (_single<_Name> 14659) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 14659) module_names_0@75@01))
; [eval] (_single(13635) in module_names_0)
; [eval] _single(13635)
(push) ; 3
(assert (not (Set_in (_single<_Name> 13635) module_names_0@75@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 13635) module_names_0@75@01))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(238248090878455398231913)))
; [eval] (module_names_0 union Set(_single(238248090878455398231913)))
; [eval] Set(_single(238248090878455398231913))
; [eval] _single(238248090878455398231913)
(declare-const module_names_0@76@01 Set<_Name>)
(assert (=
  module_names_0@76@01
  (Set_union module_names_0@75@01 (Set_singleton (_single<_Name> 238248090878455398231913)))))
; [exec]
; label __end
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
