(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:29:40
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
(declare-const A<PyType> PyType)
(declare-fun Measure$create<Measure$> (Bool $Ref Int) Measure$)
(declare-fun Measure$guard<Bool> (Measure$) Bool)
(declare-fun Measure$key<Ref> (Measure$) $Ref)
(declare-fun Measure$value<Int> (Measure$) Int)
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
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___add__ ($Snap Int Int) Int)
(declare-fun int___add__%limited ($Snap Int Int) Int)
(declare-fun int___add__%stateless (Int Int) Bool)
(declare-fun int___add__%precondition ($Snap Int Int) Bool)
(declare-fun int___sub__ ($Snap Int Int) Int)
(declare-fun int___sub__%limited ($Snap Int Int) Int)
(declare-fun int___sub__%stateless (Int Int) Bool)
(declare-fun int___sub__%precondition ($Snap Int Int) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
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
(declare-fun MustTerminate_0%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded_0%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded_0%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
(declare-fun _MaySet_0%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> PSeq_basic<PyType> A<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as A<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as A<PyType>  PyType)) (as A<PyType>  PyType))))
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
  :qid |quant-u-3768|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-3769|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-3770|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3771|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3796|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3797|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@4@00) (bool___unbox__ s@$ box@4@00))
  :pattern ((bool___unbox__ s@$ box@4@00))
  :qid |quant-u-3772|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (bool___unbox__%stateless box@4@00)
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3773|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (bool___unbox__%limited s@$ box@4@00))) (=>
    (bool___unbox__%precondition s@$ box@4@00)
    (= (__prim__bool___box__%limited $Snap.unit result@5@00) box@4@00)))
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3798|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (bool___unbox__%limited s@$ box@4@00))) (=>
    (bool___unbox__%precondition s@$ box@4@00)
    (__prim__bool___box__%precondition $Snap.unit result@5@00)))
  :pattern ((bool___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3799|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@6@00)
    (__prim__bool___box__ s@$ prim@6@00))
  :pattern ((__prim__bool___box__ s@$ prim@6@00))
  :qid |quant-u-3774|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (__prim__bool___box__%stateless prim@6@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-3775|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (and
      (= (typeof<PyType> result@7@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@7@00) prim@6@00)
      (= (int___unbox__%limited $Snap.unit result@7@00) (ite prim@6@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-3800|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-3801|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (bool___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-3802|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Bool)) (!
  (let ((result@7@00 (__prim__bool___box__%limited s@$ prim@6@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@6@00)
    (int___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@6@00))
  :qid |quant-u-3803|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@8@00) (int___unbox__ s@$ box@8@00))
  :pattern ((int___unbox__ s@$ box@8@00))
  :qid |quant-u-3776|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (int___unbox__%stateless box@8@00)
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3777|)))
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
  :qid |quant-u-3804|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@9@00)))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3805|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-3806|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@10@00)
    (__prim__int___box__ s@$ prim@10@00))
  :pattern ((__prim__int___box__ s@$ prim@10@00))
  :qid |quant-u-3778|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (__prim__int___box__%stateless prim@10@00)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3779|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (and
      (= (typeof<PyType> result@11@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@11@00) prim@10@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3807|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3808|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (int___unbox__%precondition $Snap.unit result@11@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-3809|)))
(assert (forall ((s@$ $Snap) (r@12@00 $Ref)) (!
  (= (Level%limited s@$ r@12@00) (Level s@$ r@12@00))
  :pattern ((Level s@$ r@12@00))
  :qid |quant-u-3780|)))
(assert (forall ((s@$ $Snap) (r@12@00 $Ref)) (!
  (Level%stateless r@12@00)
  :pattern ((Level%limited s@$ r@12@00))
  :qid |quant-u-3781|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (=
    (str___create__%limited s@$ len@14@00 value@15@00)
    (str___create__ s@$ len@14@00 value@15@00))
  :pattern ((str___create__ s@$ len@14@00 value@15@00))
  :qid |quant-u-3782|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (str___create__%stateless len@14@00 value@15@00)
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3783|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (and
      (= (str___len__ $Snap.unit result@16@00) len@14@00)
      (= (str___val__ $Snap.unit result@16@00) value@15@00)
      (= (typeof<PyType> result@16@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3810|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (str___len__%precondition $Snap.unit result@16@00)))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3811|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) (=>
    (str___create__%precondition s@$ len@14@00 value@15@00)
    (str___val__%precondition $Snap.unit result@16@00)))
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3812|)))
(assert (forall ((s@$ $Snap) (len@14@00 Int) (value@15@00 Int)) (!
  (let ((result@16@00 (str___create__%limited s@$ len@14@00 value@15@00))) true)
  :pattern ((str___create__%limited s@$ len@14@00 value@15@00))
  :qid |quant-u-3813|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref) (other@18@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@17@00 other@18@00)
    (str___eq__ s@$ self@17@00 other@18@00))
  :pattern ((str___eq__ s@$ self@17@00 other@18@00))
  :qid |quant-u-3784|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref) (other@18@00 $Ref)) (!
  (str___eq__%stateless self@17@00 other@18@00)
  :pattern ((str___eq__%limited s@$ self@17@00 other@18@00))
  :qid |quant-u-3785|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref) (other@18@00 $Ref)) (!
  (let ((result@19@00 (str___eq__%limited s@$ self@17@00 other@18@00))) (=>
    (str___eq__%precondition s@$ self@17@00 other@18@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@17@00)
          (str___val__ $Snap.unit other@18@00))
        result@19@00)
      (=>
        result@19@00
        (=
          (str___len__ $Snap.unit self@17@00)
          (str___len__ $Snap.unit other@18@00))))))
  :pattern ((str___eq__%limited s@$ self@17@00 other@18@00))
  :qid |quant-u-3814|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref) (other@18@00 $Ref)) (!
  (let ((result@19@00 (str___eq__%limited s@$ self@17@00 other@18@00))) (=>
    (str___eq__%precondition s@$ self@17@00 other@18@00)
    (and
      (str___val__%precondition $Snap.unit self@17@00)
      (str___val__%precondition $Snap.unit other@18@00))))
  :pattern ((str___eq__%limited s@$ self@17@00 other@18@00))
  :qid |quant-u-3815|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref) (other@18@00 $Ref)) (!
  (let ((result@19@00 (str___eq__%limited s@$ self@17@00 other@18@00))) (=>
    (and (str___eq__%precondition s@$ self@17@00 other@18@00) result@19@00)
    (and
      (str___len__%precondition $Snap.unit self@17@00)
      (str___len__%precondition $Snap.unit other@18@00))))
  :pattern ((str___eq__%limited s@$ self@17@00 other@18@00))
  :qid |quant-u-3816|)))
(assert (forall ((s@$ $Snap) (self@20@00 Int) (other@21@00 Int)) (!
  (=
    (int___add__%limited s@$ self@20@00 other@21@00)
    (int___add__ s@$ self@20@00 other@21@00))
  :pattern ((int___add__ s@$ self@20@00 other@21@00))
  :qid |quant-u-3786|)))
(assert (forall ((s@$ $Snap) (self@20@00 Int) (other@21@00 Int)) (!
  (int___add__%stateless self@20@00 other@21@00)
  :pattern ((int___add__%limited s@$ self@20@00 other@21@00))
  :qid |quant-u-3787|)))
(assert (forall ((s@$ $Snap) (self@20@00 Int) (other@21@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@20@00 other@21@00)
    (= (int___add__ s@$ self@20@00 other@21@00) (+ self@20@00 other@21@00)))
  :pattern ((int___add__ s@$ self@20@00 other@21@00))
  :qid |quant-u-3817|)))
(assert (forall ((s@$ $Snap) (self@20@00 Int) (other@21@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@20@00 other@21@00))
  :qid |quant-u-3818|)))
(assert (forall ((s@$ $Snap) (self@23@00 Int) (other@24@00 Int)) (!
  (=
    (int___sub__%limited s@$ self@23@00 other@24@00)
    (int___sub__ s@$ self@23@00 other@24@00))
  :pattern ((int___sub__ s@$ self@23@00 other@24@00))
  :qid |quant-u-3788|)))
(assert (forall ((s@$ $Snap) (self@23@00 Int) (other@24@00 Int)) (!
  (int___sub__%stateless self@23@00 other@24@00)
  :pattern ((int___sub__%limited s@$ self@23@00 other@24@00))
  :qid |quant-u-3789|)))
(assert (forall ((s@$ $Snap) (self@23@00 Int) (other@24@00 Int)) (!
  (=>
    (int___sub__%precondition s@$ self@23@00 other@24@00)
    (= (int___sub__ s@$ self@23@00 other@24@00) (- self@23@00 other@24@00)))
  :pattern ((int___sub__ s@$ self@23@00 other@24@00))
  :qid |quant-u-3819|)))
(assert (forall ((s@$ $Snap) (self@23@00 Int) (other@24@00 Int)) (!
  true
  :pattern ((int___sub__ s@$ self@23@00 other@24@00))
  :qid |quant-u-3820|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3790|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3791|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (other@28@00 $Ref)) (!
  (=
    (int___eq__%limited s@$ self@27@00 other@28@00)
    (int___eq__ s@$ self@27@00 other@28@00))
  :pattern ((int___eq__ s@$ self@27@00 other@28@00))
  :qid |quant-u-3792|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (other@28@00 $Ref)) (!
  (int___eq__%stateless self@27@00 other@28@00)
  :pattern ((int___eq__%limited s@$ self@27@00 other@28@00))
  :qid |quant-u-3793|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (other@28@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@27@00 other@28@00)
    (=
      (int___eq__ s@$ self@27@00 other@28@00)
      (=
        (int___unbox__ $Snap.unit self@27@00)
        (int___unbox__ $Snap.unit other@28@00))))
  :pattern ((int___eq__ s@$ self@27@00 other@28@00))
  :qid |quant-u-3821|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (other@28@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@27@00 other@28@00)
    (and
      (int___unbox__%precondition $Snap.unit self@27@00)
      (int___unbox__%precondition $Snap.unit other@28@00)))
  :pattern ((int___eq__ s@$ self@27@00 other@28@00))
  :qid |quant-u-3822|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3794|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3795|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- A___init__ ----------
(declare-const p1@0@01 Bool)
(declare-const p2@1@01 Bool)
(declare-const _cthread_156@2@01 $Ref)
(declare-const _cthread_156_0@3@01 $Ref)
(declare-const _caller_measures_156@4@01 Seq<Measure$>)
(declare-const _caller_measures_156_0@5@01 Seq<Measure$>)
(declare-const _residue_156@6@01 $Perm)
(declare-const _residue_156_0@7@01 $Perm)
(declare-const self@8@01 $Ref)
(declare-const self_3@9@01 $Ref)
(declare-const _current_wait_level_156@10@01 $Perm)
(declare-const _current_wait_level_156_0@11@01 $Perm)
(declare-const p1@12@01 Bool)
(declare-const p2@13@01 Bool)
(declare-const _cthread_156@14@01 $Ref)
(declare-const _cthread_156_0@15@01 $Ref)
(declare-const _caller_measures_156@16@01 Seq<Measure$>)
(declare-const _caller_measures_156_0@17@01 Seq<Measure$>)
(declare-const _residue_156@18@01 $Perm)
(declare-const _residue_156_0@19@01 $Perm)
(declare-const self@20@01 $Ref)
(declare-const self_3@21@01 $Ref)
(declare-const _current_wait_level_156@22@01 $Perm)
(declare-const _current_wait_level_156_0@23@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(assert (= ($Snap.first $t@24@01) $Snap.unit))
; [eval] p1 ==> _cthread_156 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | p1@12@01 | live]
; [else-branch: 0 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | p1@12@01]
(assert p1@12@01)
; [eval] _cthread_156 != null
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1@12@01) p1@12@01))
(assert (=> p1@12@01 (not (= _cthread_156@14@01 $Ref.null))))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
; [eval] p2 ==> _cthread_156_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | p2@13@01 | live]
; [else-branch: 1 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | p2@13@01]
(assert p2@13@01)
; [eval] _cthread_156_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 1 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2@13@01) p2@13@01))
(assert (=> p2@13@01 (not (= _cthread_156_0@15@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@24@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@24@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@24@01))) $Snap.unit))
; [eval] p1 ==> issubtype(typeof(_cthread_156), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | p1@12@01 | live]
; [else-branch: 2 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | p1@12@01]
(assert p1@12@01)
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 2 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1@12@01
  (issubtype<Bool> (typeof<PyType> _cthread_156@14@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@24@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(_cthread_156_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | p2@13@01 | live]
; [else-branch: 3 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | p2@13@01]
(assert p2@13@01)
; [eval] issubtype(typeof(_cthread_156_0), Thread_0())
; [eval] typeof(_cthread_156_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 3 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2@13@01
  (issubtype<Bool> (typeof<PyType> _cthread_156_0@15@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
; [eval] p1 ==> self != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | p1@12@01 | live]
; [else-branch: 4 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | p1@12@01]
(assert p1@12@01)
; [eval] self != null
(pop) ; 3
(push) ; 3
; [else-branch: 4 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> p1@12@01 (not (= self@20@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  $Snap.unit))
; [eval] p2 ==> self_3 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | p2@13@01 | live]
; [else-branch: 5 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | p2@13@01]
(assert p2@13@01)
; [eval] self_3 != null
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> p2@13@01 (not (= self_3@21@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not p1@12@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | p1@12@01 | live]
; [else-branch: 6 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 6 | p1@12@01]
(assert p1@12@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | p2@13@01 | live]
; [else-branch: 7 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | p2@13@01]
(assert p2@13@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | p1@12@01 | live]
; [else-branch: 8 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | p1@12@01]
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | p2@13@01 | live]
; [else-branch: 9 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 9 | p2@13@01]
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(self), A())
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | p1@12@01 | live]
; [else-branch: 10 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 10 | p1@12@01]
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p1@12@01
  (issubtype<Bool> (typeof<PyType> self@20@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(self_3), A())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | p2@13@01 | live]
; [else-branch: 11 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 11 | p2@13@01]
; [eval] issubtype(typeof(self_3), A())
; [eval] typeof(self_3)
; [eval] A()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p2@13@01
  (issubtype<Bool> (typeof<PyType> self_3@21@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  $Snap.unit))
; [eval] p1 ==> self != null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | p1@12@01 | live]
; [else-branch: 12 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 12 | p1@12@01]
; [eval] self != null
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  $Snap.unit))
; [eval] p2 ==> self_3 != null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | p2@13@01 | live]
; [else-branch: 13 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 13 | p2@13@01]
; [eval] self_3 != null
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | p1@12@01 | live]
; [else-branch: 14 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 14 | p1@12@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | p2@13@01 | live]
; [else-branch: 15 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 15 | p2@13@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (= ($Snap.first $t@25@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | p1@12@01 | live]
; [else-branch: 16 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 16 | p1@12@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 9
; [then-branch: 17 | False | live]
; [else-branch: 17 | True | live]
(push) ; 10
; [then-branch: 17 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 17 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 11
; [then-branch: 18 | False | live]
; [else-branch: 18 | True | live]
(push) ; 12
; [then-branch: 18 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 18 | True]
; [eval] _residue_156 <= _current_wait_level_156
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p1@12@01 (<= _residue_156@18@01 _current_wait_level_156@22@01)))
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (= ($Snap.first ($Snap.second $t@25@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | p2@13@01 | live]
; [else-branch: 19 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 19 | p2@13@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 9
; [then-branch: 20 | False | live]
; [else-branch: 20 | True | live]
(push) ; 10
; [then-branch: 20 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 20 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 11
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 12
; [then-branch: 21 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 21 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p2@13@01 (<= _residue_156_0@19@01 _current_wait_level_156_0@23@01)))
(assert (=
  ($Snap.second ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | p1@12@01 | live]
; [else-branch: 22 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 22 | p1@12@01]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | p2@13@01 | live]
; [else-branch: 23 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 23 | p2@13@01]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [exec]
; var _err: Ref
(declare-const _err@26@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@27@01 $Ref)
; [exec]
; var self_1: Ref
(declare-const self_1@28@01 $Ref)
; [exec]
; var self_1_0: Ref
(declare-const self_1_0@29@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@30@01 $Perm)
; [exec]
; var _cwl_156_0: Perm
(declare-const _cwl_156_0@31@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@32@01 Seq<Measure$>)
; [exec]
; var _method_measures_156_0: Seq[Measure$]
(declare-const _method_measures_156_0@33@01 Seq<Measure$>)
; [exec]
; var p1_0: Bool
(declare-const p1_0@34@01 Bool)
; [exec]
; var p2_0: Bool
(declare-const p2_0@35@01 Bool)
; [exec]
; var p3: Bool
(declare-const p3@36@01 Bool)
; [exec]
; var p4: Bool
(declare-const p4@37@01 Bool)
; [exec]
; var p1_1: Bool
(declare-const p1_1@38@01 Bool)
; [exec]
; var p2_1: Bool
(declare-const p2_1@39@01 Bool)
; [exec]
; var p3_0: Bool
(declare-const p3_0@40@01 Bool)
; [exec]
; var p4_0: Bool
(declare-const p4_0@41@01 Bool)
; [exec]
; inhale p1
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | p1@12@01 | live]
; [else-branch: 24 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 24 | p1@12@01]
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == A()
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 $Snap.unit))
; [eval] typeof(self) == A()
; [eval] typeof(self)
; [eval] A()
(assert (= (typeof<PyType> self@20@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_1 := self
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | p2@13@01 | live]
; [else-branch: 25 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 25 | p2@13@01]
; [exec]
; _method_measures_156_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_3) == A()
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] typeof(self_3) == A()
; [eval] typeof(self_3)
; [eval] A()
(assert (= (typeof<PyType> self_3@21@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err_0 := null
; [exec]
; self_1_0 := self_3
; [exec]
; p1_0 := p1 && perm(_MaySet(self_1, 6381377)) > none
; [eval] p1 && perm(_MaySet(self_1, 6381377)) > none
(set-option :timeout 0)
(push) ; 9
; [then-branch: 26 | !(p1@12@01) | live]
; [else-branch: 26 | p1@12@01 | live]
(push) ; 10
; [then-branch: 26 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 10
(push) ; 10
; [else-branch: 26 | p1@12@01]
; [eval] perm(_MaySet(self_1, 6381377)) > none
; [eval] perm(_MaySet(self_1, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or p1@12@01 (not p1@12@01)))
; [exec]
; p2_0 := p2 && perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] p2 && perm(_MaySet_0(self_1_0, 6381377)) > none
(push) ; 9
; [then-branch: 27 | !(p2@13@01) | live]
; [else-branch: 27 | p2@13@01 | live]
(push) ; 10
; [then-branch: 27 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 10
(push) ; 10
; [else-branch: 27 | p2@13@01]
; [eval] perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_1_0, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or p2@13@01 (not p2@13@01)))
; [exec]
; p3 := p1 && !(perm(_MaySet(self_1, 6381377)) > none)
; [eval] p1 && !(perm(_MaySet(self_1, 6381377)) > none)
(push) ; 9
; [then-branch: 28 | !(p1@12@01) | live]
; [else-branch: 28 | p1@12@01 | live]
(push) ; 10
; [then-branch: 28 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 10
(push) ; 10
; [else-branch: 28 | p1@12@01]
; [eval] !(perm(_MaySet(self_1, 6381377)) > none)
; [eval] perm(_MaySet(self_1, 6381377)) > none
; [eval] perm(_MaySet(self_1, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p4 := p2 && !(perm(_MaySet_0(self_1_0, 6381377)) > none)
; [eval] p2 && !(perm(_MaySet_0(self_1_0, 6381377)) > none)
(push) ; 9
; [then-branch: 29 | !(p2@13@01) | live]
; [else-branch: 29 | p2@13@01 | live]
(push) ; 10
; [then-branch: 29 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 10
(push) ; 10
; [else-branch: 29 | p2@13@01]
; [eval] !(perm(_MaySet_0(self_1_0, 6381377)) > none)
; [eval] perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_1_0, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | p1@12@01 | live]
; [else-branch: 30 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 30 | p1@12@01]
; [exec]
; exhale acc(_MaySet(self_1, 6381377), write)
; [exec]
; inhale acc(self_1.A_a, write)
(declare-const $t@45@01 $Ref)
(assert (not (= self@20@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | p2@13@01 | live]
; [else-branch: 31 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 31 | p2@13@01]
; [exec]
; exhale acc(_MaySet_0(self_1_0, 6381377), write)
; [exec]
; inhale acc(self_1_0.A_ap, write)
(declare-const $t@46@01 $Ref)
(assert (not (= self_3@21@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | p1@12@01 | live]
; [else-branch: 32 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 32 | p1@12@01]
; [exec]
; self_1.A_a := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const A_a@47@01 $Ref)
(assert (= A_a@47@01 (__prim__int___box__ $Snap.unit 0)))
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | p2@13@01 | live]
; [else-branch: 33 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 33 | p2@13@01]
; [exec]
; self_1_0.A_ap := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 13
(pop) ; 13
; Joined path conditions
(declare-const A_ap@48@01 $Ref)
(assert (= A_ap@48@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; p1_1 := p1 && perm(_MaySet(self_1, 6446913)) > none
; [eval] p1 && perm(_MaySet(self_1, 6446913)) > none
(push) ; 13
; [then-branch: 34 | !(p1@12@01) | live]
; [else-branch: 34 | p1@12@01 | live]
(push) ; 14
; [then-branch: 34 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 14
(push) ; 14
; [else-branch: 34 | p1@12@01]
; [eval] perm(_MaySet(self_1, 6446913)) > none
; [eval] perm(_MaySet(self_1, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p2_1 := p2 && perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] p2 && perm(_MaySet_0(self_1_0, 6446913)) > none
(push) ; 13
; [then-branch: 35 | !(p2@13@01) | live]
; [else-branch: 35 | p2@13@01 | live]
(push) ; 14
; [then-branch: 35 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 14
(push) ; 14
; [else-branch: 35 | p2@13@01]
; [eval] perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_1_0, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p3_0 := p1 && !(perm(_MaySet(self_1, 6446913)) > none)
; [eval] p1 && !(perm(_MaySet(self_1, 6446913)) > none)
(push) ; 13
; [then-branch: 36 | !(p1@12@01) | live]
; [else-branch: 36 | p1@12@01 | live]
(push) ; 14
; [then-branch: 36 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 14
(push) ; 14
; [else-branch: 36 | p1@12@01]
; [eval] !(perm(_MaySet(self_1, 6446913)) > none)
; [eval] perm(_MaySet(self_1, 6446913)) > none
; [eval] perm(_MaySet(self_1, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p4_0 := p2 && !(perm(_MaySet_0(self_1_0, 6446913)) > none)
; [eval] p2 && !(perm(_MaySet_0(self_1_0, 6446913)) > none)
(push) ; 13
; [then-branch: 37 | !(p2@13@01) | live]
; [else-branch: 37 | p2@13@01 | live]
(push) ; 14
; [then-branch: 37 | !(p2@13@01)]
(assert (not p2@13@01))
(pop) ; 14
(push) ; 14
; [else-branch: 37 | p2@13@01]
; [eval] !(perm(_MaySet_0(self_1_0, 6446913)) > none)
; [eval] perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_1_0, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | p1@12@01 | live]
; [else-branch: 38 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 38 | p1@12@01]
; [exec]
; exhale acc(_MaySet(self_1, 6446913), write)
; [exec]
; inhale acc(self_1.A_b, write)
(declare-const $t@49@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | p2@13@01 | live]
; [else-branch: 39 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 39 | p2@13@01]
; [exec]
; exhale acc(_MaySet_0(self_1_0, 6446913), write)
; [exec]
; inhale acc(self_1_0.A_bp, write)
(declare-const $t@50@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | p1@12@01 | live]
; [else-branch: 40 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 40 | p1@12@01]
; [exec]
; self_1.A_b := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(declare-const A_b@51@01 $Ref)
(assert (= A_b@51@01 (__prim__int___box__ $Snap.unit 0)))
(push) ; 16
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | p2@13@01 | live]
; [else-branch: 41 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 41 | p2@13@01]
; [exec]
; self_1_0.A_bp := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 17
(pop) ; 17
; Joined path conditions
(declare-const A_bp@52@01 $Ref)
(assert (= A_bp@52@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | p1@12@01 | live]
; [else-branch: 42 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 42 | p1@12@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> true
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | p2@13@01 | live]
; [else-branch: 43 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 43 | p2@13@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | p1@12@01 | live]
; [else-branch: 44 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 44 | p1@12@01]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 19
; [then-branch: 45 | False | live]
; [else-branch: 45 | True | live]
(push) ; 20
; [then-branch: 45 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 45 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 21
; [then-branch: 46 | False | live]
; [else-branch: 46 | True | live]
(push) ; 22
; [then-branch: 46 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 46 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 23
; [then-branch: 47 | False | live]
; [else-branch: 47 | True | live]
(push) ; 24
; [then-branch: 47 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 47 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | p2@13@01 | live]
; [else-branch: 48 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 48 | p2@13@01]
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false)
(push) ; 19
; [then-branch: 49 | False | live]
; [else-branch: 49 | True | live]
(push) ; 20
; [then-branch: 49 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 49 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false)
(push) ; 21
; [then-branch: 50 | False | live]
; [else-branch: 50 | True | live]
(push) ; 22
; [then-branch: 50 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 50 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false)
(push) ; 23
; [then-branch: 51 | False | live]
; [else-branch: 51 | True | live]
(push) ; 24
; [then-branch: 51 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 51 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
; [eval] !p2
; [then-branch: 52 | !(p2@13@01) | dead]
; [else-branch: 52 | p2@13@01 | live]
(push) ; 16
; [else-branch: 52 | p2@13@01]
(pop) ; 16
(pop) ; 15
; [eval] !p1
; [then-branch: 53 | !(p1@12@01) | dead]
; [else-branch: 53 | p1@12@01 | live]
(push) ; 15
; [else-branch: 53 | p1@12@01]
(pop) ; 15
(pop) ; 14
; [eval] !p2_1
; [then-branch: 54 | !(p2@13@01) | dead]
; [else-branch: 54 | p2@13@01 | live]
(push) ; 14
; [else-branch: 54 | p2@13@01]
(pop) ; 14
(pop) ; 13
; [eval] !p1_1
; [then-branch: 55 | !(p1@12@01) | dead]
; [else-branch: 55 | p1@12@01 | live]
(push) ; 13
; [else-branch: 55 | p1@12@01]
(pop) ; 13
(pop) ; 12
; [eval] !p2
; [then-branch: 56 | !(p2@13@01) | dead]
; [else-branch: 56 | p2@13@01 | live]
(push) ; 12
; [else-branch: 56 | p2@13@01]
(pop) ; 12
(pop) ; 11
; [eval] !p1
; [then-branch: 57 | !(p1@12@01) | dead]
; [else-branch: 57 | p1@12@01 | live]
(push) ; 11
; [else-branch: 57 | p1@12@01]
(pop) ; 11
(pop) ; 10
; [eval] !p2_0
; [then-branch: 58 | !(p2@13@01) | dead]
; [else-branch: 58 | p2@13@01 | live]
(push) ; 10
; [else-branch: 58 | p2@13@01]
(pop) ; 10
(pop) ; 9
; [eval] !p1_0
; [then-branch: 59 | !(p1@12@01) | dead]
; [else-branch: 59 | p1@12@01 | live]
(push) ; 9
; [else-branch: 59 | p1@12@01]
(pop) ; 9
(pop) ; 8
; [eval] !p2
; [then-branch: 60 | !(p2@13@01) | dead]
; [else-branch: 60 | p2@13@01 | live]
(push) ; 8
; [else-branch: 60 | p2@13@01]
(pop) ; 8
(pop) ; 7
; [eval] !p1
; [then-branch: 61 | !(p1@12@01) | dead]
; [else-branch: 61 | p1@12@01 | live]
(push) ; 7
; [else-branch: 61 | p1@12@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(p2@13@01)]
(assert (not p2@13@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | p1@12@01 | live]
; [else-branch: 62 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 62 | p1@12@01]
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
; [then-branch: 63 | p2@13@01 | dead]
; [else-branch: 63 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 63 | !(p2@13@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(self), A())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | p1@12@01 | live]
; [else-branch: 64 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 64 | p1@12@01]
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p1@12@01
  (issubtype<Bool> (typeof<PyType> self@20@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(self_3), A())
(push) ; 6
; [then-branch: 65 | p2@13@01 | dead]
; [else-branch: 65 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 65 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  $Snap.unit))
; [eval] p1 ==> self != null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | p1@12@01 | live]
; [else-branch: 66 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 66 | p1@12@01]
; [eval] self != null
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  $Snap.unit))
; [eval] p2 ==> self_3 != null
(push) ; 6
; [then-branch: 67 | p2@13@01 | dead]
; [else-branch: 67 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 67 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | p1@12@01 | live]
; [else-branch: 68 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 68 | p1@12@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 6
; [then-branch: 69 | p2@13@01 | dead]
; [else-branch: 69 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 69 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (= ($Snap.first $t@53@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | p1@12@01 | live]
; [else-branch: 70 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 70 | p1@12@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 9
; [then-branch: 71 | False | live]
; [else-branch: 71 | True | live]
(push) ; 10
; [then-branch: 71 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 71 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(push) ; 11
; [then-branch: 72 | False | live]
; [else-branch: 72 | True | live]
(push) ; 12
; [then-branch: 72 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 72 | True]
; [eval] _residue_156 <= _current_wait_level_156
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p1@12@01 (<= _residue_156@18@01 _current_wait_level_156@22@01)))
(assert (=
  ($Snap.second $t@53@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@01))
    ($Snap.second ($Snap.second $t@53@01)))))
(assert (= ($Snap.first ($Snap.second $t@53@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 7
; [then-branch: 73 | p2@13@01 | dead]
; [else-branch: 73 | !(p2@13@01) | live]
(push) ; 8
; [else-branch: 73 | !(p2@13@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second $t@53@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@53@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@53@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | p1@12@01 | live]
; [else-branch: 74 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 74 | p1@12@01]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@53@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 7
; [then-branch: 75 | p2@13@01 | dead]
; [else-branch: 75 | !(p2@13@01) | live]
(push) ; 8
; [else-branch: 75 | !(p2@13@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [exec]
; var _err: Ref
(declare-const _err@54@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@55@01 $Ref)
; [exec]
; var self_1: Ref
(declare-const self_1@56@01 $Ref)
; [exec]
; var self_1_0: Ref
(declare-const self_1_0@57@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@58@01 $Perm)
; [exec]
; var _cwl_156_0: Perm
(declare-const _cwl_156_0@59@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@60@01 Seq<Measure$>)
; [exec]
; var _method_measures_156_0: Seq[Measure$]
(declare-const _method_measures_156_0@61@01 Seq<Measure$>)
; [exec]
; var p1_0: Bool
(declare-const p1_0@62@01 Bool)
; [exec]
; var p2_0: Bool
(declare-const p2_0@63@01 Bool)
; [exec]
; var p3: Bool
(declare-const p3@64@01 Bool)
; [exec]
; var p4: Bool
(declare-const p4@65@01 Bool)
; [exec]
; var p1_1: Bool
(declare-const p1_1@66@01 Bool)
; [exec]
; var p2_1: Bool
(declare-const p2_1@67@01 Bool)
; [exec]
; var p3_0: Bool
(declare-const p3_0@68@01 Bool)
; [exec]
; var p4_0: Bool
(declare-const p4_0@69@01 Bool)
; [exec]
; inhale p1
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | p1@12@01 | live]
; [else-branch: 76 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 76 | p1@12@01]
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == A()
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 $Snap.unit))
; [eval] typeof(self) == A()
; [eval] typeof(self)
; [eval] A()
(assert (= (typeof<PyType> self@20@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_1 := self
; [then-branch: 77 | p2@13@01 | dead]
; [else-branch: 77 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 77 | !(p2@13@01)]
(pop) ; 8
; [eval] !p2
(push) ; 8
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | !(p2@13@01) | live]
; [else-branch: 78 | p2@13@01 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 78 | !(p2@13@01)]
; [exec]
; p1_0 := p1 && perm(_MaySet(self_1, 6381377)) > none
; [eval] p1 && perm(_MaySet(self_1, 6381377)) > none
(push) ; 9
; [then-branch: 79 | !(p1@12@01) | live]
; [else-branch: 79 | p1@12@01 | live]
(push) ; 10
; [then-branch: 79 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 10
(push) ; 10
; [else-branch: 79 | p1@12@01]
; [eval] perm(_MaySet(self_1, 6381377)) > none
; [eval] perm(_MaySet(self_1, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or p1@12@01 (not p1@12@01)))
; [exec]
; p2_0 := p2 && perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] p2 && perm(_MaySet_0(self_1_0, 6381377)) > none
(push) ; 9
; [then-branch: 80 | !(p2@13@01) | live]
; [else-branch: 80 | p2@13@01 | live]
(push) ; 10
; [then-branch: 80 | !(p2@13@01)]
(pop) ; 10
(push) ; 10
; [else-branch: 80 | p2@13@01]
(assert p2@13@01)
; [eval] perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_1_0, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or p2@13@01 (not p2@13@01)))
; [exec]
; p3 := p1 && !(perm(_MaySet(self_1, 6381377)) > none)
; [eval] p1 && !(perm(_MaySet(self_1, 6381377)) > none)
(push) ; 9
; [then-branch: 81 | !(p1@12@01) | live]
; [else-branch: 81 | p1@12@01 | live]
(push) ; 10
; [then-branch: 81 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 10
(push) ; 10
; [else-branch: 81 | p1@12@01]
; [eval] !(perm(_MaySet(self_1, 6381377)) > none)
; [eval] perm(_MaySet(self_1, 6381377)) > none
; [eval] perm(_MaySet(self_1, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p4 := p2 && !(perm(_MaySet_0(self_1_0, 6381377)) > none)
; [eval] p2 && !(perm(_MaySet_0(self_1_0, 6381377)) > none)
(push) ; 9
; [then-branch: 82 | !(p2@13@01) | live]
; [else-branch: 82 | p2@13@01 | live]
(push) ; 10
; [then-branch: 82 | !(p2@13@01)]
(pop) ; 10
(push) ; 10
; [else-branch: 82 | p2@13@01]
(assert p2@13@01)
; [eval] !(perm(_MaySet_0(self_1_0, 6381377)) > none)
; [eval] perm(_MaySet_0(self_1_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_1_0, 6381377))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | p1@12@01 | live]
; [else-branch: 83 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 83 | p1@12@01]
; [exec]
; exhale acc(_MaySet(self_1, 6381377), write)
; [exec]
; inhale acc(self_1.A_a, write)
(declare-const $t@72@01 $Ref)
(assert (not (= self@20@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [then-branch: 84 | False | dead]
; [else-branch: 84 | True | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 84 | True]
(pop) ; 10
; [eval] !p2_0
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | True | live]
; [else-branch: 85 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 85 | True]
(push) ; 11
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | p1@12@01 | live]
; [else-branch: 86 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 86 | p1@12@01]
; [exec]
; self_1.A_a := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const A_a@73@01 $Ref)
(assert (= A_a@73@01 (__prim__int___box__ $Snap.unit 0)))
; [then-branch: 87 | p2@13@01 | dead]
; [else-branch: 87 | !(p2@13@01) | live]
(push) ; 12
; [else-branch: 87 | !(p2@13@01)]
(pop) ; 12
; [eval] !p2
(push) ; 12
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | !(p2@13@01) | live]
; [else-branch: 88 | p2@13@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 88 | !(p2@13@01)]
; [exec]
; p1_1 := p1 && perm(_MaySet(self_1, 6446913)) > none
; [eval] p1 && perm(_MaySet(self_1, 6446913)) > none
(push) ; 13
; [then-branch: 89 | !(p1@12@01) | live]
; [else-branch: 89 | p1@12@01 | live]
(push) ; 14
; [then-branch: 89 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 14
(push) ; 14
; [else-branch: 89 | p1@12@01]
; [eval] perm(_MaySet(self_1, 6446913)) > none
; [eval] perm(_MaySet(self_1, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p2_1 := p2 && perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] p2 && perm(_MaySet_0(self_1_0, 6446913)) > none
(push) ; 13
; [then-branch: 90 | !(p2@13@01) | live]
; [else-branch: 90 | p2@13@01 | live]
(push) ; 14
; [then-branch: 90 | !(p2@13@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 90 | p2@13@01]
(assert p2@13@01)
; [eval] perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_1_0, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p3_0 := p1 && !(perm(_MaySet(self_1, 6446913)) > none)
; [eval] p1 && !(perm(_MaySet(self_1, 6446913)) > none)
(push) ; 13
; [then-branch: 91 | !(p1@12@01) | live]
; [else-branch: 91 | p1@12@01 | live]
(push) ; 14
; [then-branch: 91 | !(p1@12@01)]
(assert (not p1@12@01))
(pop) ; 14
(push) ; 14
; [else-branch: 91 | p1@12@01]
; [eval] !(perm(_MaySet(self_1, 6446913)) > none)
; [eval] perm(_MaySet(self_1, 6446913)) > none
; [eval] perm(_MaySet(self_1, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p4_0 := p2 && !(perm(_MaySet_0(self_1_0, 6446913)) > none)
; [eval] p2 && !(perm(_MaySet_0(self_1_0, 6446913)) > none)
(push) ; 13
; [then-branch: 92 | !(p2@13@01) | live]
; [else-branch: 92 | p2@13@01 | live]
(push) ; 14
; [then-branch: 92 | !(p2@13@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 92 | p2@13@01]
(assert p2@13@01)
; [eval] !(perm(_MaySet_0(self_1_0, 6446913)) > none)
; [eval] perm(_MaySet_0(self_1_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_1_0, 6446913))
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(push) ; 13
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | p1@12@01 | live]
; [else-branch: 93 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 93 | p1@12@01]
; [exec]
; exhale acc(_MaySet(self_1, 6446913), write)
; [exec]
; inhale acc(self_1.A_b, write)
(declare-const $t@74@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [then-branch: 94 | False | dead]
; [else-branch: 94 | True | live]
(set-option :timeout 0)
(push) ; 14
; [else-branch: 94 | True]
(pop) ; 14
; [eval] !p2_1
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | True | live]
; [else-branch: 95 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 95 | True]
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | p1@12@01 | live]
; [else-branch: 96 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 96 | p1@12@01]
; [exec]
; self_1.A_b := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 16
(pop) ; 16
; Joined path conditions
(declare-const A_b@75@01 $Ref)
(assert (= A_b@75@01 (__prim__int___box__ $Snap.unit 0)))
; [then-branch: 97 | p2@13@01 | dead]
; [else-branch: 97 | !(p2@13@01) | live]
(push) ; 16
; [else-branch: 97 | !(p2@13@01)]
(pop) ; 16
; [eval] !p2
(push) ; 16
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | !(p2@13@01) | live]
; [else-branch: 98 | p2@13@01 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 98 | !(p2@13@01)]
; [exec]
; assert true
; [eval] p1 ==> true
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | p1@12@01 | live]
; [else-branch: 99 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 99 | p1@12@01]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> true
(push) ; 17
; [then-branch: 100 | p2@13@01 | dead]
; [else-branch: 100 | !(p2@13@01) | live]
(push) ; 18
; [else-branch: 100 | !(p2@13@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p1 ==> (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
(push) ; 17
(push) ; 18
(set-option :timeout 10)
(assert (not (not p1@12@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | p1@12@01 | live]
; [else-branch: 101 | !(p1@12@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 101 | p1@12@01]
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
(push) ; 19
; [then-branch: 102 | False | live]
; [else-branch: 102 | True | live]
(push) ; 20
; [then-branch: 102 | False]
(assert false)
(pop) ; 20
(push) ; 20
; [else-branch: 102 | True]
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
(push) ; 21
; [then-branch: 103 | False | live]
; [else-branch: 103 | True | live]
(push) ; 22
; [then-branch: 103 | False]
(assert false)
(pop) ; 22
(push) ; 22
; [else-branch: 103 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
(push) ; 23
; [then-branch: 104 | False | live]
; [else-branch: 104 | True | live]
(push) ; 24
; [then-branch: 104 | False]
(assert false)
(pop) ; 24
(push) ; 24
; [else-branch: 104 | True]
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 24
(pop) ; 23
; Joined path conditions
; Joined path conditions
(pop) ; 22
(pop) ; 21
; Joined path conditions
; Joined path conditions
(pop) ; 20
(pop) ; 19
; Joined path conditions
; Joined path conditions
(pop) ; 18
(pop) ; 17
; Joined path conditions
; [eval] p2 ==> (forperm _r_0: Ref [MustInvokeBounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [MustInvokeUnbounded_0(_r_0)] :: false) && ((forperm _r_0: Ref [_r_0.MustReleaseBoundedp] :: false) && (forperm _r_0: Ref [_r_0.MustReleaseUnboundedp] :: false)))
(push) ; 17
; [then-branch: 105 | p2@13@01 | dead]
; [else-branch: 105 | !(p2@13@01) | live]
(push) ; 18
; [else-branch: 105 | !(p2@13@01)]
(pop) ; 18
(pop) ; 17
; Joined path conditions
(pop) ; 16
(pop) ; 15
; [eval] !p1
; [then-branch: 106 | !(p1@12@01) | dead]
; [else-branch: 106 | p1@12@01 | live]
(push) ; 15
; [else-branch: 106 | p1@12@01]
(pop) ; 15
(pop) ; 14
(pop) ; 13
; [eval] !p1_1
; [then-branch: 107 | !(p1@12@01) | dead]
; [else-branch: 107 | p1@12@01 | live]
(push) ; 13
; [else-branch: 107 | p1@12@01]
(pop) ; 13
(pop) ; 12
(pop) ; 11
; [eval] !p1
; [then-branch: 108 | !(p1@12@01) | dead]
; [else-branch: 108 | p1@12@01 | live]
(push) ; 11
; [else-branch: 108 | p1@12@01]
(pop) ; 11
(pop) ; 10
(pop) ; 9
; [eval] !p1_0
; [then-branch: 109 | !(p1@12@01) | dead]
; [else-branch: 109 | p1@12@01 | live]
(push) ; 9
; [else-branch: 109 | p1@12@01]
(pop) ; 9
(pop) ; 8
(pop) ; 7
; [eval] !p1
; [then-branch: 110 | !(p1@12@01) | dead]
; [else-branch: 110 | p1@12@01 | live]
(push) ; 7
; [else-branch: 110 | p1@12@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 6 | !(p1@12@01)]
(assert (not p1@12@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2@13@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | p2@13@01 | live]
; [else-branch: 111 | !(p2@13@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 111 | p2@13@01]
(assert p2@13@01)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
; [then-branch: 112 | p1@12@01 | dead]
; [else-branch: 112 | !(p1@12@01) | live]
(push) ; 4
; [else-branch: 112 | !(p1@12@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | p2@13@01 | live]
; [else-branch: 113 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 113 | p2@13@01]
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(self), A())
(set-option :timeout 0)
(push) ; 6
; [then-branch: 114 | p1@12@01 | dead]
; [else-branch: 114 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 114 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(self_3), A())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 115 | p2@13@01 | live]
; [else-branch: 115 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 115 | p2@13@01]
; [eval] issubtype(typeof(self_3), A())
; [eval] typeof(self_3)
; [eval] A()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p2@13@01
  (issubtype<Bool> (typeof<PyType> self_3@21@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  $Snap.unit))
; [eval] p1 ==> self != null
(push) ; 6
; [then-branch: 116 | p1@12@01 | dead]
; [else-branch: 116 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 116 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  $Snap.unit))
; [eval] p2 ==> self_3 != null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | p2@13@01 | live]
; [else-branch: 117 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 117 | p2@13@01]
; [eval] self_3 != null
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 6
; [then-branch: 118 | p1@12@01 | dead]
; [else-branch: 118 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 118 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | p2@13@01 | live]
; [else-branch: 119 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 119 | p2@13@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 ($Snap.combine ($Snap.first $t@76@01) ($Snap.second $t@76@01))))
(assert (= ($Snap.first $t@76@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 7
; [then-branch: 120 | p1@12@01 | dead]
; [else-branch: 120 | !(p1@12@01) | live]
(push) ; 8
; [else-branch: 120 | !(p1@12@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second $t@76@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@76@01))
    ($Snap.second ($Snap.second $t@76@01)))))
(assert (= ($Snap.first ($Snap.second $t@76@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | p2@13@01 | live]
; [else-branch: 121 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 121 | p2@13@01]
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
; [eval] (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 9
; [then-branch: 122 | False | live]
; [else-branch: 122 | True | live]
(push) ; 10
; [then-branch: 122 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 122 | True]
; [eval] (forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0)
(push) ; 11
; [then-branch: 123 | False | live]
; [else-branch: 123 | True | live]
(push) ; 12
; [then-branch: 123 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 123 | True]
; [eval] _residue_156_0 <= _current_wait_level_156_0
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p2@13@01 (<= _residue_156_0@19@01 _current_wait_level_156_0@23@01)))
(assert (=
  ($Snap.second ($Snap.second $t@76@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@76@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@76@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 7
; [then-branch: 124 | p1@12@01 | dead]
; [else-branch: 124 | !(p1@12@01) | live]
(push) ; 8
; [else-branch: 124 | !(p1@12@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@76@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2@13@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | p2@13@01 | live]
; [else-branch: 125 | !(p2@13@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 125 | p2@13@01]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [exec]
; var _err: Ref
(declare-const _err@77@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@78@01 $Ref)
; [exec]
; var self_1: Ref
(declare-const self_1@79@01 $Ref)
; [exec]
; var self_1_0: Ref
(declare-const self_1_0@80@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@81@01 $Perm)
; [exec]
; var _cwl_156_0: Perm
(declare-const _cwl_156_0@82@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@83@01 Seq<Measure$>)
; [exec]
; var _method_measures_156_0: Seq[Measure$]
(declare-const _method_measures_156_0@84@01 Seq<Measure$>)
; [exec]
; var p1_0: Bool
(declare-const p1_0@85@01 Bool)
; [exec]
; var p2_0: Bool
(declare-const p2_0@86@01 Bool)
; [exec]
; var p3: Bool
(declare-const p3@87@01 Bool)
; [exec]
; var p4: Bool
(declare-const p4@88@01 Bool)
; [exec]
; var p1_1: Bool
(declare-const p1_1@89@01 Bool)
; [exec]
; var p2_1: Bool
(declare-const p2_1@90@01 Bool)
; [exec]
; var p3_0: Bool
(declare-const p3_0@91@01 Bool)
; [exec]
; var p4_0: Bool
(declare-const p4_0@92@01 Bool)
; [exec]
; inhale p1
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 $Snap.unit))
(assert p1@12@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [then-branch: 126 | p1@12@01 | dead]
; [else-branch: 126 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 126 | !(p1@12@01)]
(pop) ; 7
; [eval] !p1
; [then-branch: 127 | !(p1@12@01) | dead]
; [else-branch: 127 | p1@12@01 | live]
(push) ; 7
; [else-branch: 127 | p1@12@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 111 | !(p2@13@01)]
(assert (not p2@13@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
; [then-branch: 128 | p1@12@01 | dead]
; [else-branch: 128 | !(p1@12@01) | live]
(push) ; 4
; [else-branch: 128 | !(p1@12@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
; [then-branch: 129 | p2@13@01 | dead]
; [else-branch: 129 | !(p2@13@01) | live]
(push) ; 5
; [else-branch: 129 | !(p2@13@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  $Snap.unit))
; [eval] p1 ==> issubtype(typeof(self), A())
(push) ; 6
; [then-branch: 130 | p1@12@01 | dead]
; [else-branch: 130 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 130 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  $Snap.unit))
; [eval] p2 ==> issubtype(typeof(self_3), A())
(push) ; 6
; [then-branch: 131 | p2@13@01 | dead]
; [else-branch: 131 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 131 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  $Snap.unit))
; [eval] p1 ==> self != null
(push) ; 6
; [then-branch: 132 | p1@12@01 | dead]
; [else-branch: 132 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 132 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  $Snap.unit))
; [eval] p2 ==> self_3 != null
(push) ; 6
; [then-branch: 133 | p2@13@01 | dead]
; [else-branch: 133 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 133 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p1 ==> true
(push) ; 6
; [then-branch: 134 | p1@12@01 | dead]
; [else-branch: 134 | !(p1@12@01) | live]
(push) ; 7
; [else-branch: 134 | !(p1@12@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))))))))
  $Snap.unit))
; [eval] p2 ==> true
(push) ; 6
; [then-branch: 135 | p2@13@01 | dead]
; [else-branch: 135 | !(p2@13@01) | live]
(push) ; 7
; [else-branch: 135 | !(p2@13@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 ($Snap.combine ($Snap.first $t@94@01) ($Snap.second $t@94@01))))
(assert (= ($Snap.first $t@94@01) $Snap.unit))
; [eval] p1 ==> (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156) && ((forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156) && _residue_156 <= _current_wait_level_156)
(push) ; 7
; [then-branch: 136 | p1@12@01 | dead]
; [else-branch: 136 | !(p1@12@01) | live]
(push) ; 8
; [else-branch: 136 | !(p1@12@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second $t@94@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@94@01))
    ($Snap.second ($Snap.second $t@94@01)))))
(assert (= ($Snap.first ($Snap.second $t@94@01)) $Snap.unit))
; [eval] p2 ==> (forperm _r: Ref [_r.MustReleaseBoundedp] :: Level(_r) <= _current_wait_level_156_0) && ((forperm _r: Ref [_r.MustReleaseUnboundedp] :: Level(_r) <= _current_wait_level_156_0) && _residue_156_0 <= _current_wait_level_156_0)
(push) ; 7
; [then-branch: 137 | p2@13@01 | dead]
; [else-branch: 137 | !(p2@13@01) | live]
(push) ; 8
; [else-branch: 137 | !(p2@13@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second $t@94@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@94@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@94@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@94@01))) $Snap.unit))
; [eval] p1 ==> true
(push) ; 7
; [then-branch: 138 | p1@12@01 | dead]
; [else-branch: 138 | !(p1@12@01) | live]
(push) ; 8
; [else-branch: 138 | !(p1@12@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@94@01))) $Snap.unit))
; [eval] p2 ==> true
(push) ; 7
; [then-branch: 139 | p2@13@01 | dead]
; [else-branch: 139 | !(p2@13@01) | live]
(push) ; 8
; [else-branch: 139 | !(p2@13@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [exec]
; var _err: Ref
(declare-const _err@95@01 $Ref)
; [exec]
; var _err_0: Ref
(declare-const _err_0@96@01 $Ref)
; [exec]
; var self_1: Ref
(declare-const self_1@97@01 $Ref)
; [exec]
; var self_1_0: Ref
(declare-const self_1_0@98@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@99@01 $Perm)
; [exec]
; var _cwl_156_0: Perm
(declare-const _cwl_156_0@100@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@101@01 Seq<Measure$>)
; [exec]
; var _method_measures_156_0: Seq[Measure$]
(declare-const _method_measures_156_0@102@01 Seq<Measure$>)
; [exec]
; var p1_0: Bool
(declare-const p1_0@103@01 Bool)
; [exec]
; var p2_0: Bool
(declare-const p2_0@104@01 Bool)
; [exec]
; var p3: Bool
(declare-const p3@105@01 Bool)
; [exec]
; var p4: Bool
(declare-const p4@106@01 Bool)
; [exec]
; var p1_1: Bool
(declare-const p1_1@107@01 Bool)
; [exec]
; var p2_1: Bool
(declare-const p2_1@108@01 Bool)
; [exec]
; var p3_0: Bool
(declare-const p3_0@109@01 Bool)
; [exec]
; var p4_0: Bool
(declare-const p4_0@110@01 Bool)
; [exec]
; inhale p1
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
(assert p1@12@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [then-branch: 140 | p1@12@01 | dead]
; [else-branch: 140 | !(p1@12@01) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 140 | !(p1@12@01)]
(pop) ; 7
; [eval] !p1
; [then-branch: 141 | !(p1@12@01) | dead]
; [else-branch: 141 | p1@12@01 | live]
(push) ; 7
; [else-branch: 141 | p1@12@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- A_foo ----------
(declare-const p1_2@112@01 Bool)
(declare-const p2_2@113@01 Bool)
(declare-const _cthread_157@114@01 $Ref)
(declare-const _cthread_157_0@115@01 $Ref)
(declare-const _caller_measures_157@116@01 Seq<Measure$>)
(declare-const _caller_measures_157_0@117@01 Seq<Measure$>)
(declare-const _residue_157@118@01 $Perm)
(declare-const _residue_157_0@119@01 $Perm)
(declare-const self_0@120@01 $Ref)
(declare-const self_0_0@121@01 $Ref)
(declare-const a@122@01 $Ref)
(declare-const a_1@123@01 $Ref)
(declare-const b@124@01 $Ref)
(declare-const b_1@125@01 $Ref)
(declare-const c@126@01 $Ref)
(declare-const c_1@127@01 $Ref)
(declare-const _current_wait_level_157@128@01 $Perm)
(declare-const _current_wait_level_157_0@129@01 $Perm)
(declare-const _res@130@01 $Ref)
(declare-const _res_0@131@01 $Ref)
(declare-const p1_2@132@01 Bool)
(declare-const p2_2@133@01 Bool)
(declare-const _cthread_157@134@01 $Ref)
(declare-const _cthread_157_0@135@01 $Ref)
(declare-const _caller_measures_157@136@01 Seq<Measure$>)
(declare-const _caller_measures_157_0@137@01 Seq<Measure$>)
(declare-const _residue_157@138@01 $Perm)
(declare-const _residue_157_0@139@01 $Perm)
(declare-const self_0@140@01 $Ref)
(declare-const self_0_0@141@01 $Ref)
(declare-const a@142@01 $Ref)
(declare-const a_1@143@01 $Ref)
(declare-const b@144@01 $Ref)
(declare-const b_1@145@01 $Ref)
(declare-const c@146@01 $Ref)
(declare-const c_1@147@01 $Ref)
(declare-const _current_wait_level_157@148@01 $Perm)
(declare-const _current_wait_level_157_0@149@01 $Perm)
(declare-const _res@150@01 $Ref)
(declare-const _res_0@151@01 $Ref)
(push) ; 1
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 ($Snap.combine ($Snap.first $t@152@01) ($Snap.second $t@152@01))))
(assert (= ($Snap.first $t@152@01) $Snap.unit))
; [eval] p1_2 ==> _cthread_157 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | p1_2@132@01 | live]
; [else-branch: 142 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 142 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] _cthread_157 != null
(pop) ; 3
(push) ; 3
; [else-branch: 142 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1_2@132@01) p1_2@132@01))
(assert (=> p1_2@132@01 (not (= _cthread_157@134@01 $Ref.null))))
(assert (=
  ($Snap.second $t@152@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@152@01))
    ($Snap.second ($Snap.second $t@152@01)))))
(assert (= ($Snap.first ($Snap.second $t@152@01)) $Snap.unit))
; [eval] p2_2 ==> _cthread_157_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 143 | p2_2@133@01 | live]
; [else-branch: 143 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 143 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] _cthread_157_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 143 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2_2@133@01) p2_2@133@01))
(assert (=> p2_2@133@01 (not (= _cthread_157_0@135@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@152@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@152@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@152@01))) $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(_cthread_157), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 144 | p1_2@132@01 | live]
; [else-branch: 144 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 144 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 144 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _cthread_157@134@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@152@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@152@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@152@01))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(_cthread_157_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 145 | p2_2@133@01 | live]
; [else-branch: 145 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 145 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] issubtype(typeof(_cthread_157_0), Thread_0())
; [eval] typeof(_cthread_157_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 145 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> _cthread_157_0@135@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0), A())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 146 | p1_2@132@01 | live]
; [else-branch: 146 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 146 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] issubtype(typeof(self_0), A())
; [eval] typeof(self_0)
; [eval] A()
(pop) ; 3
(push) ; 3
; [else-branch: 146 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> self_0@140@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0), A())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | p2_2@133@01 | live]
; [else-branch: 147 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 147 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] issubtype(typeof(self_0_0), A())
; [eval] typeof(self_0_0)
; [eval] A()
(pop) ; 3
(push) ; 3
; [else-branch: 147 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> self_0_0@141@01) (as A<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(a), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 148 | p1_2@132@01 | live]
; [else-branch: 148 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 148 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] issubtype(typeof(a), int())
; [eval] typeof(a)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 148 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(a_1), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 149 | p2_2@133@01 | live]
; [else-branch: 149 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 149 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] issubtype(typeof(a_1), int())
; [eval] typeof(a_1)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 149 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(b), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | p1_2@132@01 | live]
; [else-branch: 150 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 150 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] issubtype(typeof(b), int())
; [eval] typeof(b)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 150 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(b_1), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 151 | p2_2@133@01 | live]
; [else-branch: 151 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 151 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] issubtype(typeof(b_1), int())
; [eval] typeof(b_1)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 151 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(c), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | p1_2@132@01 | live]
; [else-branch: 152 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 152 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] issubtype(typeof(c), int())
; [eval] typeof(c)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 152 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(c_1), int())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 153 | p2_2@133@01 | live]
; [else-branch: 153 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 153 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] issubtype(typeof(c_1), int())
; [eval] typeof(c_1)
; [eval] int()
(pop) ; 3
(push) ; 3
; [else-branch: 153 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> c_1@147@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> self_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | p1_2@132@01 | live]
; [else-branch: 154 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 154 | p1_2@132@01]
(assert p1_2@132@01)
; [eval] self_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 154 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> p1_2@132@01 (not (= self_0@140@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> self_0_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 155 | p2_2@133@01 | live]
; [else-branch: 155 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 155 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] self_0_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 155 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> p2_2@133@01 (not (= self_0_0@141@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not p1_2@132@01))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 156 | p1_2@132@01 | live]
; [else-branch: 156 | !(p1_2@132@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 156 | p1_2@132@01]
(assert p1_2@132@01)
(assert (not (= self_0@140@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 157 | p2_2@133@01 | live]
; [else-branch: 157 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 157 | p2_2@133@01]
(assert p2_2@133@01)
(assert (not (= self_0_0@141@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | p1_2@132@01 | live]
; [else-branch: 158 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 158 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 159 | p2_2@133@01 | live]
; [else-branch: 159 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 159 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_ap), int())
; [eval] typeof(self_0_0.A_ap)
; [eval] int()
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | p1_2@132@01 | live]
; [else-branch: 160 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 160 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | p2_2@133@01 | live]
; [else-branch: 161 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 161 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | p1_2@132@01 | live]
; [else-branch: 162 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 162 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | p2_2@133@01 | live]
; [else-branch: 163 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 163 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_bp), int())
; [eval] typeof(self_0_0.A_bp)
; [eval] int()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | p1_2@132@01 | live]
; [else-branch: 164 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 164 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | p2_2@133@01 | live]
; [else-branch: 165 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 165 | p2_2@133@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 ($Snap.combine ($Snap.first $t@153@01) ($Snap.second $t@153@01))))
(assert (= ($Snap.first $t@153@01) $Snap.unit))
; [eval] p1_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | p1_2@132@01 | live]
; [else-branch: 166 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 166 | p1_2@132@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 9
; [then-branch: 167 | False | live]
; [else-branch: 167 | True | live]
(push) ; 10
; [then-branch: 167 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 167 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 11
; [then-branch: 168 | False | live]
; [else-branch: 168 | True | live]
(push) ; 12
; [then-branch: 168 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 168 | True]
; [eval] _residue_157 <= _current_wait_level_157
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p1_2@132@01 (<= _residue_157@138@01 _current_wait_level_157@148@01)))
(assert (=
  ($Snap.second $t@153@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@153@01))
    ($Snap.second ($Snap.second $t@153@01)))))
(assert (= ($Snap.first ($Snap.second $t@153@01)) $Snap.unit))
; [eval] p2_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 169 | p2_2@133@01 | live]
; [else-branch: 169 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 169 | p2_2@133@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 9
; [then-branch: 170 | False | live]
; [else-branch: 170 | True | live]
(push) ; 10
; [then-branch: 170 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 170 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 11
; [then-branch: 171 | False | live]
; [else-branch: 171 | True | live]
(push) ; 12
; [then-branch: 171 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 171 | True]
; [eval] _residue_157_0 <= _current_wait_level_157_0
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p2_2@133@01 (<= _residue_157_0@139@01 _current_wait_level_157_0@149@01)))
(assert (=
  ($Snap.second ($Snap.second $t@153@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@153@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@153@01))) $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | p1_2@132@01 | live]
; [else-branch: 172 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 172 | p1_2@132@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@153@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 173 | p2_2@133@01 | live]
; [else-branch: 173 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 173 | p2_2@133@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | p1_2@132@01 | live]
; [else-branch: 174 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 174 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | p2_2@133@01 | live]
; [else-branch: 175 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 175 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 176 | p1_2@132@01 | live]
; [else-branch: 176 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 176 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | p2_2@133@01 | live]
; [else-branch: 177 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 177 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_ap), int())
; [eval] typeof(self_0_0.A_ap)
; [eval] int()
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | p1_2@132@01 | live]
; [else-branch: 178 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 178 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
(push) ; 10
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 179 | p2_2@133@01 | live]
; [else-branch: 179 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 179 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 180 | p1_2@132@01 | live]
; [else-branch: 180 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 180 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | p2_2@133@01 | live]
; [else-branch: 181 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 181 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_bp), int())
; [eval] typeof(self_0_0.A_bp)
; [eval] int()
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | p1_2@132@01 | live]
; [else-branch: 182 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 182 | p1_2@132@01]
; [eval] int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b)))
; [eval] int___add__(int___unbox__(a), int___unbox__(b))
; [eval] int___unbox__(a)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a@142@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a@142@01)))
; [eval] int___unbox__(b)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b@144@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b@144@01)))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p1_2@132@01
  (and
    (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit a@142@01)
    (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit b@144@01)
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
    (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(assert (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | p2_2@133@01 | live]
; [else-branch: 183 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 183 | p2_2@133@01]
; [eval] int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1)))
; [eval] int___add__(int___unbox__(a_1), int___unbox__(b_1))
; [eval] int___unbox__(a_1)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a_1@143@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a_1@143@01)))
; [eval] int___unbox__(b_1)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b_1@145@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b_1@145@01)))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p2_2@133@01
  (and
    (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit a_1@143@01)
    (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit b_1@145@01)
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
    (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))))
(assert (=>
  p2_2@133@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | p1_2@132@01 | live]
; [else-branch: 184 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 184 | p1_2@132@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | p2_2@133@01 | live]
; [else-branch: 185 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 185 | p2_2@133@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; var ret1: Bool
(declare-const ret1@154@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@155@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@156@01 $Ref)
; [exec]
; var _err_1: Ref
(declare-const _err_1@157@01 $Ref)
; [exec]
; var self_2: Ref
(declare-const self_2@158@01 $Ref)
; [exec]
; var self_2_0: Ref
(declare-const self_2_0@159@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@160@01 $Ref)
; [exec]
; var a_0_0: Ref
(declare-const a_0_0@161@01 $Ref)
; [exec]
; var b_0: Ref
(declare-const b_0@162@01 $Ref)
; [exec]
; var b_0_0: Ref
(declare-const b_0_0@163@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@164@01 $Ref)
; [exec]
; var c_0_0: Ref
(declare-const c_0_0@165@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@166@01 $Perm)
; [exec]
; var _cwl_157_0: Perm
(declare-const _cwl_157_0@167@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@168@01 Seq<Measure$>)
; [exec]
; var _method_measures_157_0: Seq[Measure$]
(declare-const _method_measures_157_0@169@01 Seq<Measure$>)
; [exec]
; var p1_3: Bool
(declare-const p1_3@170@01 Bool)
; [exec]
; var p2_3: Bool
(declare-const p2_3@171@01 Bool)
; [exec]
; var p3_1: Bool
(declare-const p3_1@172@01 Bool)
; [exec]
; var p4_1: Bool
(declare-const p4_1@173@01 Bool)
; [exec]
; var p1_4: Bool
(declare-const p1_4@174@01 Bool)
; [exec]
; var p2_4: Bool
(declare-const p2_4@175@01 Bool)
; [exec]
; var p3_2: Bool
(declare-const p3_2@176@01 Bool)
; [exec]
; var p4_2: Bool
(declare-const p4_2@177@01 Bool)
; [exec]
; inhale p1_2
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1_2 && !ret1
(set-option :timeout 0)
(push) ; 7
; [then-branch: 186 | !(p1_2@132@01) | live]
; [else-branch: 186 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 186 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 8
(push) ; 8
; [else-branch: 186 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or p1_2@132@01 (not p1_2@132@01)))
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 187 | p1_2@132@01 | live]
; [else-branch: 187 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 187 | p1_2@132@01]
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == A()
(declare-const $t@179@01 $Snap)
(assert (= $t@179@01 $Snap.unit))
; [eval] typeof(self_0) == A()
; [eval] typeof(self_0)
; [eval] A()
(assert (= (typeof<PyType> self_0@140@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; self_2 := self_0
; [exec]
; a_0 := a
; [exec]
; b_0 := b
; [exec]
; c_0 := c
; [eval] p2_2 && !ret2
(set-option :timeout 0)
(push) ; 8
; [then-branch: 188 | !(p2_2@133@01) | live]
; [else-branch: 188 | p2_2@133@01 | live]
(push) ; 9
; [then-branch: 188 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 9
(push) ; 9
; [else-branch: 188 | p2_2@133@01]
; [eval] !ret2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or p2_2@133@01 (not p2_2@133@01)))
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 189 | p2_2@133@01 | live]
; [else-branch: 189 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 189 | p2_2@133@01]
; [exec]
; _method_measures_157_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0_0) == A()
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 $Snap.unit))
; [eval] typeof(self_0_0) == A()
; [eval] typeof(self_0_0)
; [eval] A()
(assert (= (typeof<PyType> self_0_0@141@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res_0 := null
; [exec]
; _err_1 := null
; [exec]
; self_2_0 := self_0_0
; [exec]
; a_0_0 := a_1
; [exec]
; b_0_0 := b_1
; [exec]
; c_0_0 := c_1
; [exec]
; p1_3 := p1_2 && (!ret1 && perm(_MaySet(self_2, 6381377)) > none)
; [eval] p1_2 && (!ret1 && perm(_MaySet(self_2, 6381377)) > none)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 190 | !(p1_2@132@01) | live]
; [else-branch: 190 | p1_2@132@01 | live]
(push) ; 10
; [then-branch: 190 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 10
(push) ; 10
; [else-branch: 190 | p1_2@132@01]
; [eval] !ret1
(push) ; 11
; [then-branch: 191 | False | live]
; [else-branch: 191 | True | live]
(push) ; 12
; [then-branch: 191 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 191 | True]
; [eval] perm(_MaySet(self_2, 6381377)) > none
; [eval] perm(_MaySet(self_2, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p2_3 := p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6381377)) > none)
; [eval] p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6381377)) > none)
(push) ; 9
; [then-branch: 192 | !(p2_2@133@01) | live]
; [else-branch: 192 | p2_2@133@01 | live]
(push) ; 10
; [then-branch: 192 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 10
(push) ; 10
; [else-branch: 192 | p2_2@133@01]
; [eval] !ret2
(push) ; 11
; [then-branch: 193 | False | live]
; [else-branch: 193 | True | live]
(push) ; 12
; [then-branch: 193 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 193 | True]
; [eval] perm(_MaySet_0(self_2_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_2_0, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p3_1 := p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6381377)) > none))
; [eval] p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6381377)) > none))
(push) ; 9
; [then-branch: 194 | !(p1_2@132@01) | live]
; [else-branch: 194 | p1_2@132@01 | live]
(push) ; 10
; [then-branch: 194 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 10
(push) ; 10
; [else-branch: 194 | p1_2@132@01]
; [eval] !ret1
(push) ; 11
; [then-branch: 195 | False | live]
; [else-branch: 195 | True | live]
(push) ; 12
; [then-branch: 195 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 195 | True]
; [eval] !(perm(_MaySet(self_2, 6381377)) > none)
; [eval] perm(_MaySet(self_2, 6381377)) > none
; [eval] perm(_MaySet(self_2, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p4_1 := p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6381377)) > none))
; [eval] p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6381377)) > none))
(push) ; 9
; [then-branch: 196 | !(p2_2@133@01) | live]
; [else-branch: 196 | p2_2@133@01 | live]
(push) ; 10
; [then-branch: 196 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 10
(push) ; 10
; [else-branch: 196 | p2_2@133@01]
; [eval] !ret2
(push) ; 11
; [then-branch: 197 | False | live]
; [else-branch: 197 | True | live]
(push) ; 12
; [then-branch: 197 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 197 | True]
; [eval] !(perm(_MaySet_0(self_2_0, 6381377)) > none)
; [eval] perm(_MaySet_0(self_2_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_2_0, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [eval] p1_3 && !ret1
; [then-branch: 198 | False | dead]
; [else-branch: 198 | True | live]
(push) ; 9
; [else-branch: 198 | True]
(pop) ; 9
; [eval] !(p1_3 && !ret1)
; [eval] p1_3 && !ret1
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 199 | True | live]
; [else-branch: 199 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 199 | True]
; [eval] p2_3 && !ret2
; [then-branch: 200 | False | dead]
; [else-branch: 200 | True | live]
(push) ; 10
; [else-branch: 200 | True]
(pop) ; 10
; [eval] !(p2_3 && !ret2)
; [eval] p2_3 && !ret2
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 201 | True | live]
; [else-branch: 201 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 201 | True]
; [eval] p1_2 && !ret1
(push) ; 11
; [then-branch: 202 | !(p1_2@132@01) | live]
; [else-branch: 202 | p1_2@132@01 | live]
(push) ; 12
; [then-branch: 202 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 12
(push) ; 12
; [else-branch: 202 | p1_2@132@01]
; [eval] !ret1
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | p1_2@132@01 | live]
; [else-branch: 203 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 203 | p1_2@132@01]
; [exec]
; self_2.A_a := __prim__int___box__(int___add__(int___unbox__(a_0), int___unbox__(c_0)))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_0), int___unbox__(c_0)))
; [eval] int___add__(int___unbox__(a_0), int___unbox__(c_0))
; [eval] int___unbox__(a_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a@142@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a@142@01)))
; [eval] int___unbox__(c_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit c@146@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit c@146@01)))
(push) ; 12
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))
(pop) ; 12
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01))))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01))))
(declare-const A_a@181@01 $Ref)
(assert (=
  A_a@181@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))))
; [eval] p2_2 && !ret2
(push) ; 12
; [then-branch: 204 | !(p2_2@133@01) | live]
; [else-branch: 204 | p2_2@133@01 | live]
(push) ; 13
; [then-branch: 204 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 13
(push) ; 13
; [else-branch: 204 | p2_2@133@01]
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | p2_2@133@01 | live]
; [else-branch: 205 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 205 | p2_2@133@01]
; [exec]
; self_2_0.A_ap := __prim__int___box__(int___add__(int___unbox__(a_0_0), int___unbox__(c_0_0)))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_0_0), int___unbox__(c_0_0)))
; [eval] int___add__(int___unbox__(a_0_0), int___unbox__(c_0_0))
; [eval] int___unbox__(a_0_0)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a_1@143@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a_1@143@01)))
; [eval] int___unbox__(c_0_0)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> c_1@147@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> c_1@147@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit c_1@147@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> c_1@147@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit c_1@147@01)))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit c_1@147@01)))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit c_1@147@01)))
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit c_1@147@01))))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit c_1@147@01))))
(declare-const A_ap@182@01 $Ref)
(assert (=
  A_ap@182@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit c_1@147@01)))))
; [exec]
; p1_4 := p1_2 && (!ret1 && perm(_MaySet(self_2, 6446913)) > none)
; [eval] p1_2 && (!ret1 && perm(_MaySet(self_2, 6446913)) > none)
(push) ; 13
; [then-branch: 206 | !(p1_2@132@01) | live]
; [else-branch: 206 | p1_2@132@01 | live]
(push) ; 14
; [then-branch: 206 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 14
(push) ; 14
; [else-branch: 206 | p1_2@132@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 207 | False | live]
; [else-branch: 207 | True | live]
(push) ; 16
; [then-branch: 207 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 207 | True]
; [eval] perm(_MaySet(self_2, 6446913)) > none
; [eval] perm(_MaySet(self_2, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p2_4 := p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6446913)) > none)
; [eval] p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6446913)) > none)
(push) ; 13
; [then-branch: 208 | !(p2_2@133@01) | live]
; [else-branch: 208 | p2_2@133@01 | live]
(push) ; 14
; [then-branch: 208 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 14
(push) ; 14
; [else-branch: 208 | p2_2@133@01]
; [eval] !ret2
(push) ; 15
; [then-branch: 209 | False | live]
; [else-branch: 209 | True | live]
(push) ; 16
; [then-branch: 209 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 209 | True]
; [eval] perm(_MaySet_0(self_2_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_2_0, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p3_2 := p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6446913)) > none))
; [eval] p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6446913)) > none))
(push) ; 13
; [then-branch: 210 | !(p1_2@132@01) | live]
; [else-branch: 210 | p1_2@132@01 | live]
(push) ; 14
; [then-branch: 210 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 14
(push) ; 14
; [else-branch: 210 | p1_2@132@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 211 | False | live]
; [else-branch: 211 | True | live]
(push) ; 16
; [then-branch: 211 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 211 | True]
; [eval] !(perm(_MaySet(self_2, 6446913)) > none)
; [eval] perm(_MaySet(self_2, 6446913)) > none
; [eval] perm(_MaySet(self_2, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p4_2 := p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6446913)) > none))
; [eval] p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6446913)) > none))
(push) ; 13
; [then-branch: 212 | !(p2_2@133@01) | live]
; [else-branch: 212 | p2_2@133@01 | live]
(push) ; 14
; [then-branch: 212 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 14
(push) ; 14
; [else-branch: 212 | p2_2@133@01]
; [eval] !ret2
(push) ; 15
; [then-branch: 213 | False | live]
; [else-branch: 213 | True | live]
(push) ; 16
; [then-branch: 213 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 213 | True]
; [eval] !(perm(_MaySet_0(self_2_0, 6446913)) > none)
; [eval] perm(_MaySet_0(self_2_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_2_0, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [eval] p1_4 && !ret1
; [then-branch: 214 | False | dead]
; [else-branch: 214 | True | live]
(push) ; 13
; [else-branch: 214 | True]
(pop) ; 13
; [eval] !(p1_4 && !ret1)
; [eval] p1_4 && !ret1
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 215 | True | live]
; [else-branch: 215 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 215 | True]
; [eval] p2_4 && !ret2
; [then-branch: 216 | False | dead]
; [else-branch: 216 | True | live]
(push) ; 14
; [else-branch: 216 | True]
(pop) ; 14
; [eval] !(p2_4 && !ret2)
; [eval] p2_4 && !ret2
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 217 | True | live]
; [else-branch: 217 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 217 | True]
; [eval] p1_2 && !ret1
(push) ; 15
; [then-branch: 218 | !(p1_2@132@01) | live]
; [else-branch: 218 | p1_2@132@01 | live]
(push) ; 16
; [then-branch: 218 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 16
(push) ; 16
; [else-branch: 218 | p1_2@132@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 219 | p1_2@132@01 | live]
; [else-branch: 219 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 219 | p1_2@132@01]
; [exec]
; self_2.A_b := __prim__int___box__(int___sub__(int___unbox__(b_0), int___unbox__(c_0)))
; [eval] __prim__int___box__(int___sub__(int___unbox__(b_0), int___unbox__(c_0)))
; [eval] int___sub__(int___unbox__(b_0), int___unbox__(c_0))
; [eval] int___unbox__(b_0)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b@144@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b@144@01)))
; [eval] int___unbox__(c_0)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))
(pop) ; 16
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))
(push) ; 16
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01))))
(pop) ; 16
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01))))
(declare-const A_b@183@01 $Ref)
(assert (=
  A_b@183@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))))
; [eval] p2_2 && !ret2
(push) ; 16
; [then-branch: 220 | !(p2_2@133@01) | live]
; [else-branch: 220 | p2_2@133@01 | live]
(push) ; 17
; [then-branch: 220 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 17
(push) ; 17
; [else-branch: 220 | p2_2@133@01]
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 221 | p2_2@133@01 | live]
; [else-branch: 221 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 221 | p2_2@133@01]
; [exec]
; self_2_0.A_bp := __prim__int___box__(int___sub__(int___unbox__(b_0_0), int___unbox__(c_0_0)))
; [eval] __prim__int___box__(int___sub__(int___unbox__(b_0_0), int___unbox__(c_0_0)))
; [eval] int___sub__(int___unbox__(b_0_0), int___unbox__(c_0_0))
; [eval] int___unbox__(b_0_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 18
(assert (not (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b_1@145@01))
(pop) ; 17
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b_1@145@01)))
; [eval] int___unbox__(c_0_0)
(push) ; 17
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 17
; Joined path conditions
(push) ; 17
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@145@01) (int___unbox__ $Snap.unit c_1@147@01)))
(pop) ; 17
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@145@01) (int___unbox__ $Snap.unit c_1@147@01)))
(push) ; 17
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b_1@145@01) (int___unbox__ $Snap.unit c_1@147@01))))
(pop) ; 17
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b_1@145@01) (int___unbox__ $Snap.unit c_1@147@01))))
(declare-const A_bp@184@01 $Ref)
(assert (=
  A_bp@184@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b_1@145@01) (int___unbox__ $Snap.unit c_1@147@01)))))
; [eval] p1_2 && !ret1
(push) ; 17
; [then-branch: 222 | !(p1_2@132@01) | live]
; [else-branch: 222 | p1_2@132@01 | live]
(push) ; 18
; [then-branch: 222 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 18
(push) ; 18
; [else-branch: 222 | p1_2@132@01]
; [eval] !ret1
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 223 | p1_2@132@01 | live]
; [else-branch: 223 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 223 | p1_2@132@01]
; [exec]
; _res := __prim__int___box__(int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b)))
; [eval] __prim__int___box__(int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b)))
; [eval] int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b))
; [eval] int___unbox__(self_2.A_a)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> A_a@181@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_a@181@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_a@181@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_a@181@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_a@181@01)))
; [eval] int___unbox__(self_2.A_b)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> A_b@183@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_b@183@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_b@183@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_b@183@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_b@183@01)))
(push) ; 18
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_a@181@01) (int___unbox__ $Snap.unit A_b@183@01)))
(pop) ; 18
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_a@181@01) (int___unbox__ $Snap.unit A_b@183@01)))
(push) ; 18
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@181@01) (int___unbox__ $Snap.unit A_b@183@01))))
(pop) ; 18
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@181@01) (int___unbox__ $Snap.unit A_b@183@01))))
(declare-const _res@185@01 $Ref)
(assert (=
  _res@185@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@181@01) (int___unbox__ $Snap.unit A_b@183@01)))))
; [exec]
; ret1 := true
; [eval] p2_2 && !ret2
(push) ; 18
; [then-branch: 224 | !(p2_2@133@01) | live]
; [else-branch: 224 | p2_2@133@01 | live]
(push) ; 19
; [then-branch: 224 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 19
(push) ; 19
; [else-branch: 224 | p2_2@133@01]
; [eval] !ret2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 225 | p2_2@133@01 | live]
; [else-branch: 225 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 225 | p2_2@133@01]
; [exec]
; _res_0 := __prim__int___box__(int___add__(int___unbox__(self_2_0.A_ap), int___unbox__(self_2_0.A_bp)))
; [eval] __prim__int___box__(int___add__(int___unbox__(self_2_0.A_ap), int___unbox__(self_2_0.A_bp)))
; [eval] int___add__(int___unbox__(self_2_0.A_ap), int___unbox__(self_2_0.A_bp))
; [eval] int___unbox__(self_2_0.A_ap)
(push) ; 19
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 20
(assert (not (issubtype<Bool> (typeof<PyType> A_ap@182@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_ap@182@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_ap@182@01))
(pop) ; 19
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_ap@182@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_ap@182@01)))
; [eval] int___unbox__(self_2_0.A_bp)
(push) ; 19
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 20
(assert (not (issubtype<Bool> (typeof<PyType> A_bp@184@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_bp@184@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_bp@184@01))
(pop) ; 19
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_bp@184@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_bp@184@01)))
(push) ; 19
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_ap@182@01) (int___unbox__ $Snap.unit A_bp@184@01)))
(pop) ; 19
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_ap@182@01) (int___unbox__ $Snap.unit A_bp@184@01)))
(push) ; 19
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_ap@182@01) (int___unbox__ $Snap.unit A_bp@184@01))))
(pop) ; 19
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_ap@182@01) (int___unbox__ $Snap.unit A_bp@184@01))))
(declare-const _res_0@186@01 $Ref)
(assert (=
  _res_0@186@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_ap@182@01) (int___unbox__ $Snap.unit A_bp@184@01)))))
; [exec]
; ret2 := true
; [exec]
; assert true
; [eval] p1_2 ==> true
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 226 | p1_2@132@01 | live]
; [else-branch: 226 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 226 | p1_2@132@01]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] p2_2 ==> true
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 227 | p2_2@133@01 | live]
; [else-branch: 227 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 227 | p2_2@133@01]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 228 | p1_2@132@01 | live]
; [else-branch: 228 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 228 | p1_2@132@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 20
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 229 | p2_2@133@01 | live]
; [else-branch: 229 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 229 | p2_2@133@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 20
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType))))
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 230 | p1_2@132@01 | live]
; [else-branch: 230 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 230 | p1_2@132@01]
(push) ; 20
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 231 | p2_2@133@01 | live]
; [else-branch: 231 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 231 | p2_2@133@01]
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 232 | p1_2@132@01 | live]
; [else-branch: 232 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 232 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 22
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_a@181@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_a@181@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 233 | p2_2@133@01 | live]
; [else-branch: 233 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 233 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_ap), int())
; [eval] typeof(self_0_0.A_ap)
; [eval] int()
(pop) ; 22
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> A_ap@182@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> A_ap@182@01) (as int<PyType>  PyType))))
(push) ; 21
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 234 | p1_2@132@01 | live]
; [else-branch: 234 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 234 | p1_2@132@01]
(push) ; 22
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 235 | p2_2@133@01 | live]
; [else-branch: 235 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 235 | p2_2@133@01]
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 236 | p1_2@132@01 | live]
; [else-branch: 236 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 236 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_b@183@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_b@183@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 237 | p2_2@133@01 | live]
; [else-branch: 237 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 237 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_bp), int())
; [eval] typeof(self_0_0.A_bp)
; [eval] int()
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
(assert (not (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> A_bp@184@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> A_bp@184@01) (as int<PyType>  PyType))))
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 238 | p1_2@132@01 | live]
; [else-branch: 238 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 238 | p1_2@132@01]
; [eval] int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b)))
; [eval] int___add__(int___unbox__(a), int___unbox__(b))
; [eval] int___unbox__(a)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
; [eval] int___unbox__(b)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
(push) ; 25
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(pop) ; 25
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(push) ; 25
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(pop) ; 25
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@185@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))
(pop) ; 25
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@185@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  p1_2@132@01
  (and
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
    (issubtype<Bool> (typeof<PyType> _res@185@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@185@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(push) ; 23
(assert (not (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@185@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@185@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 239 | p2_2@133@01 | live]
; [else-branch: 239 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 239 | p2_2@133@01]
; [eval] int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1)))
; [eval] int___add__(int___unbox__(a_1), int___unbox__(b_1))
; [eval] int___unbox__(a_1)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
; [eval] int___unbox__(b_1)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
(push) ; 25
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(pop) ; 25
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(push) ; 25
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(pop) ; 25
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@186@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))
(pop) ; 25
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@186@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  p2_2@133@01
  (and
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
    (issubtype<Bool> (typeof<PyType> _res_0@186@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@186@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))))
(push) ; 23
(assert (not (=>
  p2_2@133@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@186@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p2_2@133@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@186@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
; [eval] p1_2 ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 240 | p1_2@132@01 | live]
; [else-branch: 240 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 240 | p1_2@132@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 25
; [then-branch: 241 | False | live]
; [else-branch: 241 | True | live]
(push) ; 26
; [then-branch: 241 | False]
(assert false)
(pop) ; 26
(push) ; 26
; [else-branch: 241 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 27
; [then-branch: 242 | False | live]
; [else-branch: 242 | True | live]
(push) ; 28
; [then-branch: 242 | False]
(assert false)
(pop) ; 28
(push) ; 28
; [else-branch: 242 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 29
; [then-branch: 243 | False | live]
; [else-branch: 243 | True | live]
(push) ; 30
; [then-branch: 243 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 243 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] p2_2 ==> (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 244 | p2_2@133@01 | live]
; [else-branch: 244 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 244 | p2_2@133@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false)
(push) ; 25
; [then-branch: 245 | False | live]
; [else-branch: 245 | True | live]
(push) ; 26
; [then-branch: 245 | False]
(assert false)
(pop) ; 26
(push) ; 26
; [else-branch: 245 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false)
(push) ; 27
; [then-branch: 246 | False | live]
; [else-branch: 246 | True | live]
(push) ; 28
; [then-branch: 246 | False]
(assert false)
(pop) ; 28
(push) ; 28
; [else-branch: 246 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false)
(push) ; 29
; [then-branch: 247 | False | live]
; [else-branch: 247 | True | live]
(push) ; 30
; [then-branch: 247 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 247 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 18
; [then-branch: 248 | !(p2_2@133@01) | live]
; [else-branch: 248 | p2_2@133@01 | live]
(push) ; 19
; [then-branch: 248 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 19
(push) ; 19
; [else-branch: 248 | p2_2@133@01]
; [eval] !ret2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
; [then-branch: 249 | !(p2_2@133@01) | dead]
; [else-branch: 249 | p2_2@133@01 | live]
(push) ; 18
; [else-branch: 249 | p2_2@133@01]
(pop) ; 18
(pop) ; 17
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 17
; [then-branch: 250 | !(p1_2@132@01) | live]
; [else-branch: 250 | p1_2@132@01 | live]
(push) ; 18
; [then-branch: 250 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 18
(push) ; 18
; [else-branch: 250 | p1_2@132@01]
; [eval] !ret1
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
; [then-branch: 251 | !(p1_2@132@01) | dead]
; [else-branch: 251 | p1_2@132@01 | live]
(push) ; 17
; [else-branch: 251 | p1_2@132@01]
(pop) ; 17
(pop) ; 16
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 16
; [then-branch: 252 | !(p2_2@133@01) | live]
; [else-branch: 252 | p2_2@133@01 | live]
(push) ; 17
; [then-branch: 252 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 17
(push) ; 17
; [else-branch: 252 | p2_2@133@01]
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 253 | !(p2_2@133@01) | dead]
; [else-branch: 253 | p2_2@133@01 | live]
(push) ; 16
; [else-branch: 253 | p2_2@133@01]
(pop) ; 16
(pop) ; 15
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 15
; [then-branch: 254 | !(p1_2@132@01) | live]
; [else-branch: 254 | p1_2@132@01 | live]
(push) ; 16
; [then-branch: 254 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 16
(push) ; 16
; [else-branch: 254 | p1_2@132@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
; [then-branch: 255 | !(p1_2@132@01) | dead]
; [else-branch: 255 | p1_2@132@01 | live]
(push) ; 15
; [else-branch: 255 | p1_2@132@01]
(pop) ; 15
(pop) ; 14
(pop) ; 13
(pop) ; 12
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 12
; [then-branch: 256 | !(p2_2@133@01) | live]
; [else-branch: 256 | p2_2@133@01 | live]
(push) ; 13
; [then-branch: 256 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 13
(push) ; 13
; [else-branch: 256 | p2_2@133@01]
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 257 | !(p2_2@133@01) | dead]
; [else-branch: 257 | p2_2@133@01 | live]
(push) ; 12
; [else-branch: 257 | p2_2@133@01]
(pop) ; 12
(pop) ; 11
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 11
; [then-branch: 258 | !(p1_2@132@01) | live]
; [else-branch: 258 | p1_2@132@01 | live]
(push) ; 12
; [then-branch: 258 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 12
(push) ; 12
; [else-branch: 258 | p1_2@132@01]
; [eval] !ret1
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 259 | !(p1_2@132@01) | dead]
; [else-branch: 259 | p1_2@132@01 | live]
(push) ; 11
; [else-branch: 259 | p1_2@132@01]
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 8
; [then-branch: 260 | !(p2_2@133@01) | live]
; [else-branch: 260 | p2_2@133@01 | live]
(push) ; 9
; [then-branch: 260 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(pop) ; 9
(push) ; 9
; [else-branch: 260 | p2_2@133@01]
; [eval] !ret2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
; [then-branch: 261 | !(p2_2@133@01) | dead]
; [else-branch: 261 | p2_2@133@01 | live]
(push) ; 8
; [else-branch: 261 | p2_2@133@01]
(pop) ; 8
(pop) ; 7
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 7
; [then-branch: 262 | !(p1_2@132@01) | live]
; [else-branch: 262 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 262 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 8
(push) ; 8
; [else-branch: 262 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 263 | !(p1_2@132@01) | dead]
; [else-branch: 263 | p1_2@132@01 | live]
(push) ; 7
; [else-branch: 263 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 157 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 264 | p1_2@132@01 | live]
; [else-branch: 264 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 264 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 4
; [then-branch: 265 | p2_2@133@01 | dead]
; [else-branch: 265 | !(p2_2@133@01) | live]
(push) ; 5
; [else-branch: 265 | !(p2_2@133@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 266 | p1_2@132@01 | live]
; [else-branch: 266 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 266 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
; [then-branch: 267 | p2_2@133@01 | dead]
; [else-branch: 267 | !(p2_2@133@01) | live]
(push) ; 5
; [else-branch: 267 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 268 | p1_2@132@01 | live]
; [else-branch: 268 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 268 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 6
; [then-branch: 269 | p2_2@133@01 | dead]
; [else-branch: 269 | !(p2_2@133@01) | live]
(push) ; 7
; [else-branch: 269 | !(p2_2@133@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 270 | p1_2@132@01 | live]
; [else-branch: 270 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 270 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 6
; [then-branch: 271 | p2_2@133@01 | dead]
; [else-branch: 271 | !(p2_2@133@01) | live]
(push) ; 7
; [else-branch: 271 | !(p2_2@133@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@187@01 $Snap)
(assert (= $t@187@01 ($Snap.combine ($Snap.first $t@187@01) ($Snap.second $t@187@01))))
(assert (= ($Snap.first $t@187@01) $Snap.unit))
; [eval] p1_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 272 | p1_2@132@01 | live]
; [else-branch: 272 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 272 | p1_2@132@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 9
; [then-branch: 273 | False | live]
; [else-branch: 273 | True | live]
(push) ; 10
; [then-branch: 273 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 273 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(push) ; 11
; [then-branch: 274 | False | live]
; [else-branch: 274 | True | live]
(push) ; 12
; [then-branch: 274 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 274 | True]
; [eval] _residue_157 <= _current_wait_level_157
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p1_2@132@01 (<= _residue_157@138@01 _current_wait_level_157@148@01)))
(assert (=
  ($Snap.second $t@187@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@187@01))
    ($Snap.second ($Snap.second $t@187@01)))))
(assert (= ($Snap.first ($Snap.second $t@187@01)) $Snap.unit))
; [eval] p2_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 7
; [then-branch: 275 | p2_2@133@01 | dead]
; [else-branch: 275 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 275 | !(p2_2@133@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second $t@187@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@187@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@187@01))) $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 276 | p1_2@132@01 | live]
; [else-branch: 276 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 276 | p1_2@132@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@187@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@187@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@187@01))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 7
; [then-branch: 277 | p2_2@133@01 | dead]
; [else-branch: 277 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 277 | !(p2_2@133@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 278 | p1_2@132@01 | live]
; [else-branch: 278 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 278 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))
; [then-branch: 279 | p2_2@133@01 | dead]
; [else-branch: 279 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 279 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 280 | p1_2@132@01 | live]
; [else-branch: 280 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 280 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 9
; [then-branch: 281 | p2_2@133@01 | dead]
; [else-branch: 281 | !(p2_2@133@01) | live]
(push) ; 10
; [else-branch: 281 | !(p2_2@133@01)]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))
(push) ; 9
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 282 | p1_2@132@01 | live]
; [else-branch: 282 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 282 | p1_2@132@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))
; [then-branch: 283 | p2_2@133@01 | dead]
; [else-branch: 283 | !(p2_2@133@01) | live]
(push) ; 10
; [else-branch: 283 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 284 | p1_2@132@01 | live]
; [else-branch: 284 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 284 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 11
; [then-branch: 285 | p2_2@133@01 | dead]
; [else-branch: 285 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 285 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 286 | p1_2@132@01 | live]
; [else-branch: 286 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 286 | p1_2@132@01]
; [eval] int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b)))
; [eval] int___add__(int___unbox__(a), int___unbox__(b))
; [eval] int___unbox__(a)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a@142@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a@142@01)))
; [eval] int___unbox__(b)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b@144@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b@144@01)))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p1_2@132@01
  (and
    (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit a@142@01)
    (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit b@144@01)
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
    (issubtype<Bool> (typeof<PyType> _res@150@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(assert (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@150@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 11
; [then-branch: 287 | p2_2@133@01 | dead]
; [else-branch: 287 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 287 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 288 | p1_2@132@01 | live]
; [else-branch: 288 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 288 | p1_2@132@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@187@01)))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 11
; [then-branch: 289 | p2_2@133@01 | dead]
; [else-branch: 289 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 289 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; var ret1: Bool
(declare-const ret1@188@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@189@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@190@01 $Ref)
; [exec]
; var _err_1: Ref
(declare-const _err_1@191@01 $Ref)
; [exec]
; var self_2: Ref
(declare-const self_2@192@01 $Ref)
; [exec]
; var self_2_0: Ref
(declare-const self_2_0@193@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@194@01 $Ref)
; [exec]
; var a_0_0: Ref
(declare-const a_0_0@195@01 $Ref)
; [exec]
; var b_0: Ref
(declare-const b_0@196@01 $Ref)
; [exec]
; var b_0_0: Ref
(declare-const b_0_0@197@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@198@01 $Ref)
; [exec]
; var c_0_0: Ref
(declare-const c_0_0@199@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@200@01 $Perm)
; [exec]
; var _cwl_157_0: Perm
(declare-const _cwl_157_0@201@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@202@01 Seq<Measure$>)
; [exec]
; var _method_measures_157_0: Seq[Measure$]
(declare-const _method_measures_157_0@203@01 Seq<Measure$>)
; [exec]
; var p1_3: Bool
(declare-const p1_3@204@01 Bool)
; [exec]
; var p2_3: Bool
(declare-const p2_3@205@01 Bool)
; [exec]
; var p3_1: Bool
(declare-const p3_1@206@01 Bool)
; [exec]
; var p4_1: Bool
(declare-const p4_1@207@01 Bool)
; [exec]
; var p1_4: Bool
(declare-const p1_4@208@01 Bool)
; [exec]
; var p2_4: Bool
(declare-const p2_4@209@01 Bool)
; [exec]
; var p3_2: Bool
(declare-const p3_2@210@01 Bool)
; [exec]
; var p4_2: Bool
(declare-const p4_2@211@01 Bool)
; [exec]
; inhale p1_2
(declare-const $t@212@01 $Snap)
(assert (= $t@212@01 $Snap.unit))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1_2 && !ret1
(set-option :timeout 0)
(push) ; 7
; [then-branch: 290 | !(p1_2@132@01) | live]
; [else-branch: 290 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 290 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 8
(push) ; 8
; [else-branch: 290 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or p1_2@132@01 (not p1_2@132@01)))
(push) ; 7
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 291 | p1_2@132@01 | live]
; [else-branch: 291 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 291 | p1_2@132@01]
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == A()
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 $Snap.unit))
; [eval] typeof(self_0) == A()
; [eval] typeof(self_0)
; [eval] A()
(assert (= (typeof<PyType> self_0@140@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; self_2 := self_0
; [exec]
; a_0 := a
; [exec]
; b_0 := b
; [exec]
; c_0 := c
; [eval] p2_2 && !ret2
(set-option :timeout 0)
(push) ; 8
; [then-branch: 292 | !(p2_2@133@01) | live]
; [else-branch: 292 | p2_2@133@01 | live]
(push) ; 9
; [then-branch: 292 | !(p2_2@133@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 292 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or p2_2@133@01 (not p2_2@133@01)))
; [then-branch: 293 | p2_2@133@01 | dead]
; [else-branch: 293 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 293 | !(p2_2@133@01)]
(pop) ; 8
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 8
; [then-branch: 294 | !(p2_2@133@01) | live]
; [else-branch: 294 | p2_2@133@01 | live]
(push) ; 9
; [then-branch: 294 | !(p2_2@133@01)]
(pop) ; 9
(push) ; 9
; [else-branch: 294 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 295 | !(p2_2@133@01) | live]
; [else-branch: 295 | p2_2@133@01 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 295 | !(p2_2@133@01)]
; [exec]
; p1_3 := p1_2 && (!ret1 && perm(_MaySet(self_2, 6381377)) > none)
; [eval] p1_2 && (!ret1 && perm(_MaySet(self_2, 6381377)) > none)
(push) ; 9
; [then-branch: 296 | !(p1_2@132@01) | live]
; [else-branch: 296 | p1_2@132@01 | live]
(push) ; 10
; [then-branch: 296 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 10
(push) ; 10
; [else-branch: 296 | p1_2@132@01]
; [eval] !ret1
(push) ; 11
; [then-branch: 297 | False | live]
; [else-branch: 297 | True | live]
(push) ; 12
; [then-branch: 297 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 297 | True]
; [eval] perm(_MaySet(self_2, 6381377)) > none
; [eval] perm(_MaySet(self_2, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p2_3 := p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6381377)) > none)
; [eval] p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6381377)) > none)
(push) ; 9
; [then-branch: 298 | !(p2_2@133@01) | live]
; [else-branch: 298 | p2_2@133@01 | live]
(push) ; 10
; [then-branch: 298 | !(p2_2@133@01)]
(pop) ; 10
(push) ; 10
; [else-branch: 298 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(push) ; 11
; [then-branch: 299 | False | live]
; [else-branch: 299 | True | live]
(push) ; 12
; [then-branch: 299 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 299 | True]
; [eval] perm(_MaySet_0(self_2_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_2_0, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p3_1 := p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6381377)) > none))
; [eval] p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6381377)) > none))
(push) ; 9
; [then-branch: 300 | !(p1_2@132@01) | live]
; [else-branch: 300 | p1_2@132@01 | live]
(push) ; 10
; [then-branch: 300 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 10
(push) ; 10
; [else-branch: 300 | p1_2@132@01]
; [eval] !ret1
(push) ; 11
; [then-branch: 301 | False | live]
; [else-branch: 301 | True | live]
(push) ; 12
; [then-branch: 301 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 301 | True]
; [eval] !(perm(_MaySet(self_2, 6381377)) > none)
; [eval] perm(_MaySet(self_2, 6381377)) > none
; [eval] perm(_MaySet(self_2, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [exec]
; p4_1 := p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6381377)) > none))
; [eval] p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6381377)) > none))
(push) ; 9
; [then-branch: 302 | !(p2_2@133@01) | live]
; [else-branch: 302 | p2_2@133@01 | live]
(push) ; 10
; [then-branch: 302 | !(p2_2@133@01)]
(pop) ; 10
(push) ; 10
; [else-branch: 302 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(push) ; 11
; [then-branch: 303 | False | live]
; [else-branch: 303 | True | live]
(push) ; 12
; [then-branch: 303 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 303 | True]
; [eval] !(perm(_MaySet_0(self_2_0, 6381377)) > none)
; [eval] perm(_MaySet_0(self_2_0, 6381377)) > none
; [eval] perm(_MaySet_0(self_2_0, 6381377))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
; [eval] p1_3 && !ret1
; [then-branch: 304 | False | dead]
; [else-branch: 304 | True | live]
(push) ; 9
; [else-branch: 304 | True]
(pop) ; 9
; [eval] !(p1_3 && !ret1)
; [eval] p1_3 && !ret1
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 305 | True | live]
; [else-branch: 305 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 305 | True]
; [eval] p2_3 && !ret2
; [then-branch: 306 | False | dead]
; [else-branch: 306 | True | live]
(push) ; 10
; [else-branch: 306 | True]
(pop) ; 10
; [eval] !(p2_3 && !ret2)
; [eval] p2_3 && !ret2
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 307 | True | live]
; [else-branch: 307 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 307 | True]
; [eval] p1_2 && !ret1
(push) ; 11
; [then-branch: 308 | !(p1_2@132@01) | live]
; [else-branch: 308 | p1_2@132@01 | live]
(push) ; 12
; [then-branch: 308 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 12
(push) ; 12
; [else-branch: 308 | p1_2@132@01]
; [eval] !ret1
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(push) ; 11
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 309 | p1_2@132@01 | live]
; [else-branch: 309 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 309 | p1_2@132@01]
; [exec]
; self_2.A_a := __prim__int___box__(int___add__(int___unbox__(a_0), int___unbox__(c_0)))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_0), int___unbox__(c_0)))
; [eval] int___add__(int___unbox__(a_0), int___unbox__(c_0))
; [eval] int___unbox__(a_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a@142@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a@142@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a@142@01)))
; [eval] int___unbox__(c_0)
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit c@146@01))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> c@146@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit c@146@01)))
(push) ; 12
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))
(pop) ; 12
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))
(push) ; 12
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01))))
(pop) ; 12
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01))))
(declare-const A_a@214@01 $Ref)
(assert (=
  A_a@214@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit c@146@01)))))
; [eval] p2_2 && !ret2
(push) ; 12
; [then-branch: 310 | !(p2_2@133@01) | live]
; [else-branch: 310 | p2_2@133@01 | live]
(push) ; 13
; [then-branch: 310 | !(p2_2@133@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 310 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
; [then-branch: 311 | p2_2@133@01 | dead]
; [else-branch: 311 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 311 | !(p2_2@133@01)]
(pop) ; 12
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 12
; [then-branch: 312 | !(p2_2@133@01) | live]
; [else-branch: 312 | p2_2@133@01 | live]
(push) ; 13
; [then-branch: 312 | !(p2_2@133@01)]
(pop) ; 13
(push) ; 13
; [else-branch: 312 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(push) ; 12
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 313 | !(p2_2@133@01) | live]
; [else-branch: 313 | p2_2@133@01 | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 313 | !(p2_2@133@01)]
; [exec]
; p1_4 := p1_2 && (!ret1 && perm(_MaySet(self_2, 6446913)) > none)
; [eval] p1_2 && (!ret1 && perm(_MaySet(self_2, 6446913)) > none)
(push) ; 13
; [then-branch: 314 | !(p1_2@132@01) | live]
; [else-branch: 314 | p1_2@132@01 | live]
(push) ; 14
; [then-branch: 314 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 14
(push) ; 14
; [else-branch: 314 | p1_2@132@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 315 | False | live]
; [else-branch: 315 | True | live]
(push) ; 16
; [then-branch: 315 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 315 | True]
; [eval] perm(_MaySet(self_2, 6446913)) > none
; [eval] perm(_MaySet(self_2, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p2_4 := p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6446913)) > none)
; [eval] p2_2 && (!ret2 && perm(_MaySet_0(self_2_0, 6446913)) > none)
(push) ; 13
; [then-branch: 316 | !(p2_2@133@01) | live]
; [else-branch: 316 | p2_2@133@01 | live]
(push) ; 14
; [then-branch: 316 | !(p2_2@133@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 316 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(push) ; 15
; [then-branch: 317 | False | live]
; [else-branch: 317 | True | live]
(push) ; 16
; [then-branch: 317 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 317 | True]
; [eval] perm(_MaySet_0(self_2_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_2_0, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p3_2 := p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6446913)) > none))
; [eval] p1_2 && (!ret1 && !(perm(_MaySet(self_2, 6446913)) > none))
(push) ; 13
; [then-branch: 318 | !(p1_2@132@01) | live]
; [else-branch: 318 | p1_2@132@01 | live]
(push) ; 14
; [then-branch: 318 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 14
(push) ; 14
; [else-branch: 318 | p1_2@132@01]
; [eval] !ret1
(push) ; 15
; [then-branch: 319 | False | live]
; [else-branch: 319 | True | live]
(push) ; 16
; [then-branch: 319 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 319 | True]
; [eval] !(perm(_MaySet(self_2, 6446913)) > none)
; [eval] perm(_MaySet(self_2, 6446913)) > none
; [eval] perm(_MaySet(self_2, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [exec]
; p4_2 := p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6446913)) > none))
; [eval] p2_2 && (!ret2 && !(perm(_MaySet_0(self_2_0, 6446913)) > none))
(push) ; 13
; [then-branch: 320 | !(p2_2@133@01) | live]
; [else-branch: 320 | p2_2@133@01 | live]
(push) ; 14
; [then-branch: 320 | !(p2_2@133@01)]
(pop) ; 14
(push) ; 14
; [else-branch: 320 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(push) ; 15
; [then-branch: 321 | False | live]
; [else-branch: 321 | True | live]
(push) ; 16
; [then-branch: 321 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 321 | True]
; [eval] !(perm(_MaySet_0(self_2_0, 6446913)) > none)
; [eval] perm(_MaySet_0(self_2_0, 6446913)) > none
; [eval] perm(_MaySet_0(self_2_0, 6446913))
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
; [eval] p1_4 && !ret1
; [then-branch: 322 | False | dead]
; [else-branch: 322 | True | live]
(push) ; 13
; [else-branch: 322 | True]
(pop) ; 13
; [eval] !(p1_4 && !ret1)
; [eval] p1_4 && !ret1
(push) ; 13
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 323 | True | live]
; [else-branch: 323 | False | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 323 | True]
; [eval] p2_4 && !ret2
; [then-branch: 324 | False | dead]
; [else-branch: 324 | True | live]
(push) ; 14
; [else-branch: 324 | True]
(pop) ; 14
; [eval] !(p2_4 && !ret2)
; [eval] p2_4 && !ret2
(push) ; 14
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 325 | True | live]
; [else-branch: 325 | False | dead]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 325 | True]
; [eval] p1_2 && !ret1
(push) ; 15
; [then-branch: 326 | !(p1_2@132@01) | live]
; [else-branch: 326 | p1_2@132@01 | live]
(push) ; 16
; [then-branch: 326 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 16
(push) ; 16
; [else-branch: 326 | p1_2@132@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(push) ; 15
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 327 | p1_2@132@01 | live]
; [else-branch: 327 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 327 | p1_2@132@01]
; [exec]
; self_2.A_b := __prim__int___box__(int___sub__(int___unbox__(b_0), int___unbox__(c_0)))
; [eval] __prim__int___box__(int___sub__(int___unbox__(b_0), int___unbox__(c_0)))
; [eval] int___sub__(int___unbox__(b_0), int___unbox__(c_0))
; [eval] int___unbox__(b_0)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 17
(assert (not (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b@144@01))
(pop) ; 16
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b@144@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b@144@01)))
; [eval] int___unbox__(c_0)
(push) ; 16
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 16
; Joined path conditions
(push) ; 16
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))
(pop) ; 16
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))
(push) ; 16
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01))))
(pop) ; 16
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01))))
(declare-const A_b@215@01 $Ref)
(assert (=
  A_b@215@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit b@144@01) (int___unbox__ $Snap.unit c@146@01)))))
; [eval] p2_2 && !ret2
(push) ; 16
; [then-branch: 328 | !(p2_2@133@01) | live]
; [else-branch: 328 | p2_2@133@01 | live]
(push) ; 17
; [then-branch: 328 | !(p2_2@133@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 328 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
; [then-branch: 329 | p2_2@133@01 | dead]
; [else-branch: 329 | !(p2_2@133@01) | live]
(push) ; 16
; [else-branch: 329 | !(p2_2@133@01)]
(pop) ; 16
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 16
; [then-branch: 330 | !(p2_2@133@01) | live]
; [else-branch: 330 | p2_2@133@01 | live]
(push) ; 17
; [then-branch: 330 | !(p2_2@133@01)]
(pop) ; 17
(push) ; 17
; [else-branch: 330 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(push) ; 16
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 331 | !(p2_2@133@01) | live]
; [else-branch: 331 | p2_2@133@01 | dead]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 331 | !(p2_2@133@01)]
; [eval] p1_2 && !ret1
(push) ; 17
; [then-branch: 332 | !(p1_2@132@01) | live]
; [else-branch: 332 | p1_2@132@01 | live]
(push) ; 18
; [then-branch: 332 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 18
(push) ; 18
; [else-branch: 332 | p1_2@132@01]
; [eval] !ret1
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
(push) ; 17
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 333 | p1_2@132@01 | live]
; [else-branch: 333 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 333 | p1_2@132@01]
; [exec]
; _res := __prim__int___box__(int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b)))
; [eval] __prim__int___box__(int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b)))
; [eval] int___add__(int___unbox__(self_2.A_a), int___unbox__(self_2.A_b))
; [eval] int___unbox__(self_2.A_a)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> A_a@214@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_a@214@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_a@214@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_a@214@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_a@214@01)))
; [eval] int___unbox__(self_2.A_b)
(push) ; 18
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 19
(assert (not (issubtype<Bool> (typeof<PyType> A_b@215@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_b@215@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit A_b@215@01))
(pop) ; 18
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> A_b@215@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit A_b@215@01)))
(push) ; 18
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_a@214@01) (int___unbox__ $Snap.unit A_b@215@01)))
(pop) ; 18
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit A_a@214@01) (int___unbox__ $Snap.unit A_b@215@01)))
(push) ; 18
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@214@01) (int___unbox__ $Snap.unit A_b@215@01))))
(pop) ; 18
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@214@01) (int___unbox__ $Snap.unit A_b@215@01))))
(declare-const _res@216@01 $Ref)
(assert (=
  _res@216@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit A_a@214@01) (int___unbox__ $Snap.unit A_b@215@01)))))
; [exec]
; ret1 := true
; [eval] p2_2 && !ret2
(push) ; 18
; [then-branch: 334 | !(p2_2@133@01) | live]
; [else-branch: 334 | p2_2@133@01 | live]
(push) ; 19
; [then-branch: 334 | !(p2_2@133@01)]
(pop) ; 19
(push) ; 19
; [else-branch: 334 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
; [then-branch: 335 | p2_2@133@01 | dead]
; [else-branch: 335 | !(p2_2@133@01) | live]
(push) ; 18
; [else-branch: 335 | !(p2_2@133@01)]
(pop) ; 18
; [eval] !(p2_2 && !ret2)
; [eval] p2_2 && !ret2
(push) ; 18
; [then-branch: 336 | !(p2_2@133@01) | live]
; [else-branch: 336 | p2_2@133@01 | live]
(push) ; 19
; [then-branch: 336 | !(p2_2@133@01)]
(pop) ; 19
(push) ; 19
; [else-branch: 336 | p2_2@133@01]
(assert p2_2@133@01)
; [eval] !ret2
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(push) ; 18
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 337 | !(p2_2@133@01) | live]
; [else-branch: 337 | p2_2@133@01 | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 337 | !(p2_2@133@01)]
; [exec]
; assert true
; [eval] p1_2 ==> true
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 338 | p1_2@132@01 | live]
; [else-branch: 338 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 338 | p1_2@132@01]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] p2_2 ==> true
(push) ; 19
; [then-branch: 339 | p2_2@133@01 | dead]
; [else-branch: 339 | !(p2_2@133@01) | live]
(push) ; 20
; [else-branch: 339 | !(p2_2@133@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 19
(push) ; 20
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 340 | p1_2@132@01 | live]
; [else-branch: 340 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 340 | p1_2@132@01]
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(pop) ; 20
(pop) ; 19
; Joined path conditions
(push) ; 19
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 19
; [then-branch: 341 | p2_2@133@01 | dead]
; [else-branch: 341 | !(p2_2@133@01) | live]
(push) ; 20
; [else-branch: 341 | !(p2_2@133@01)]
(pop) ; 20
(pop) ; 19
; Joined path conditions
(push) ; 19
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 342 | p1_2@132@01 | live]
; [else-branch: 342 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 342 | p1_2@132@01]
; [then-branch: 343 | p2_2@133@01 | dead]
; [else-branch: 343 | !(p2_2@133@01) | live]
(push) ; 20
; [else-branch: 343 | !(p2_2@133@01)]
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 344 | p1_2@132@01 | live]
; [else-branch: 344 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 344 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_a), int())
; [eval] typeof(self_0.A_a)
; [eval] int()
(pop) ; 22
(pop) ; 21
; Joined path conditions
(push) ; 21
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_a@214@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_a@214@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 21
; [then-branch: 345 | p2_2@133@01 | dead]
; [else-branch: 345 | !(p2_2@133@01) | live]
(push) ; 22
; [else-branch: 345 | !(p2_2@133@01)]
(pop) ; 22
(pop) ; 21
; Joined path conditions
(push) ; 21
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 346 | p1_2@132@01 | live]
; [else-branch: 346 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 346 | p1_2@132@01]
; [then-branch: 347 | p2_2@133@01 | dead]
; [else-branch: 347 | !(p2_2@133@01) | live]
(push) ; 22
; [else-branch: 347 | !(p2_2@133@01)]
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 348 | p1_2@132@01 | live]
; [else-branch: 348 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 348 | p1_2@132@01]
; [eval] issubtype(typeof(self_0.A_b), int())
; [eval] typeof(self_0.A_b)
; [eval] int()
(pop) ; 24
(pop) ; 23
; Joined path conditions
(push) ; 23
(assert (not (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_b@215@01) (as int<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (issubtype<Bool> (typeof<PyType> A_b@215@01) (as int<PyType>  PyType))))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 23
; [then-branch: 349 | p2_2@133@01 | dead]
; [else-branch: 349 | !(p2_2@133@01) | live]
(push) ; 24
; [else-branch: 349 | !(p2_2@133@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 350 | p1_2@132@01 | live]
; [else-branch: 350 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 350 | p1_2@132@01]
; [eval] int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b)))
; [eval] int___add__(int___unbox__(a), int___unbox__(b))
; [eval] int___unbox__(a)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
; [eval] int___unbox__(b)
(push) ; 25
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 25
; Joined path conditions
(push) ; 25
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(pop) ; 25
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
(push) ; 25
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(pop) ; 25
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))
(push) ; 25
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 26
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@216@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))
(pop) ; 25
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@216@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  p1_2@132@01
  (and
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))
    (issubtype<Bool> (typeof<PyType> _res@216@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@216@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(push) ; 23
(assert (not (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@216@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01)))))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=>
  p1_2@132@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@216@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a@142@01) (int___unbox__ $Snap.unit b@144@01))))))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 23
; [then-branch: 351 | p2_2@133@01 | dead]
; [else-branch: 351 | !(p2_2@133@01) | live]
(push) ; 24
; [else-branch: 351 | !(p2_2@133@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] p1_2 ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not p1_2@132@01)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 352 | p1_2@132@01 | live]
; [else-branch: 352 | !(p1_2@132@01) | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 352 | p1_2@132@01]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 25
; [then-branch: 353 | False | live]
; [else-branch: 353 | True | live]
(push) ; 26
; [then-branch: 353 | False]
(assert false)
(pop) ; 26
(push) ; 26
; [else-branch: 353 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 27
; [then-branch: 354 | False | live]
; [else-branch: 354 | True | live]
(push) ; 28
; [then-branch: 354 | False]
(assert false)
(pop) ; 28
(push) ; 28
; [else-branch: 354 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 29
; [then-branch: 355 | False | live]
; [else-branch: 355 | True | live]
(push) ; 30
; [then-branch: 355 | False]
(assert false)
(pop) ; 30
(push) ; 30
; [else-branch: 355 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 30
(pop) ; 29
; Joined path conditions
; Joined path conditions
(pop) ; 28
(pop) ; 27
; Joined path conditions
; Joined path conditions
(pop) ; 26
(pop) ; 25
; Joined path conditions
; Joined path conditions
(pop) ; 24
(pop) ; 23
; Joined path conditions
; [eval] p2_2 ==> (forperm _r_3: Ref [MustInvokeBounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded_0(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBoundedp] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnboundedp] :: false)))
(push) ; 23
; [then-branch: 356 | p2_2@133@01 | dead]
; [else-branch: 356 | !(p2_2@133@01) | live]
(push) ; 24
; [else-branch: 356 | !(p2_2@133@01)]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 17
; [then-branch: 357 | !(p1_2@132@01) | live]
; [else-branch: 357 | p1_2@132@01 | live]
(push) ; 18
; [then-branch: 357 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 18
(push) ; 18
; [else-branch: 357 | p1_2@132@01]
; [eval] !ret1
(pop) ; 18
(pop) ; 17
; Joined path conditions
; Joined path conditions
; [then-branch: 358 | !(p1_2@132@01) | dead]
; [else-branch: 358 | p1_2@132@01 | live]
(push) ; 17
; [else-branch: 358 | p1_2@132@01]
(pop) ; 17
(pop) ; 16
(pop) ; 15
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 15
; [then-branch: 359 | !(p1_2@132@01) | live]
; [else-branch: 359 | p1_2@132@01 | live]
(push) ; 16
; [then-branch: 359 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 16
(push) ; 16
; [else-branch: 359 | p1_2@132@01]
; [eval] !ret1
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
; [then-branch: 360 | !(p1_2@132@01) | dead]
; [else-branch: 360 | p1_2@132@01 | live]
(push) ; 15
; [else-branch: 360 | p1_2@132@01]
(pop) ; 15
(pop) ; 14
(pop) ; 13
(pop) ; 12
(pop) ; 11
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 11
; [then-branch: 361 | !(p1_2@132@01) | live]
; [else-branch: 361 | p1_2@132@01 | live]
(push) ; 12
; [then-branch: 361 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 12
(push) ; 12
; [else-branch: 361 | p1_2@132@01]
; [eval] !ret1
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
; [then-branch: 362 | !(p1_2@132@01) | dead]
; [else-branch: 362 | p1_2@132@01 | live]
(push) ; 11
; [else-branch: 362 | p1_2@132@01]
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 7
; [then-branch: 363 | !(p1_2@132@01) | live]
; [else-branch: 363 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 363 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(pop) ; 8
(push) ; 8
; [else-branch: 363 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 364 | !(p1_2@132@01) | dead]
; [else-branch: 364 | p1_2@132@01 | live]
(push) ; 7
; [else-branch: 364 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 156 | !(p1_2@132@01)]
(assert (not p1_2@132@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_2@133@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 365 | p2_2@133@01 | live]
; [else-branch: 365 | !(p2_2@133@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 365 | p2_2@133@01]
(assert p2_2@133@01)
(assert (not (= self_0_0@141@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 4
; [then-branch: 366 | p1_2@132@01 | dead]
; [else-branch: 366 | !(p1_2@132@01) | live]
(push) ; 5
; [else-branch: 366 | !(p1_2@132@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 367 | p2_2@133@01 | live]
; [else-branch: 367 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 367 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_ap), int())
; [eval] typeof(self_0_0.A_ap)
; [eval] int()
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
; [then-branch: 368 | p1_2@132@01 | dead]
; [else-branch: 368 | !(p1_2@132@01) | live]
(push) ; 4
; [else-branch: 368 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 369 | p2_2@133@01 | live]
; [else-branch: 369 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 369 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 6
; [then-branch: 370 | p1_2@132@01 | dead]
; [else-branch: 370 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 370 | !(p1_2@132@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 371 | p2_2@133@01 | live]
; [else-branch: 371 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 371 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_bp), int())
; [eval] typeof(self_0_0.A_bp)
; [eval] int()
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 6
; [then-branch: 372 | p1_2@132@01 | dead]
; [else-branch: 372 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 372 | !(p1_2@132@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 373 | p2_2@133@01 | live]
; [else-branch: 373 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 373 | p2_2@133@01]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@217@01 $Snap)
(assert (= $t@217@01 ($Snap.combine ($Snap.first $t@217@01) ($Snap.second $t@217@01))))
(assert (= ($Snap.first $t@217@01) $Snap.unit))
; [eval] p1_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 7
; [then-branch: 374 | p1_2@132@01 | dead]
; [else-branch: 374 | !(p1_2@132@01) | live]
(push) ; 8
; [else-branch: 374 | !(p1_2@132@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second $t@217@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@217@01))
    ($Snap.second ($Snap.second $t@217@01)))))
(assert (= ($Snap.first ($Snap.second $t@217@01)) $Snap.unit))
; [eval] p2_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 375 | p2_2@133@01 | live]
; [else-branch: 375 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 375 | p2_2@133@01]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 9
; [then-branch: 376 | False | live]
; [else-branch: 376 | True | live]
(push) ; 10
; [then-branch: 376 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 376 | True]
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0)
(push) ; 11
; [then-branch: 377 | False | live]
; [else-branch: 377 | True | live]
(push) ; 12
; [then-branch: 377 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 377 | True]
; [eval] _residue_157_0 <= _current_wait_level_157_0
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=> p2_2@133@01 (<= _residue_157_0@139@01 _current_wait_level_157_0@149@01)))
(assert (=
  ($Snap.second ($Snap.second $t@217@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@217@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@217@01))) $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 7
; [then-branch: 378 | p1_2@132@01 | dead]
; [else-branch: 378 | !(p1_2@132@01) | live]
(push) ; 8
; [else-branch: 378 | !(p1_2@132@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@217@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@217@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@217@01))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 379 | p2_2@133@01 | live]
; [else-branch: 379 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 379 | p2_2@133@01]
; [eval] issubtype(typeof(_res_0), int())
; [eval] typeof(_res_0)
; [eval] int()
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))
; [then-branch: 380 | p1_2@132@01 | dead]
; [else-branch: 380 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 380 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))
(push) ; 8
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 381 | p2_2@133@01 | live]
; [else-branch: 381 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 381 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 9
; [then-branch: 382 | p1_2@132@01 | dead]
; [else-branch: 382 | !(p1_2@132@01) | live]
(push) ; 10
; [else-branch: 382 | !(p1_2@132@01)]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 383 | p2_2@133@01 | live]
; [else-branch: 383 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 383 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_ap), int())
; [eval] typeof(self_0_0.A_ap)
; [eval] int()
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))
; [then-branch: 384 | p1_2@132@01 | dead]
; [else-branch: 384 | !(p1_2@132@01) | live]
(push) ; 9
; [else-branch: 384 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))
(push) ; 10
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 385 | p2_2@133@01 | live]
; [else-branch: 385 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 385 | p2_2@133@01]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 11
; [then-branch: 386 | p1_2@132@01 | dead]
; [else-branch: 386 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 386 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 387 | p2_2@133@01 | live]
; [else-branch: 387 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 387 | p2_2@133@01]
; [eval] issubtype(typeof(self_0_0.A_bp), int())
; [eval] typeof(self_0_0.A_bp)
; [eval] int()
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p2_2@133@01
  (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))) (as int<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 11
; [then-branch: 388 | p1_2@132@01 | dead]
; [else-branch: 388 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 388 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 389 | p2_2@133@01 | live]
; [else-branch: 389 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 389 | p2_2@133@01]
; [eval] int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
; [eval] __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1)))
; [eval] int___add__(int___unbox__(a_1), int___unbox__(b_1))
; [eval] int___unbox__(a_1)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit a_1@143@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit a_1@143@01)))
; [eval] int___unbox__(b_1)
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit b_1@145@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit b_1@145@01)))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
(push) ; 13
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(pop) ; 13
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))
(push) ; 13
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType)))
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 14
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))
(pop) ; 13
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  p2_2@133@01
  (and
    (issubtype<Bool> (typeof<PyType> a_1@143@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit a_1@143@01)
    (issubtype<Bool> (typeof<PyType> b_1@145@01) (as int<PyType>  PyType))
    (int___unbox__%precondition $Snap.unit b_1@145@01)
    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))
    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))
    (issubtype<Bool> (typeof<PyType> _res_0@151@01) (as int<PyType>  PyType))
    (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))) (as int<PyType>  PyType))
    (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01)))))))
(assert (=>
  p2_2@133@01
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res_0@151@01 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_1@143@01) (int___unbox__ $Snap.unit b_1@145@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 11
; [then-branch: 390 | p1_2@132@01 | dead]
; [else-branch: 390 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 390 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@217@01)))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 11
(push) ; 12
(set-option :timeout 10)
(assert (not (not p2_2@133@01)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [then-branch: 391 | p2_2@133@01 | live]
; [else-branch: 391 | !(p2_2@133@01) | dead]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 391 | p2_2@133@01]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; var ret1: Bool
(declare-const ret1@218@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@219@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@220@01 $Ref)
; [exec]
; var _err_1: Ref
(declare-const _err_1@221@01 $Ref)
; [exec]
; var self_2: Ref
(declare-const self_2@222@01 $Ref)
; [exec]
; var self_2_0: Ref
(declare-const self_2_0@223@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@224@01 $Ref)
; [exec]
; var a_0_0: Ref
(declare-const a_0_0@225@01 $Ref)
; [exec]
; var b_0: Ref
(declare-const b_0@226@01 $Ref)
; [exec]
; var b_0_0: Ref
(declare-const b_0_0@227@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@228@01 $Ref)
; [exec]
; var c_0_0: Ref
(declare-const c_0_0@229@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@230@01 $Perm)
; [exec]
; var _cwl_157_0: Perm
(declare-const _cwl_157_0@231@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@232@01 Seq<Measure$>)
; [exec]
; var _method_measures_157_0: Seq[Measure$]
(declare-const _method_measures_157_0@233@01 Seq<Measure$>)
; [exec]
; var p1_3: Bool
(declare-const p1_3@234@01 Bool)
; [exec]
; var p2_3: Bool
(declare-const p2_3@235@01 Bool)
; [exec]
; var p3_1: Bool
(declare-const p3_1@236@01 Bool)
; [exec]
; var p4_1: Bool
(declare-const p4_1@237@01 Bool)
; [exec]
; var p1_4: Bool
(declare-const p1_4@238@01 Bool)
; [exec]
; var p2_4: Bool
(declare-const p2_4@239@01 Bool)
; [exec]
; var p3_2: Bool
(declare-const p3_2@240@01 Bool)
; [exec]
; var p4_2: Bool
(declare-const p4_2@241@01 Bool)
; [exec]
; inhale p1_2
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
(assert p1_2@132@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1_2 && !ret1
(set-option :timeout 0)
(push) ; 7
; [then-branch: 392 | !(p1_2@132@01) | live]
; [else-branch: 392 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 392 | !(p1_2@132@01)]
(pop) ; 8
(push) ; 8
; [else-branch: 392 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or p1_2@132@01 (not p1_2@132@01)))
; [then-branch: 393 | p1_2@132@01 | dead]
; [else-branch: 393 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 393 | !(p1_2@132@01)]
(pop) ; 7
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 7
; [then-branch: 394 | !(p1_2@132@01) | live]
; [else-branch: 394 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 394 | !(p1_2@132@01)]
(pop) ; 8
(push) ; 8
; [else-branch: 394 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 395 | !(p1_2@132@01) | dead]
; [else-branch: 395 | p1_2@132@01 | live]
(push) ; 7
; [else-branch: 395 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 365 | !(p2_2@133@01)]
(assert (not p2_2@133@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 4
; [then-branch: 396 | p1_2@132@01 | dead]
; [else-branch: 396 | !(p1_2@132@01) | live]
(push) ; 5
; [else-branch: 396 | !(p1_2@132@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 4
; [then-branch: 397 | p2_2@133@01 | dead]
; [else-branch: 397 | !(p2_2@133@01) | live]
(push) ; 5
; [else-branch: 397 | !(p2_2@133@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
; [then-branch: 398 | p1_2@132@01 | dead]
; [else-branch: 398 | !(p1_2@132@01) | live]
(push) ; 4
; [else-branch: 398 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
; [then-branch: 399 | p2_2@133@01 | dead]
; [else-branch: 399 | !(p2_2@133@01) | live]
(push) ; 5
; [else-branch: 399 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 6
; [then-branch: 400 | p1_2@132@01 | dead]
; [else-branch: 400 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 400 | !(p1_2@132@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 6
; [then-branch: 401 | p2_2@133@01 | dead]
; [else-branch: 401 | !(p2_2@133@01) | live]
(push) ; 7
; [else-branch: 401 | !(p2_2@133@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01))))))))))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 6
; [then-branch: 402 | p1_2@132@01 | dead]
; [else-branch: 402 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 402 | !(p1_2@132@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@01)))))))))))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 6
; [then-branch: 403 | p2_2@133@01 | dead]
; [else-branch: 403 | !(p2_2@133@01) | live]
(push) ; 7
; [else-branch: 403 | !(p2_2@133@01)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 ($Snap.combine ($Snap.first $t@243@01) ($Snap.second $t@243@01))))
(assert (= ($Snap.first $t@243@01) $Snap.unit))
; [eval] p1_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157) && ((forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157) && _residue_157 <= _current_wait_level_157)
(push) ; 7
; [then-branch: 404 | p1_2@132@01 | dead]
; [else-branch: 404 | !(p1_2@132@01) | live]
(push) ; 8
; [else-branch: 404 | !(p1_2@132@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second $t@243@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@243@01))
    ($Snap.second ($Snap.second $t@243@01)))))
(assert (= ($Snap.first ($Snap.second $t@243@01)) $Snap.unit))
; [eval] p2_2 ==> (forperm _r_2: Ref [_r_2.MustReleaseBoundedp] :: Level(_r_2) <= _current_wait_level_157_0) && ((forperm _r_2: Ref [_r_2.MustReleaseUnboundedp] :: Level(_r_2) <= _current_wait_level_157_0) && _residue_157_0 <= _current_wait_level_157_0)
(push) ; 7
; [then-branch: 405 | p2_2@133@01 | dead]
; [else-branch: 405 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 405 | !(p2_2@133@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second $t@243@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@243@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@243@01))) $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(_res), int())
(push) ; 7
; [then-branch: 406 | p1_2@132@01 | dead]
; [else-branch: 406 | !(p1_2@132@01) | live]
(push) ; 8
; [else-branch: 406 | !(p1_2@132@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@243@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@243@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@243@01))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(_res_0), int())
(push) ; 7
; [then-branch: 407 | p2_2@133@01 | dead]
; [else-branch: 407 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 407 | !(p2_2@133@01)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))
; [then-branch: 408 | p1_2@132@01 | dead]
; [else-branch: 408 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 408 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))
; [then-branch: 409 | p2_2@133@01 | dead]
; [else-branch: 409 | !(p2_2@133@01) | live]
(push) ; 8
; [else-branch: 409 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_a), int())
(push) ; 9
; [then-branch: 410 | p1_2@132@01 | dead]
; [else-branch: 410 | !(p1_2@132@01) | live]
(push) ; 10
; [else-branch: 410 | !(p1_2@132@01)]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_ap), int())
(push) ; 9
; [then-branch: 411 | p2_2@133@01 | dead]
; [else-branch: 411 | !(p2_2@133@01) | live]
(push) ; 10
; [else-branch: 411 | !(p2_2@133@01)]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))
; [then-branch: 412 | p1_2@132@01 | dead]
; [else-branch: 412 | !(p1_2@132@01) | live]
(push) ; 9
; [else-branch: 412 | !(p1_2@132@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))
; [then-branch: 413 | p2_2@133@01 | dead]
; [else-branch: 413 | !(p2_2@133@01) | live]
(push) ; 10
; [else-branch: 413 | !(p2_2@133@01)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))
  $Snap.unit))
; [eval] p1_2 ==> issubtype(typeof(self_0.A_b), int())
(push) ; 11
; [then-branch: 414 | p1_2@132@01 | dead]
; [else-branch: 414 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 414 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> issubtype(typeof(self_0_0.A_bp), int())
(push) ; 11
; [then-branch: 415 | p2_2@133@01 | dead]
; [else-branch: 415 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 415 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> int___eq__(_res, __prim__int___box__(int___add__(int___unbox__(a), int___unbox__(b))))
(push) ; 11
; [then-branch: 416 | p1_2@132@01 | dead]
; [else-branch: 416 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 416 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> int___eq__(_res_0, __prim__int___box__(int___add__(int___unbox__(a_1), int___unbox__(b_1))))
(push) ; 11
; [then-branch: 417 | p2_2@133@01 | dead]
; [else-branch: 417 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 417 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))))
  $Snap.unit))
; [eval] p1_2 ==> true
(push) ; 11
; [then-branch: 418 | p1_2@132@01 | dead]
; [else-branch: 418 | !(p1_2@132@01) | live]
(push) ; 12
; [else-branch: 418 | !(p1_2@132@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@243@01)))))))))))))))
  $Snap.unit))
; [eval] p2_2 ==> true
(push) ; 11
; [then-branch: 419 | p2_2@133@01 | dead]
; [else-branch: 419 | !(p2_2@133@01) | live]
(push) ; 12
; [else-branch: 419 | !(p2_2@133@01)]
(pop) ; 12
(pop) ; 11
; Joined path conditions
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [exec]
; var ret1: Bool
(declare-const ret1@244@01 Bool)
; [exec]
; var ret2: Bool
(declare-const ret2@245@01 Bool)
; [exec]
; var _err: Ref
(declare-const _err@246@01 $Ref)
; [exec]
; var _err_1: Ref
(declare-const _err_1@247@01 $Ref)
; [exec]
; var self_2: Ref
(declare-const self_2@248@01 $Ref)
; [exec]
; var self_2_0: Ref
(declare-const self_2_0@249@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@250@01 $Ref)
; [exec]
; var a_0_0: Ref
(declare-const a_0_0@251@01 $Ref)
; [exec]
; var b_0: Ref
(declare-const b_0@252@01 $Ref)
; [exec]
; var b_0_0: Ref
(declare-const b_0_0@253@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@254@01 $Ref)
; [exec]
; var c_0_0: Ref
(declare-const c_0_0@255@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@256@01 $Perm)
; [exec]
; var _cwl_157_0: Perm
(declare-const _cwl_157_0@257@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@258@01 Seq<Measure$>)
; [exec]
; var _method_measures_157_0: Seq[Measure$]
(declare-const _method_measures_157_0@259@01 Seq<Measure$>)
; [exec]
; var p1_3: Bool
(declare-const p1_3@260@01 Bool)
; [exec]
; var p2_3: Bool
(declare-const p2_3@261@01 Bool)
; [exec]
; var p3_1: Bool
(declare-const p3_1@262@01 Bool)
; [exec]
; var p4_1: Bool
(declare-const p4_1@263@01 Bool)
; [exec]
; var p1_4: Bool
(declare-const p1_4@264@01 Bool)
; [exec]
; var p2_4: Bool
(declare-const p2_4@265@01 Bool)
; [exec]
; var p3_2: Bool
(declare-const p3_2@266@01 Bool)
; [exec]
; var p4_2: Bool
(declare-const p4_2@267@01 Bool)
; [exec]
; inhale p1_2
(declare-const $t@268@01 $Snap)
(assert (= $t@268@01 $Snap.unit))
(assert p1_2@132@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unsat
; [exec]
; ret1 := false
; [exec]
; ret2 := false
; [eval] p1_2 && !ret1
(set-option :timeout 0)
(push) ; 7
; [then-branch: 420 | !(p1_2@132@01) | live]
; [else-branch: 420 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 420 | !(p1_2@132@01)]
(pop) ; 8
(push) ; 8
; [else-branch: 420 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or p1_2@132@01 (not p1_2@132@01)))
; [then-branch: 421 | p1_2@132@01 | dead]
; [else-branch: 421 | !(p1_2@132@01) | live]
(push) ; 7
; [else-branch: 421 | !(p1_2@132@01)]
(pop) ; 7
; [eval] !(p1_2 && !ret1)
; [eval] p1_2 && !ret1
(push) ; 7
; [then-branch: 422 | !(p1_2@132@01) | live]
; [else-branch: 422 | p1_2@132@01 | live]
(push) ; 8
; [then-branch: 422 | !(p1_2@132@01)]
(pop) ; 8
(push) ; 8
; [else-branch: 422 | p1_2@132@01]
; [eval] !ret1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
; [then-branch: 423 | !(p1_2@132@01) | dead]
; [else-branch: 423 | p1_2@132@01 | live]
(push) ; 7
; [else-branch: 423 | p1_2@132@01]
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const p1_5@269@01 Bool)
(declare-const p2_5@270@01 Bool)
(declare-const _cthread_158@271@01 $Ref)
(declare-const _cthread_158_0@272@01 $Ref)
(declare-const _caller_measures_158@273@01 Seq<Measure$>)
(declare-const _caller_measures_158_0@274@01 Seq<Measure$>)
(declare-const _residue_158@275@01 $Perm)
(declare-const _residue_158_0@276@01 $Perm)
(declare-const _current_wait_level_158@277@01 $Perm)
(declare-const _current_wait_level_158_0@278@01 $Perm)
(declare-const p1_5@279@01 Bool)
(declare-const p2_5@280@01 Bool)
(declare-const _cthread_158@281@01 $Ref)
(declare-const _cthread_158_0@282@01 $Ref)
(declare-const _caller_measures_158@283@01 Seq<Measure$>)
(declare-const _caller_measures_158_0@284@01 Seq<Measure$>)
(declare-const _residue_158@285@01 $Perm)
(declare-const _residue_158_0@286@01 $Perm)
(declare-const _current_wait_level_158@287@01 $Perm)
(declare-const _current_wait_level_158_0@288@01 $Perm)
(push) ; 1
(declare-const $t@289@01 $Snap)
(assert (= $t@289@01 ($Snap.combine ($Snap.first $t@289@01) ($Snap.second $t@289@01))))
(assert (= ($Snap.first $t@289@01) $Snap.unit))
; [eval] p1_5 ==> _cthread_158 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@279@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 424 | p1_5@279@01 | live]
; [else-branch: 424 | !(p1_5@279@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 424 | p1_5@279@01]
(assert p1_5@279@01)
; [eval] _cthread_158 != null
(pop) ; 3
(push) ; 3
; [else-branch: 424 | !(p1_5@279@01)]
(assert (not p1_5@279@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p1_5@279@01) p1_5@279@01))
(assert (=> p1_5@279@01 (not (= _cthread_158@281@01 $Ref.null))))
(assert (=
  ($Snap.second $t@289@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@289@01))
    ($Snap.second ($Snap.second $t@289@01)))))
(assert (= ($Snap.first ($Snap.second $t@289@01)) $Snap.unit))
; [eval] p2_5 ==> _cthread_158_0 != null
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 425 | p2_5@280@01 | live]
; [else-branch: 425 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 425 | p2_5@280@01]
(assert p2_5@280@01)
; [eval] _cthread_158_0 != null
(pop) ; 3
(push) ; 3
; [else-branch: 425 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not p2_5@280@01) p2_5@280@01))
(assert (=> p2_5@280@01 (not (= _cthread_158_0@282@01 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second $t@289@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@289@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@289@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@289@01))) $Snap.unit))
; [eval] p1_5 ==> issubtype(typeof(_cthread_158), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@279@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 426 | p1_5@279@01 | live]
; [else-branch: 426 | !(p1_5@279@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 426 | p1_5@279@01]
(assert p1_5@279@01)
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 426 | !(p1_5@279@01)]
(assert (not p1_5@279@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p1_5@279@01
  (issubtype<Bool> (typeof<PyType> _cthread_158@281@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@289@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@289@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@289@01))))
  $Snap.unit))
; [eval] p2_5 ==> issubtype(typeof(_cthread_158_0), Thread_0())
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 427 | p2_5@280@01 | live]
; [else-branch: 427 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 427 | p2_5@280@01]
(assert p2_5@280@01)
; [eval] issubtype(typeof(_cthread_158_0), Thread_0())
; [eval] typeof(_cthread_158_0)
; [eval] Thread_0()
(pop) ; 3
(push) ; 3
; [else-branch: 427 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=>
  p2_5@280@01
  (issubtype<Bool> (typeof<PyType> _cthread_158_0@282@01) (as Thread_0<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01)))))
  $Snap.unit))
; [eval] p1_5 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p1_5@279@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 428 | p1_5@279@01 | live]
; [else-branch: 428 | !(p1_5@279@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 428 | p1_5@279@01]
(assert p1_5@279@01)
(pop) ; 3
(push) ; 3
; [else-branch: 428 | !(p1_5@279@01)]
(assert (not p1_5@279@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@289@01)))))
  $Snap.unit))
; [eval] p2_5 ==> true
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 429 | p2_5@280@01 | live]
; [else-branch: 429 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 429 | p2_5@280@01]
(assert p2_5@280@01)
(pop) ; 3
(push) ; 3
; [else-branch: 429 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@290@01 $Snap)
(assert (= $t@290@01 ($Snap.combine ($Snap.first $t@290@01) ($Snap.second $t@290@01))))
(assert (= ($Snap.first $t@290@01) $Snap.unit))
; [eval] p1_5 ==> (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158) && ((forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158) && _residue_158 <= _current_wait_level_158)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_5@279@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 430 | p1_5@279@01 | live]
; [else-branch: 430 | !(p1_5@279@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 430 | p1_5@279@01]
(assert p1_5@279@01)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158) && ((forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158) && _residue_158 <= _current_wait_level_158)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(push) ; 5
; [then-branch: 431 | False | live]
; [else-branch: 431 | True | live]
(push) ; 6
; [then-branch: 431 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 431 | True]
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(push) ; 7
; [then-branch: 432 | False | live]
; [else-branch: 432 | True | live]
(push) ; 8
; [then-branch: 432 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 432 | True]
; [eval] _residue_158 <= _current_wait_level_158
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 430 | !(p1_5@279@01)]
(assert (not p1_5@279@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p1_5@279@01 (<= _residue_158@285@01 _current_wait_level_158@287@01)))
(assert (=
  ($Snap.second $t@290@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@290@01))
    ($Snap.second ($Snap.second $t@290@01)))))
(assert (= ($Snap.first ($Snap.second $t@290@01)) $Snap.unit))
; [eval] p2_5 ==> (forperm _r_5: Ref [_r_5.MustReleaseBoundedp] :: Level(_r_5) <= _current_wait_level_158_0) && ((forperm _r_5: Ref [_r_5.MustReleaseUnboundedp] :: Level(_r_5) <= _current_wait_level_158_0) && _residue_158_0 <= _current_wait_level_158_0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 433 | p2_5@280@01 | live]
; [else-branch: 433 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 433 | p2_5@280@01]
(assert p2_5@280@01)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBoundedp] :: Level(_r_5) <= _current_wait_level_158_0) && ((forperm _r_5: Ref [_r_5.MustReleaseUnboundedp] :: Level(_r_5) <= _current_wait_level_158_0) && _residue_158_0 <= _current_wait_level_158_0)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBoundedp] :: Level(_r_5) <= _current_wait_level_158_0)
(push) ; 5
; [then-branch: 434 | False | live]
; [else-branch: 434 | True | live]
(push) ; 6
; [then-branch: 434 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 434 | True]
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnboundedp] :: Level(_r_5) <= _current_wait_level_158_0)
(push) ; 7
; [then-branch: 435 | False | live]
; [else-branch: 435 | True | live]
(push) ; 8
; [then-branch: 435 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 435 | True]
; [eval] _residue_158_0 <= _current_wait_level_158_0
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 433 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=> p2_5@280@01 (<= _residue_158_0@286@01 _current_wait_level_158_0@288@01)))
(assert (=
  ($Snap.second ($Snap.second $t@290@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@290@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@290@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@290@01))) $Snap.unit))
; [eval] p1_5 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p1_5@279@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 436 | p1_5@279@01 | live]
; [else-branch: 436 | !(p1_5@279@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 436 | p1_5@279@01]
(assert p1_5@279@01)
(pop) ; 4
(push) ; 4
; [else-branch: 436 | !(p1_5@279@01)]
(assert (not p1_5@279@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@290@01))) $Snap.unit))
; [eval] p2_5 ==> true
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 437 | p2_5@280@01 | live]
; [else-branch: 437 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 437 | p2_5@280@01]
(assert p2_5@280@01)
(pop) ; 4
(push) ; 4
; [else-branch: 437 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@291@01 Bool)
; [exec]
; var module_defined_0_0: Bool
(declare-const module_defined_0_0@292@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@293@01 Set<_Name>)
; [exec]
; var module_names_0_0: Set[_Name]
(declare-const module_names_0_0@294@01 Set<_Name>)
; [exec]
; var _err: Ref
(declare-const _err@295@01 $Ref)
; [exec]
; var _err_2: Ref
(declare-const _err_2@296@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@297@01 $Perm)
; [exec]
; var _cwl_158_0: Perm
(declare-const _cwl_158_0@298@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@299@01 Seq<Measure$>)
; [exec]
; var _method_measures_158_0: Seq[Measure$]
(declare-const _method_measures_158_0@300@01 Seq<Measure$>)
; [exec]
; inhale p1_5
(declare-const $t@301@01 $Snap)
(assert (= $t@301@01 $Snap.unit))
(assert p1_5@279@01)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 438 | p1_5@279@01 | live]
; [else-branch: 438 | !(p1_5@279@01) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 438 | p1_5@279@01]
; [exec]
; _method_measures_158 := Seq[Measure$]()
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
(declare-const module_names_0@302@01 Set<_Name>)
(assert (=
  module_names_0@302@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@303@01 $Snap)
(assert (= $t@303@01 ($Snap.combine ($Snap.first $t@303@01) ($Snap.second $t@303@01))))
; [eval] __file__()
(push) ; 4
(assert (__file__%precondition $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@303@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@303@01))
    ($Snap.second ($Snap.second $t@303@01)))))
(assert (= ($Snap.first ($Snap.second $t@303@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@303@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@303@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 4
(pop) ; 4
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
(declare-const module_names_0@304@01 Set<_Name>)
(assert (=
  module_names_0@304@01
  (Set_union module_names_0@302@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@305@01 $Snap)
(assert (= $t@305@01 ($Snap.combine ($Snap.first $t@305@01) ($Snap.second $t@305@01))))
; [eval] __name__()
(set-option :timeout 0)
(push) ; 4
(assert (__name__%precondition $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (__name__%precondition $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (= (__file__ $Snap.unit) (__name__ $Snap.unit))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (__name__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@305@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@305@01))
    ($Snap.second ($Snap.second $t@305@01)))))
(assert (= ($Snap.first ($Snap.second $t@305@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@305@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@305@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@305@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@305@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@305@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 4
(pop) ; 4
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@305@01))) $Snap.unit))
; [eval] str___eq__(str___create__(8, 6872332955275845471), __name__()._val)
; [eval] str___create__(8, 6872332955275845471)
(push) ; 4
(assert (str___create__%precondition $Snap.unit 8 6872332955275845471))
(pop) ; 4
; Joined path conditions
(assert (str___create__%precondition $Snap.unit 8 6872332955275845471))
; [eval] __name__()
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType)))
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@305@01))))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@305@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@305@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@306@01 Set<_Name>)
(assert (=
  module_names_0@306@01
  (Set_union module_names_0@304@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7303014)))
; [eval] (module_names_0 union Set(_single(7303014)))
; [eval] Set(_single(7303014))
; [eval] _single(7303014)
(declare-const module_names_0@307@01 Set<_Name>)
(assert (=
  module_names_0@307@01
  (Set_union module_names_0@306@01 (Set_singleton (_single<_Name> 7303014)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(65)))
; [eval] (module_names_0 union Set(_single(65)))
; [eval] Set(_single(65))
; [eval] _single(65)
(declare-const module_names_0@308@01 Set<_Name>)
(assert (=
  module_names_0@308@01
  (Set_union module_names_0@307@01 (Set_singleton (_single<_Name> 65)))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 439 | p2_5@280@01 | live]
; [else-branch: 439 | !(p2_5@280@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 439 | p2_5@280@01]
(assert p2_5@280@01)
; [exec]
; _method_measures_158_0 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; module_defined_0_0 := true
; [exec]
; module_names_0_0 := Set[_Name]()
; [eval] Set[_Name]()
; [exec]
; module_names_0_0 := (module_names_0_0 union
;   Set(_single(6872323072689856351)))
; [eval] (module_names_0_0 union Set(_single(6872323072689856351)))
; [eval] Set(_single(6872323072689856351))
; [eval] _single(6872323072689856351)
(declare-const module_names_0_0@309@01 Set<_Name>)
(assert (=
  module_names_0_0@309@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._valp, 99 / 100) &&
;   (issubtype(typeof(__file__()._valp), str()) &&
;   issubtype(typeof(__file__()._valp), str()))
(declare-const $t@310@01 $Snap)
(assert (= $t@310@01 ($Snap.combine ($Snap.first $t@310@01) ($Snap.second $t@310@01))))
; [eval] __file__()
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (=
  ($Snap.second $t@310@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@310@01))
    ($Snap.second ($Snap.second $t@310@01)))))
(assert (= ($Snap.first ($Snap.second $t@310@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._valp), str())
; [eval] typeof(__file__()._valp)
; [eval] __file__()
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@310@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@310@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._valp), str())
; [eval] typeof(__file__()._valp)
; [eval] __file__()
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] str()
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0_0 := (module_names_0_0 union
;   Set(_single(6872323076851130207)))
; [eval] (module_names_0_0 union Set(_single(6872323076851130207)))
; [eval] Set(_single(6872323076851130207))
; [eval] _single(6872323076851130207)
(declare-const module_names_0_0@311@01 Set<_Name>)
(assert (=
  module_names_0_0@311@01
  (Set_union module_names_0_0@309@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._valp, 99 / 100) &&
;   (issubtype(typeof(__name__()._valp), str()) &&
;   (issubtype(typeof(__name__()._valp), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._valp)))
(declare-const $t@312@01 $Snap)
(assert (= $t@312@01 ($Snap.combine ($Snap.first $t@312@01) ($Snap.second $t@312@01))))
; [eval] __name__()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (= (__file__ $Snap.unit) (__name__ $Snap.unit))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second $t@312@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@312@01))
    ($Snap.second ($Snap.second $t@312@01)))))
(assert (= ($Snap.first ($Snap.second $t@312@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._valp), str())
; [eval] typeof(__name__()._valp)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@312@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@312@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@312@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@312@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@312@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._valp), str())
; [eval] typeof(__name__()._valp)
; [eval] __name__()
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@312@01))) $Snap.unit))
; [eval] str___eq__(str___create__(8, 6872332955275845471), __name__()._valp)
; [eval] str___create__(8, 6872332955275845471)
(push) ; 5
(pop) ; 5
; Joined path conditions
; [eval] __name__()
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@312@01))))
(pop) ; 5
; Joined path conditions
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@312@01))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@312@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err_2 := null
; [exec]
; module_names_0_0 := (module_names_0_0 union
;   Set(_single(6872339552563453791)))
; [eval] (module_names_0_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0_0@313@01 Set<_Name>)
(assert (=
  module_names_0_0@313@01
  (Set_union module_names_0_0@311@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0_0 := (module_names_0_0 union Set(_single(7303014)))
; [eval] (module_names_0_0 union Set(_single(7303014)))
; [eval] Set(_single(7303014))
; [eval] _single(7303014)
(declare-const module_names_0_0@314@01 Set<_Name>)
(assert (=
  module_names_0_0@314@01
  (Set_union module_names_0_0@313@01 (Set_singleton (_single<_Name> 7303014)))))
; [exec]
; module_names_0_0 := (module_names_0_0 union Set(_single(65)))
; [eval] (module_names_0_0 union Set(_single(65)))
; [eval] Set(_single(65))
; [eval] _single(65)
(declare-const module_names_0_0@315@01 Set<_Name>)
(assert (=
  module_names_0_0@315@01
  (Set_union module_names_0_0@314@01 (Set_singleton (_single<_Name> 65)))))
; [exec]
; assert true
; [eval] p1_5 ==> true
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 440 | p1_5@279@01 | live]
; [else-branch: 440 | !(p1_5@279@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 440 | p1_5@279@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_5 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 441 | p2_5@280@01 | live]
; [else-branch: 441 | !(p2_5@280@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 441 | p2_5@280@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1_5 ==> (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 442 | p1_5@279@01 | live]
; [else-branch: 442 | !(p1_5@279@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 442 | p1_5@279@01]
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
(push) ; 7
; [then-branch: 443 | False | live]
; [else-branch: 443 | True | live]
(push) ; 8
; [then-branch: 443 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 443 | True]
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
(push) ; 9
; [then-branch: 444 | False | live]
; [else-branch: 444 | True | live]
(push) ; 10
; [then-branch: 444 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 444 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
(push) ; 11
; [then-branch: 445 | False | live]
; [else-branch: 445 | True | live]
(push) ; 12
; [then-branch: 445 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 445 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_5 ==> (forperm _r_6: Ref [MustInvokeBounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBoundedp] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnboundedp] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 446 | p2_5@280@01 | live]
; [else-branch: 446 | !(p2_5@280@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 446 | p2_5@280@01]
; [eval] (forperm _r_6: Ref [MustInvokeBounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBoundedp] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnboundedp] :: false)))
; [eval] (forperm _r_6: Ref [MustInvokeBounded_0(_r_6)] :: false)
(push) ; 7
; [then-branch: 447 | False | live]
; [else-branch: 447 | True | live]
(push) ; 8
; [then-branch: 447 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 447 | True]
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded_0(_r_6)] :: false)
(push) ; 9
; [then-branch: 448 | False | live]
; [else-branch: 448 | True | live]
(push) ; 10
; [then-branch: 448 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 448 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBoundedp] :: false)
(push) ; 11
; [then-branch: 449 | False | live]
; [else-branch: 449 | True | live]
(push) ; 12
; [then-branch: 449 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 449 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnboundedp] :: false)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 439 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
(pop) ; 4
; [eval] !p2_5
(push) ; 4
(set-option :timeout 10)
(assert (not p2_5@280@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not p2_5@280@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 450 | !(p2_5@280@01) | live]
; [else-branch: 450 | p2_5@280@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 450 | !(p2_5@280@01)]
(assert (not p2_5@280@01))
; [exec]
; assert true
; [eval] p1_5 ==> true
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 451 | p1_5@279@01 | live]
; [else-branch: 451 | !(p1_5@279@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 451 | p1_5@279@01]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_5 ==> true
(push) ; 5
; [then-branch: 452 | p2_5@280@01 | dead]
; [else-branch: 452 | !(p2_5@280@01) | live]
(push) ; 6
; [else-branch: 452 | !(p2_5@280@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p1_5 ==> (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)))
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not p1_5@279@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 453 | p1_5@279@01 | live]
; [else-branch: 453 | !(p1_5@279@01) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 453 | p1_5@279@01]
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
(push) ; 7
; [then-branch: 454 | False | live]
; [else-branch: 454 | True | live]
(push) ; 8
; [then-branch: 454 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 454 | True]
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
(push) ; 9
; [then-branch: 455 | False | live]
; [else-branch: 455 | True | live]
(push) ; 10
; [then-branch: 455 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 455 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
(push) ; 11
; [then-branch: 456 | False | live]
; [else-branch: 456 | True | live]
(push) ; 12
; [then-branch: 456 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 456 | True]
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] p2_5 ==> (forperm _r_6: Ref [MustInvokeBounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [MustInvokeUnbounded_0(_r_6)] :: false) && ((forperm _r_6: Ref [_r_6.MustReleaseBoundedp] :: false) && (forperm _r_6: Ref [_r_6.MustReleaseUnboundedp] :: false)))
(push) ; 5
; [then-branch: 457 | p2_5@280@01 | dead]
; [else-branch: 457 | !(p2_5@280@01) | live]
(push) ; 6
; [else-branch: 457 | !(p2_5@280@01)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 450 | p2_5@280@01]
(assert p2_5@280@01)
(pop) ; 4
(pop) ; 3
; [eval] !p1_5
; [then-branch: 458 | !(p1_5@279@01) | dead]
; [else-branch: 458 | p1_5@279@01 | live]
(push) ; 3
; [else-branch: 458 | p1_5@279@01]
(pop) ; 3
(pop) ; 2
(pop) ; 1
