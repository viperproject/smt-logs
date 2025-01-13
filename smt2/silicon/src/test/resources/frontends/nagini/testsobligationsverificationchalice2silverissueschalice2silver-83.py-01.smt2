(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 12:28:48
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
(declare-const Lock_basic<PyType> PyType)
(declare-fun Lock<PyType> (PyType) PyType)
(declare-fun Lock_arg<PyType> (PyType Int) PyType)
(declare-const BaseLock<PyType> PyType)
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
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun Measure$check ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%limited ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%stateless (Seq<Measure$> $Ref Int) Bool)
(declare-fun Measure$check%precondition ($Snap Seq<Measure$> $Ref Int) Bool)
(declare-fun __name___0 ($Snap) $Ref)
(declare-fun __name___0%limited ($Snap) $Ref)
(declare-const __name___0%stateless Bool)
(declare-fun __name___0%precondition ($Snap) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun Lock_get_locked ($Snap $Ref) $Ref)
(declare-fun Lock_get_locked%limited ($Snap $Ref) $Ref)
(declare-fun Lock_get_locked%stateless ($Ref) Bool)
(declare-fun Lock_get_locked%precondition ($Snap $Ref) Bool)
(declare-fun __file___0 ($Snap) $Ref)
(declare-fun __file___0%limited ($Snap) $Ref)
(declare-const __file___0%stateless Bool)
(declare-fun __file___0%precondition ($Snap) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun __prim__bool___box__ ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%limited ($Snap Bool) $Ref)
(declare-fun __prim__bool___box__%stateless (Bool) Bool)
(declare-fun __prim__bool___box__%precondition ($Snap Bool) Bool)
(declare-fun bool___unbox__ ($Snap $Ref) Bool)
(declare-fun bool___unbox__%limited ($Snap $Ref) Bool)
(declare-fun bool___unbox__%stateless ($Ref) Bool)
(declare-fun bool___unbox__%precondition ($Snap $Ref) Bool)
(declare-fun __prim__int___box__ ($Snap Int) $Ref)
(declare-fun __prim__int___box__%limited ($Snap Int) $Ref)
(declare-fun __prim__int___box__%stateless (Int) Bool)
(declare-fun __prim__int___box__%precondition ($Snap Int) Bool)
(declare-fun int___unbox__ ($Snap $Ref) Int)
(declare-fun int___unbox__%limited ($Snap $Ref) Int)
(declare-fun int___unbox__%stateless ($Ref) Bool)
(declare-fun int___unbox__%precondition ($Snap $Ref) Bool)
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
(declare-fun Lock_invariant%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> BaseLock<PyType> PSet_basic<PyType> Iterator_basic<PyType> Lock_basic<PyType> PSeq_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
(assert (forall ((T PyType)) (!
  (and
    (extends_<Bool> (Lock<PyType> T) (as BaseLock<PyType>  PyType))
    (= (get_basic<PyType> (Lock<PyType> T)) (as Lock_basic<PyType>  PyType)))
  :pattern ((Lock<PyType> T))
  :qid |prog.subtype_Lock|)))
(assert (forall ((Z PyType) (arg0 PyType)) (!
  (=> (issubtype<Bool> Z (Lock<PyType> arg0)) (= (Lock_arg<PyType> Z 0) arg0))
  :pattern ((Lock<PyType> arg0) (Lock_arg<PyType> Z 0))
  :qid |prog.Lock_args0|)))
(assert (and
  (extends_<Bool> (as BaseLock<PyType>  PyType) (as object<PyType>  PyType))
  (=
    (get_basic<PyType> (as BaseLock<PyType>  PyType))
    (as BaseLock<PyType>  PyType))))
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
  :qid |quant-u-2662|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-2663|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-2664|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2665|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2692|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2693|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (= (Level%limited s@$ r@4@00) (Level s@$ r@4@00))
  :pattern ((Level s@$ r@4@00))
  :qid |quant-u-2666|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (Level%stateless r@4@00)
  :pattern ((Level%limited s@$ r@4@00))
  :qid |quant-u-2667|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (=
    (str___create__%limited s@$ len@6@00 value@7@00)
    (str___create__ s@$ len@6@00 value@7@00))
  :pattern ((str___create__ s@$ len@6@00 value@7@00))
  :qid |quant-u-2668|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (str___create__%stateless len@6@00 value@7@00)
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2669|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (and
      (= (str___len__ $Snap.unit result@8@00) len@6@00)
      (= (str___val__ $Snap.unit result@8@00) value@7@00)
      (= (typeof<PyType> result@8@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2694|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (str___len__%precondition $Snap.unit result@8@00)))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2695|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (str___val__%precondition $Snap.unit result@8@00)))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2696|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) true)
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2697|)))
(assert (forall ((s@$ $Snap) (map@9@00 Seq<Measure$>) (key@10@00 $Ref) (value@11@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@9@00 key@10@00 value@11@00)
    (Measure$check s@$ map@9@00 key@10@00 value@11@00))
  :pattern ((Measure$check s@$ map@9@00 key@10@00 value@11@00))
  :qid |quant-u-2670|)))
(assert (forall ((s@$ $Snap) (map@9@00 Seq<Measure$>) (key@10@00 $Ref) (value@11@00 Int)) (!
  (Measure$check%stateless map@9@00 key@10@00 value@11@00)
  :pattern ((Measure$check%limited s@$ map@9@00 key@10@00 value@11@00))
  :qid |quant-u-2671|)))
(assert (forall ((s@$ $Snap) (map@9@00 Seq<Measure$>) (key@10@00 $Ref) (value@11@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@9@00 key@10@00 value@11@00)
    (=
      (Measure$check s@$ map@9@00 key@10@00 value@11@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@9@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@10@00)))
          (> (Measure$value<Int> m) value@11@00))
        :pattern ((Seq_contains map@9@00 m))
        :pattern ((Seq_contains_trigger map@9@00 m))
        :pattern ((Seq_contains_trigger map@9@00 m))
        ))))
  :pattern ((Measure$check s@$ map@9@00 key@10@00 value@11@00))
  :qid |quant-u-2698|)))
(assert (forall ((s@$ $Snap) (map@9@00 Seq<Measure$>) (key@10@00 $Ref) (value@11@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@9@00 key@10@00 value@11@00))
  :qid |quant-u-2699|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name___0%limited s@$) (__name___0 s@$))
  :pattern ((__name___0 s@$))
  :qid |quant-u-2672|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name___0%stateless  Bool)
  :pattern ((__name___0%limited s@$))
  :qid |quant-u-2673|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref) (other@15@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@14@00 other@15@00)
    (str___eq__ s@$ self@14@00 other@15@00))
  :pattern ((str___eq__ s@$ self@14@00 other@15@00))
  :qid |quant-u-2674|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref) (other@15@00 $Ref)) (!
  (str___eq__%stateless self@14@00 other@15@00)
  :pattern ((str___eq__%limited s@$ self@14@00 other@15@00))
  :qid |quant-u-2675|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref) (other@15@00 $Ref)) (!
  (let ((result@16@00 (str___eq__%limited s@$ self@14@00 other@15@00))) (=>
    (str___eq__%precondition s@$ self@14@00 other@15@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@14@00)
          (str___val__ $Snap.unit other@15@00))
        result@16@00)
      (=>
        result@16@00
        (=
          (str___len__ $Snap.unit self@14@00)
          (str___len__ $Snap.unit other@15@00))))))
  :pattern ((str___eq__%limited s@$ self@14@00 other@15@00))
  :qid |quant-u-2700|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref) (other@15@00 $Ref)) (!
  (let ((result@16@00 (str___eq__%limited s@$ self@14@00 other@15@00))) (=>
    (str___eq__%precondition s@$ self@14@00 other@15@00)
    (and
      (str___val__%precondition $Snap.unit self@14@00)
      (str___val__%precondition $Snap.unit other@15@00))))
  :pattern ((str___eq__%limited s@$ self@14@00 other@15@00))
  :qid |quant-u-2701|)))
(assert (forall ((s@$ $Snap) (self@14@00 $Ref) (other@15@00 $Ref)) (!
  (let ((result@16@00 (str___eq__%limited s@$ self@14@00 other@15@00))) (=>
    (and (str___eq__%precondition s@$ self@14@00 other@15@00) result@16@00)
    (and
      (str___len__%precondition $Snap.unit self@14@00)
      (str___len__%precondition $Snap.unit other@15@00))))
  :pattern ((str___eq__%limited s@$ self@14@00 other@15@00))
  :qid |quant-u-2702|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (= (Lock_get_locked%limited s@$ self@17@00) (Lock_get_locked s@$ self@17@00))
  :pattern ((Lock_get_locked s@$ self@17@00))
  :qid |quant-u-2676|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (Lock_get_locked%stateless self@17@00)
  :pattern ((Lock_get_locked%limited s@$ self@17@00))
  :qid |quant-u-2677|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (let ((result@18@00 (Lock_get_locked%limited s@$ self@17@00))) (=>
    (Lock_get_locked%precondition s@$ self@17@00)
    (issubtype<Bool> (typeof<PyType> result@18@00) (Lock_arg<PyType> (typeof<PyType> self@17@00) 0))))
  :pattern ((Lock_get_locked%limited s@$ self@17@00))
  :qid |quant-u-2703|)))
(assert (forall ((s@$ $Snap) (self@17@00 $Ref)) (!
  (let ((result@18@00 (Lock_get_locked%limited s@$ self@17@00))) true)
  :pattern ((Lock_get_locked%limited s@$ self@17@00))
  :qid |quant-u-2704|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file___0%limited s@$) (__file___0 s@$))
  :pattern ((__file___0 s@$))
  :qid |quant-u-2678|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file___0%stateless  Bool)
  :pattern ((__file___0%limited s@$))
  :qid |quant-u-2679|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-2680|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-2681|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@21@00)
    (__prim__bool___box__ s@$ prim@21@00))
  :pattern ((__prim__bool___box__ s@$ prim@21@00))
  :qid |quant-u-2682|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (__prim__bool___box__%stateless prim@21@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@21@00))
  :qid |quant-u-2683|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (let ((result@22@00 (__prim__bool___box__%limited s@$ prim@21@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@21@00)
    (and
      (= (typeof<PyType> result@22@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@22@00) prim@21@00)
      (= (int___unbox__%limited $Snap.unit result@22@00) (ite prim@21@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@21@00))
  :qid |quant-u-2705|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (let ((result@22@00 (__prim__bool___box__%limited s@$ prim@21@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@21@00))
  :qid |quant-u-2706|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (let ((result@22@00 (__prim__bool___box__%limited s@$ prim@21@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@21@00)
    (bool___unbox__%precondition $Snap.unit result@22@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@21@00))
  :qid |quant-u-2707|)))
(assert (forall ((s@$ $Snap) (prim@21@00 Bool)) (!
  (let ((result@22@00 (__prim__bool___box__%limited s@$ prim@21@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@21@00)
    (int___unbox__%precondition $Snap.unit result@22@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@21@00))
  :qid |quant-u-2708|)))
(assert (forall ((s@$ $Snap) (box@23@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@23@00) (bool___unbox__ s@$ box@23@00))
  :pattern ((bool___unbox__ s@$ box@23@00))
  :qid |quant-u-2684|)))
(assert (forall ((s@$ $Snap) (box@23@00 $Ref)) (!
  (bool___unbox__%stateless box@23@00)
  :pattern ((bool___unbox__%limited s@$ box@23@00))
  :qid |quant-u-2685|)))
(assert (forall ((s@$ $Snap) (box@23@00 $Ref)) (!
  (let ((result@24@00 (bool___unbox__%limited s@$ box@23@00))) (=>
    (bool___unbox__%precondition s@$ box@23@00)
    (= (__prim__bool___box__%limited $Snap.unit result@24@00) box@23@00)))
  :pattern ((bool___unbox__%limited s@$ box@23@00))
  :qid |quant-u-2709|)))
(assert (forall ((s@$ $Snap) (box@23@00 $Ref)) (!
  (let ((result@24@00 (bool___unbox__%limited s@$ box@23@00))) (=>
    (bool___unbox__%precondition s@$ box@23@00)
    (__prim__bool___box__%precondition $Snap.unit result@24@00)))
  :pattern ((bool___unbox__%limited s@$ box@23@00))
  :qid |quant-u-2710|)))
(assert (forall ((s@$ $Snap) (prim@25@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@25@00)
    (__prim__int___box__ s@$ prim@25@00))
  :pattern ((__prim__int___box__ s@$ prim@25@00))
  :qid |quant-u-2686|)))
(assert (forall ((s@$ $Snap) (prim@25@00 Int)) (!
  (__prim__int___box__%stateless prim@25@00)
  :pattern ((__prim__int___box__%limited s@$ prim@25@00))
  :qid |quant-u-2687|)))
(assert (forall ((s@$ $Snap) (prim@25@00 Int)) (!
  (let ((result@26@00 (__prim__int___box__%limited s@$ prim@25@00))) (=>
    (__prim__int___box__%precondition s@$ prim@25@00)
    (and
      (= (typeof<PyType> result@26@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@26@00) prim@25@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@25@00))
  :qid |quant-u-2711|)))
(assert (forall ((s@$ $Snap) (prim@25@00 Int)) (!
  (let ((result@26@00 (__prim__int___box__%limited s@$ prim@25@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@25@00))
  :qid |quant-u-2712|)))
(assert (forall ((s@$ $Snap) (prim@25@00 Int)) (!
  (let ((result@26@00 (__prim__int___box__%limited s@$ prim@25@00))) (=>
    (__prim__int___box__%precondition s@$ prim@25@00)
    (int___unbox__%precondition $Snap.unit result@26@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@25@00))
  :qid |quant-u-2713|)))
(assert (forall ((s@$ $Snap) (box@27@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@27@00) (int___unbox__ s@$ box@27@00))
  :pattern ((int___unbox__ s@$ box@27@00))
  :qid |quant-u-2688|)))
(assert (forall ((s@$ $Snap) (box@27@00 $Ref)) (!
  (int___unbox__%stateless box@27@00)
  :pattern ((int___unbox__%limited s@$ box@27@00))
  :qid |quant-u-2689|)))
(assert (forall ((s@$ $Snap) (box@27@00 $Ref)) (!
  (let ((result@28@00 (int___unbox__%limited s@$ box@27@00))) (=>
    (int___unbox__%precondition s@$ box@27@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@27@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@28@00) box@27@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@27@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@28@00 0)))
          box@27@00)))))
  :pattern ((int___unbox__%limited s@$ box@27@00))
  :qid |quant-u-2714|)))
(assert (forall ((s@$ $Snap) (box@27@00 $Ref)) (!
  (let ((result@28@00 (int___unbox__%limited s@$ box@27@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@27@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@27@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@28@00)))
  :pattern ((int___unbox__%limited s@$ box@27@00))
  :qid |quant-u-2715|)))
(assert (forall ((s@$ $Snap) (box@27@00 $Ref)) (!
  (let ((result@28@00 (int___unbox__%limited s@$ box@27@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@27@00)
      (issubtype<Bool> (typeof<PyType> box@27@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@28@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@27@00))
  :qid |quant-u-2716|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-2690|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-2691|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- foo ----------
(declare-const _cthread_156@0@01 $Ref)
(declare-const _caller_measures_156@1@01 Seq<Measure$>)
(declare-const _residue_156@2@01 $Perm)
(declare-const l@3@01 $Ref)
(declare-const _current_wait_level_156@4@01 $Perm)
(declare-const _cthread_156@5@01 $Ref)
(declare-const _caller_measures_156@6@01 Seq<Measure$>)
(declare-const _residue_156@7@01 $Perm)
(declare-const l@8@01 $Ref)
(declare-const _current_wait_level_156@9@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@5@01 $Ref.null)))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@5@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
; [eval] issubtype(typeof(l), Lock(object()))
; [eval] typeof(l)
; [eval] Lock(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l@8@01) (Lock<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (not (= l@8@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@11@01 $Snap)
(assert (= $t@11@01 ($Snap.combine ($Snap.first $t@11@01) ($Snap.second $t@11@01))))
(assert (= ($Snap.first $t@11@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@11@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@11@01))
    ($Snap.second ($Snap.second $t@11@01)))))
(assert (= ($Snap.first ($Snap.second $t@11@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@11@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@11@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@11@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@7@01 _current_wait_level_156@9@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@11@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@12@01 $Ref)
; [exec]
; var l_1: Ref
(declare-const l_1@13@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@14@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@15@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq(Measure$create(true, l, 2))
; [eval] Seq(Measure$create(true, l, 2))
; [eval] Measure$create(true, l, 2)
(assert (= (Seq_length (Seq_singleton (Measure$create<Measure$> true l@8@01 2))) 1))
(declare-const _method_measures_156@16@01 Seq<Measure$>)
(assert (=
  _method_measures_156@16@01
  (Seq_singleton (Measure$create<Measure$> true l@8@01 2))))
; [exec]
; _err := null
; [exec]
; l_1 := l
; [exec]
; label __end
; [eval] perm(l.MustReleaseBounded) > none
; [eval] perm(l.MustReleaseBounded)
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
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- caller ----------
(declare-const _cthread_157@17@01 $Ref)
(declare-const _caller_measures_157@18@01 Seq<Measure$>)
(declare-const _residue_157@19@01 $Perm)
(declare-const l_0@20@01 $Ref)
(declare-const _current_wait_level_157@21@01 $Perm)
(declare-const _cthread_157@22@01 $Ref)
(declare-const _caller_measures_157@23@01 Seq<Measure$>)
(declare-const _residue_157@24@01 $Perm)
(declare-const l_0@25@01 $Ref)
(declare-const _current_wait_level_157@26@01 $Perm)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@22@01 $Ref.null)))
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@22@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@27@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@27@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@27@01))) $Snap.unit))
; [eval] issubtype(typeof(l_0), Lock(object()))
; [eval] typeof(l_0)
; [eval] Lock(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l_0@25@01) (Lock<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@27@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01)))))))
(assert (not (= l_0@25@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@27@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: Level(_r_4) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(assert (= ($Snap.first ($Snap.second $t@28@01)) $Snap.unit))
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: Level(_r_4) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@24@01 _current_wait_level_157@26@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@28@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  $Snap.unit))
(assert false)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@29@01 $Ref)
; [exec]
; var l_2: Ref
(declare-const l_2@30@01 $Ref)
; [exec]
; var _loop_measures: Seq[Measure$]
(declare-const _loop_measures@31@01 Seq<Measure$>)
; [exec]
; var _loop_check_before: Bool
(declare-const _loop_check_before@32@01 Bool)
; [exec]
; var _loop_termination_flag: Bool
(declare-const _loop_termination_flag@33@01 Bool)
; [exec]
; var _loop_original_must_terminate: Perm
(declare-const _loop_original_must_terminate@34@01 $Perm)
; [exec]
; var _residue_163: Perm
(declare-const _residue_163@35@01 $Perm)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@36@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@37@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq(Measure$create(true, l_0, 3))
; [eval] Seq(Measure$create(true, l_0, 3))
; [eval] Measure$create(true, l_0, 3)
(assert (= (Seq_length (Seq_singleton (Measure$create<Measure$> true l_0@25@01 3))) 1))
(declare-const _method_measures_157@38@01 Seq<Measure$>)
(assert (=
  _method_measures_157@38@01
  (Seq_singleton (Measure$create<Measure$> true l_0@25@01 3))))
; [exec]
; _err := null
; [exec]
; l_2 := l_0
; [exec]
; _loop_original_must_terminate := perm(MustTerminate(_cthread_157))
; [eval] perm(MustTerminate(_cthread_157))
(declare-const _loop_original_must_terminate@39@01 $Perm)
(assert (= _loop_original_must_terminate@39@01 $Perm.No))
; [exec]
; _loop_termination_flag := false
; [exec]
; _loop_check_before := true
(declare-const _loop_measures@40@01 Seq<Measure$>)
(declare-const _cwl_157@41@01 $Perm)
(declare-const _loop_check_before@42@01 Bool)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _residue_163)
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(assert (= ($Snap.first ($Snap.second $t@43@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _residue_163)
(assert (=
  ($Snap.second ($Snap.second $t@43@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@43@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@43@01))) $Snap.unit))
; [eval] _residue_157 <= _residue_163
(assert (<= _residue_157@24@01 _residue_163@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@43@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
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
; [eval] perm(l_2.MustReleaseBounded) > none
; [eval] perm(l_2.MustReleaseBounded)
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
; [eval] _loop_check_before ==> _loop_termination_flag || (!true || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))))
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | True | live]
; [else-branch: 3 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 3 | True]
; [eval] _loop_termination_flag || (!true || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))))
(push) ; 8
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 9
; [then-branch: 4 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 4 | True]
; [eval] !true
(push) ; 10
; [then-branch: 5 | False | live]
; [else-branch: 5 | True | live]
(push) ; 11
; [then-branch: 5 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 5 | True]
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(push) ; 12
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 13
; [then-branch: 6 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 6 | True]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 14
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 15
; [then-branch: 7 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 7 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 16
; [then-branch: 8 | False | live]
; [else-branch: 8 | True | live]
(push) ; 17
; [then-branch: 8 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 8 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 18
; [then-branch: 9 | False | live]
; [else-branch: 9 | True | live]
(push) ; 19
; [then-branch: 9 | False]
(assert false)
(pop) ; 19
(push) ; 19
; [else-branch: 9 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] !_loop_check_before ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 6
; [then-branch: 10 | False | dead]
; [else-branch: 10 | True | live]
(push) ; 7
; [else-branch: 10 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 6
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(assert (= ($Snap.first ($Snap.second $t@43@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@43@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@43@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@43@01))) $Snap.unit))
(assert (<= _residue_157@24@01 _residue_163@35@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@43@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
(push) ; 7
; [eval] !true
(pop) ; 7
; Loop head block: Follow loop-internal edges
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | True | live]
; [else-branch: 11 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 11 | True]
; [exec]
; _loop_measures := Seq(Measure$create(true, l_2, 1))
; [eval] Seq(Measure$create(true, l_2, 1))
; [eval] Measure$create(true, l_2, 1)
(assert (= (Seq_length (Seq_singleton (Measure$create<Measure$> true l_0@25@01 1))) 1))
(declare-const _loop_measures@44@01 Seq<Measure$>)
(assert (=
  _loop_measures@44@01
  (Seq_singleton (Measure$create<Measure$> true l_0@25@01 1))))
; [exec]
; _cwl_157 := foo(_cthread_157, _method_measures_157, _residue_163, l_2)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(l), Lock(object()))
; [eval] typeof(l)
; [eval] Lock(object())
; [eval] object()
; [eval] perm(l.MustReleaseBounded) > none && Measure$check(_caller_measures_156, l, 2)
; [eval] perm(l.MustReleaseBounded) > none
; [eval] perm(l.MustReleaseBounded)
(push) ; 8
; [then-branch: 12 | False | live]
; [else-branch: 12 | True | live]
(push) ; 9
; [then-branch: 12 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 12 | True]
; [eval] Measure$check(_caller_measures_156, l, 2)
(push) ; 10
(assert (Measure$check%precondition $Snap.unit _method_measures_157@38@01 l_0@25@01 2))
(pop) ; 10
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_157@38@01 l_0@25@01 2))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_157@38@01 l_0@25@01 2))
(push) ; 8
(set-option :timeout 10)
(assert (not (not (Measure$check $Snap.unit _method_measures_157@38@01 l_0@25@01 2))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (Measure$check $Snap.unit _method_measures_157@38@01 l_0@25@01 2)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | Measure$check(_, _method_measures_157@38@01, l_0@25@01, 2) | live]
; [else-branch: 13 | !(Measure$check(_, _method_measures_157@38@01, l_0@25@01, 2)) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 13 | Measure$check(_, _method_measures_157@38@01, l_0@25@01, 2)]
(assert (Measure$check $Snap.unit _method_measures_157@38@01 l_0@25@01 2))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@45@01 $Perm)
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@46@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@46@01))
    ($Snap.second ($Snap.second $t@46@01)))))
(assert (= ($Snap.first ($Snap.second $t@46@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@46@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@46@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@46@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@46@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_163@35@01 _current_wait_level_156@45@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@46@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@46@01))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label loop_end
; [exec]
; _loop_check_before := false
; [exec]
; assert _loop_termination_flag ==> !true
; [eval] _loop_termination_flag ==> !true
(set-option :timeout 0)
(push) ; 9
; [then-branch: 14 | False | dead]
; [else-branch: 14 | True | live]
(push) ; 10
; [else-branch: 14 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Loop head block: Re-establish invariant
; [then-branch: 15 | False | dead]
; [else-branch: 15 | True | live]
(push) ; 9
; [else-branch: 15 | True]
; [eval] perm(l_2.MustReleaseBounded) > none && Measure$check(_loop_measures, l_2, 1)
; [eval] perm(l_2.MustReleaseBounded) > none
; [eval] perm(l_2.MustReleaseBounded)
(push) ; 10
; [then-branch: 16 | False | live]
; [else-branch: 16 | True | live]
(push) ; 11
; [then-branch: 16 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 16 | True]
; [eval] Measure$check(_loop_measures, l_2, 1)
(push) ; 12
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(pop) ; 12
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(push) ; 10
(set-option :timeout 10)
(assert (not (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | Measure$check(_, _loop_measures@44@01, l_0@25@01, 1) | dead]
; [else-branch: 17 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 17 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1))]
(assert (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1)))
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 10
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(l_2.MustReleaseBounded) > none && Measure$check(_loop_measures, l_2, 1)
; [eval] perm(l_2.MustReleaseBounded) > none
; [eval] perm(l_2.MustReleaseBounded)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 18 | False | live]
; [else-branch: 18 | True | live]
(push) ; 11
; [then-branch: 18 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 11
(set-option :timeout 0)
(push) ; 11
; [else-branch: 18 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] Measure$check(_loop_measures, l_2, 1)
(set-option :timeout 0)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | Measure$check(_, _loop_measures@44@01, l_0@25@01, 1) | dead]
; [else-branch: 19 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 19 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1))]
(assert (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 10
(pop) ; 9
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [then-branch: 20 | False | dead]
; [else-branch: 20 | True | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 20 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(l_2.MustReleaseBounded) > none && Measure$check(_loop_measures, l_2, 1)
; [eval] perm(l_2.MustReleaseBounded) > none
; [eval] perm(l_2.MustReleaseBounded)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 11
; [then-branch: 21 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 11
(set-option :timeout 0)
(push) ; 11
; [else-branch: 21 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] Measure$check(_loop_measures, l_2, 1)
(set-option :timeout 0)
(push) ; 12
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(pop) ; 12
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures@44@01 l_0@25@01 1))
(push) ; 10
(set-option :timeout 10)
(assert (not (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | Measure$check(_, _loop_measures@44@01, l_0@25@01, 1) | dead]
; [else-branch: 22 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 22 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1))]
(assert (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 10
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(l_2.MustReleaseBounded) > none && Measure$check(_loop_measures, l_2, 1)
; [eval] perm(l_2.MustReleaseBounded) > none
; [eval] perm(l_2.MustReleaseBounded)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 23 | False | live]
; [else-branch: 23 | True | live]
(push) ; 11
; [then-branch: 23 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 11
(set-option :timeout 0)
(push) ; 11
; [else-branch: 23 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] Measure$check(_loop_measures, l_2, 1)
(set-option :timeout 0)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(push) ; 10
(set-option :timeout 10)
(assert (not (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | Measure$check(_, _loop_measures@44@01, l_0@25@01, 1) | dead]
; [else-branch: 24 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1)) | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 24 | !(Measure$check(_, _loop_measures@44@01, l_0@25@01, 1))]
(assert (not (Measure$check $Snap.unit _loop_measures@44@01 l_0@25@01 1)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Lock___init__ ----------
(declare-const _cthread_159@47@01 $Ref)
(declare-const _caller_measures_159@48@01 Seq<Measure$>)
(declare-const _residue_159@49@01 $Perm)
(declare-const self_0@50@01 $Ref)
(declare-const locked_object@51@01 $Ref)
(declare-const above@52@01 $Ref)
(declare-const below@53@01 $Ref)
(declare-const _current_wait_level_159@54@01 $Perm)
(declare-const _cthread_159@55@01 $Ref)
(declare-const _caller_measures_159@56@01 Seq<Measure$>)
(declare-const _residue_159@57@01 $Perm)
(declare-const self_0@58@01 $Ref)
(declare-const locked_object@59@01 $Ref)
(declare-const above@60@01 $Ref)
(declare-const below@61@01 $Ref)
(declare-const _current_wait_level_159@62@01 $Perm)
(push) ; 1
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (= ($Snap.first $t@63@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@55@01 $Ref.null)))
(assert (=
  ($Snap.second $t@63@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@63@01))
    ($Snap.second ($Snap.second $t@63@01)))))
(assert (= ($Snap.first ($Snap.second $t@63@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@55@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@63@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@63@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@63@01))) $Snap.unit))
; [eval] self_0 != null
(assert (not (= self_0@58@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@63@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0), Lock(Lock_arg(typeof(self_0), 0)))
; [eval] typeof(self_0)
; [eval] Lock(Lock_arg(typeof(self_0), 0))
; [eval] Lock_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> self_0@58@01) (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_0@58@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(locked_object), Lock_arg(typeof(self_0), 0))
; [eval] typeof(locked_object)
; [eval] Lock_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (issubtype<Bool> (typeof<PyType> locked_object@59@01) (Lock_arg<PyType> (typeof<PyType> self_0@58@01) 0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
  $Snap.unit))
; [eval] above == null || issubtype(typeof(above), BaseLock())
; [eval] above == null
(push) ; 2
; [then-branch: 25 | above@60@01 == Null | live]
; [else-branch: 25 | above@60@01 != Null | live]
(push) ; 3
; [then-branch: 25 | above@60@01 == Null]
(assert (= above@60@01 $Ref.null))
(pop) ; 3
(push) ; 3
; [else-branch: 25 | above@60@01 != Null]
(assert (not (= above@60@01 $Ref.null)))
; [eval] issubtype(typeof(above), BaseLock())
; [eval] typeof(above)
; [eval] BaseLock()
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= above@60@01 $Ref.null)) (= above@60@01 $Ref.null)))
(assert (or
  (= above@60@01 $Ref.null)
  (issubtype<Bool> (typeof<PyType> above@60@01) (as BaseLock<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
  $Snap.unit))
; [eval] below == null || issubtype(typeof(below), BaseLock())
; [eval] below == null
(push) ; 2
; [then-branch: 26 | below@61@01 == Null | live]
; [else-branch: 26 | below@61@01 != Null | live]
(push) ; 3
; [then-branch: 26 | below@61@01 == Null]
(assert (= below@61@01 $Ref.null))
(pop) ; 3
(push) ; 3
; [else-branch: 26 | below@61@01 != Null]
(assert (not (= below@61@01 $Ref.null)))
; [eval] issubtype(typeof(below), BaseLock())
; [eval] typeof(below)
; [eval] BaseLock()
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (= below@61@01 $Ref.null)) (= below@61@01 $Ref.null)))
(assert (or
  (= below@61@01 $Ref.null)
  (issubtype<Bool> (typeof<PyType> below@61@01) (as BaseLock<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))
  $Snap.unit))
; [eval] issubtype(Lock_arg(typeof(self_0), 0), object())
; [eval] Lock_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
; [eval] object()
(assert (issubtype<Bool> (Lock_arg<PyType> (typeof<PyType> self_0@58@01) 0) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))
  $Snap.unit))
; [eval] self_0 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))
  $Snap.unit))
; [eval] above == null && below != null ==> _residue_159 < Level(below)
; [eval] above == null && below != null
; [eval] above == null
(push) ; 2
; [then-branch: 27 | above@60@01 != Null | live]
; [else-branch: 27 | above@60@01 == Null | live]
(push) ; 3
; [then-branch: 27 | above@60@01 != Null]
(assert (not (= above@60@01 $Ref.null)))
(pop) ; 3
(push) ; 3
; [else-branch: 27 | above@60@01 == Null]
(assert (= above@60@01 $Ref.null))
; [eval] below != null
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (= above@60@01 $Ref.null) (not (= above@60@01 $Ref.null))))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | above@60@01 == Null && below@61@01 != Null | live]
; [else-branch: 28 | !(above@60@01 == Null && below@61@01 != Null) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 28 | above@60@01 == Null && below@61@01 != Null]
(assert (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null))))
; [eval] _residue_159 < Level(below)
; [eval] Level(below)
(push) ; 4
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 4
; Joined path conditions
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 3
(push) ; 3
; [else-branch: 28 | !(above@60@01 == Null && below@61@01 != Null)]
(assert (not (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null)))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null)))
  (and
    (= above@60@01 $Ref.null)
    (not (= below@61@01 $Ref.null))
    (Level%precondition $Snap.unit below@61@01))))
; Joined path conditions
(assert (or
  (not (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null))))
  (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null)))))
(assert (=>
  (and (= above@60@01 $Ref.null) (not (= below@61@01 $Ref.null)))
  (< _residue_159@57@01 (Level $Snap.unit below@61@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))
  $Snap.unit))
; [eval] above != null && below != null ==> Level(above) < Level(below)
; [eval] above != null && below != null
; [eval] above != null
(push) ; 2
; [then-branch: 29 | above@60@01 == Null | live]
; [else-branch: 29 | above@60@01 != Null | live]
(push) ; 3
; [then-branch: 29 | above@60@01 == Null]
(assert (= above@60@01 $Ref.null))
(pop) ; 3
(push) ; 3
; [else-branch: 29 | above@60@01 != Null]
(assert (not (= above@60@01 $Ref.null)))
; [eval] below != null
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | above@60@01 != Null && below@61@01 != Null | live]
; [else-branch: 30 | !(above@60@01 != Null && below@61@01 != Null) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 30 | above@60@01 != Null && below@61@01 != Null]
(assert (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null))))
; [eval] Level(above) < Level(below)
; [eval] Level(above)
(push) ; 4
(assert (Level%precondition $Snap.unit above@60@01))
(pop) ; 4
; Joined path conditions
(assert (Level%precondition $Snap.unit above@60@01))
; [eval] Level(below)
(push) ; 4
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 4
; Joined path conditions
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 3
(push) ; 3
; [else-branch: 30 | !(above@60@01 != Null && below@61@01 != Null)]
(assert (not (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null)))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (=>
  (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null)))
  (and
    (not (= above@60@01 $Ref.null))
    (not (= below@61@01 $Ref.null))
    (Level%precondition $Snap.unit above@60@01)
    (Level%precondition $Snap.unit below@61@01))))
; Joined path conditions
(assert (or
  (not (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null))))
  (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null)))))
(assert (=>
  (and (not (= above@60@01 $Ref.null)) (not (= below@61@01 $Ref.null)))
  (< (Level $Snap.unit above@60@01) (Level $Snap.unit below@61@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@63@01))))))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: Level(_r_9) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(assert (= ($Snap.first ($Snap.second $t@64@01)) $Snap.unit))
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: Level(_r_9) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@64@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@64@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@57@01 _current_wait_level_159@62@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@64@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  $Snap.unit))
; [eval] above == null ==> _current_wait_level_159 < Level(self_0)
; [eval] above == null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= above@60@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= above@60@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | above@60@01 == Null | live]
; [else-branch: 31 | above@60@01 != Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 31 | above@60@01 == Null]
(assert (= above@60@01 $Ref.null))
; [eval] _current_wait_level_159 < Level(self_0)
; [eval] Level(self_0)
(push) ; 5
(assert (Level%precondition $Snap.unit self_0@58@01))
(pop) ; 5
; Joined path conditions
(assert (Level%precondition $Snap.unit self_0@58@01))
(pop) ; 4
(push) ; 4
; [else-branch: 31 | above@60@01 != Null]
(assert (not (= above@60@01 $Ref.null)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (= above@60@01 $Ref.null)
  (and (= above@60@01 $Ref.null) (Level%precondition $Snap.unit self_0@58@01))))
; Joined path conditions
(assert (=>
  (= above@60@01 $Ref.null)
  (< _current_wait_level_159@62@01 (Level $Snap.unit self_0@58@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
; [eval] above != null ==> Level(above) < Level(self_0)
; [eval] above != null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= above@60@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= above@60@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | above@60@01 != Null | live]
; [else-branch: 32 | above@60@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 32 | above@60@01 != Null]
(assert (not (= above@60@01 $Ref.null)))
; [eval] Level(above) < Level(self_0)
; [eval] Level(above)
(push) ; 5
(assert (Level%precondition $Snap.unit above@60@01))
(pop) ; 5
; Joined path conditions
(assert (Level%precondition $Snap.unit above@60@01))
; [eval] Level(self_0)
(push) ; 5
(assert (Level%precondition $Snap.unit self_0@58@01))
(pop) ; 5
; Joined path conditions
(assert (Level%precondition $Snap.unit self_0@58@01))
(pop) ; 4
(push) ; 4
; [else-branch: 32 | above@60@01 == Null]
(assert (= above@60@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (not (= above@60@01 $Ref.null))
  (and
    (not (= above@60@01 $Ref.null))
    (Level%precondition $Snap.unit above@60@01)
    (Level%precondition $Snap.unit self_0@58@01))))
; Joined path conditions
(assert (=>
  (not (= above@60@01 $Ref.null))
  (< (Level $Snap.unit above@60@01) (Level $Snap.unit self_0@58@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
; [eval] below != null ==> Level(self_0) < Level(below)
; [eval] below != null
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= below@61@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= below@61@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | below@61@01 != Null | live]
; [else-branch: 33 | below@61@01 == Null | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 33 | below@61@01 != Null]
(assert (not (= below@61@01 $Ref.null)))
; [eval] Level(self_0) < Level(below)
; [eval] Level(self_0)
(push) ; 5
(assert (Level%precondition $Snap.unit self_0@58@01))
(pop) ; 5
; Joined path conditions
(assert (Level%precondition $Snap.unit self_0@58@01))
; [eval] Level(below)
(push) ; 5
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 5
; Joined path conditions
(assert (Level%precondition $Snap.unit below@61@01))
(pop) ; 4
(push) ; 4
; [else-branch: 33 | below@61@01 == Null]
(assert (= below@61@01 $Ref.null))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (not (= below@61@01 $Ref.null))
  (and
    (not (= below@61@01 $Ref.null))
    (Level%precondition $Snap.unit self_0@58@01)
    (Level%precondition $Snap.unit below@61@01))))
; Joined path conditions
(assert (or (= below@61@01 $Ref.null) (not (= below@61@01 $Ref.null))))
(assert (=>
  (not (= below@61@01 $Ref.null))
  (< (Level $Snap.unit self_0@58@01) (Level $Snap.unit below@61@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@65@01 $Perm)
; [exec]
; inhale typeof(self_0) == Lock(Lock_arg(typeof(self_0), 0))
(declare-const $t@66@01 $Snap)
(assert (= $t@66@01 $Snap.unit))
; [eval] typeof(self_0) == Lock(Lock_arg(typeof(self_0), 0))
; [eval] typeof(self_0)
; [eval] Lock(Lock_arg(typeof(self_0), 0))
; [eval] Lock_arg(typeof(self_0), 0)
; [eval] typeof(self_0)
(assert (=
  (typeof<PyType> self_0@58@01)
  (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_0@58@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Lock_acquire ----------
(declare-const _cthread_160@67@01 $Ref)
(declare-const _caller_measures_160@68@01 Seq<Measure$>)
(declare-const _residue_160@69@01 $Perm)
(declare-const self_1@70@01 $Ref)
(declare-const _current_wait_level_160@71@01 $Perm)
(declare-const _cthread_160@72@01 $Ref)
(declare-const _caller_measures_160@73@01 Seq<Measure$>)
(declare-const _residue_160@74@01 $Perm)
(declare-const self_1@75@01 $Ref)
(declare-const _current_wait_level_160@76@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@72@01 $Ref.null)))
(assert (=
  ($Snap.second $t@77@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@77@01))
    ($Snap.second ($Snap.second $t@77@01)))))
(assert (= ($Snap.first ($Snap.second $t@77@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@72@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@77@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@77@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@77@01))) $Snap.unit))
; [eval] issubtype(typeof(self_1), Lock(Lock_arg(typeof(self_1), 0)))
; [eval] typeof(self_1)
; [eval] Lock(Lock_arg(typeof(self_1), 0))
; [eval] Lock_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (issubtype<Bool> (typeof<PyType> self_1@75@01) (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_1@75@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@77@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@77@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@77@01))))
  $Snap.unit))
; [eval] issubtype(Lock_arg(typeof(self_1), 0), object())
; [eval] Lock_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
; [eval] object()
(assert (issubtype<Bool> (Lock_arg<PyType> (typeof<PyType> self_1@75@01) 0) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
  $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@75@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
  $Snap.unit))
; [eval] _residue_160 < Level(self_1)
; [eval] Level(self_1)
(push) ; 2
(assert (Level%precondition $Snap.unit self_1@75@01))
(pop) ; 2
; Joined path conditions
(assert (Level%precondition $Snap.unit self_1@75@01))
(assert (< _residue_160@74@01 (Level $Snap.unit self_1@75@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@77@01))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: Level(_r_12) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@78@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@78@01))
    ($Snap.second ($Snap.second $t@78@01)))))
(assert (= ($Snap.first ($Snap.second $t@78@01)) $Snap.unit))
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: Level(_r_12) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@78@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@78@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@78@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@74@01 _current_wait_level_160@76@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@78@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@79@01 $Perm)
; [exec]
; inhale typeof(self_1) == Lock(Lock_arg(typeof(self_1), 0))
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 $Snap.unit))
; [eval] typeof(self_1) == Lock(Lock_arg(typeof(self_1), 0))
; [eval] typeof(self_1)
; [eval] Lock(Lock_arg(typeof(self_1), 0))
; [eval] Lock_arg(typeof(self_1), 0)
; [eval] typeof(self_1)
(assert (=
  (typeof<PyType> self_1@75@01)
  (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_1@75@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Lock_release ----------
(declare-const _cthread_161@81@01 $Ref)
(declare-const _caller_measures_161@82@01 Seq<Measure$>)
(declare-const _residue_161@83@01 $Perm)
(declare-const self_2@84@01 $Ref)
(declare-const _current_wait_level_161@85@01 $Perm)
(declare-const _cthread_161@86@01 $Ref)
(declare-const _caller_measures_161@87@01 Seq<Measure$>)
(declare-const _residue_161@88@01 $Perm)
(declare-const self_2@89@01 $Ref)
(declare-const _current_wait_level_161@90@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 ($Snap.combine ($Snap.first $t@91@01) ($Snap.second $t@91@01))))
(assert (= ($Snap.first $t@91@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@86@01 $Ref.null)))
(assert (=
  ($Snap.second $t@91@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@91@01))
    ($Snap.second ($Snap.second $t@91@01)))))
(assert (= ($Snap.first ($Snap.second $t@91@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@86@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@91@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@91@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@91@01))) $Snap.unit))
; [eval] issubtype(typeof(self_2), Lock(Lock_arg(typeof(self_2), 0)))
; [eval] typeof(self_2)
; [eval] Lock(Lock_arg(typeof(self_2), 0))
; [eval] Lock_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (issubtype<Bool> (typeof<PyType> self_2@89@01) (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_2@89@01) 0))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@91@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@91@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@91@01))))
  $Snap.unit))
; [eval] issubtype(Lock_arg(typeof(self_2), 0), object())
; [eval] Lock_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
; [eval] object()
(assert (issubtype<Bool> (Lock_arg<PyType> (typeof<PyType> self_2@89@01) 0) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))
  $Snap.unit))
; [eval] self_2 != null
(assert (not (= self_2@89@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@91@01))))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@92@01 $Snap)
(assert (= $t@92@01 ($Snap.combine ($Snap.first $t@92@01) ($Snap.second $t@92@01))))
(assert (= ($Snap.first $t@92@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@92@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@92@01))
    ($Snap.second ($Snap.second $t@92@01)))))
(assert (= ($Snap.first ($Snap.second $t@92@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_161)
(assert (= ($Snap.second ($Snap.second $t@92@01)) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@88@01 _current_wait_level_161@90@01))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@93@01 $Perm)
; [exec]
; inhale typeof(self_2) == Lock(Lock_arg(typeof(self_2), 0))
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 $Snap.unit))
; [eval] typeof(self_2) == Lock(Lock_arg(typeof(self_2), 0))
; [eval] typeof(self_2)
; [eval] Lock(Lock_arg(typeof(self_2), 0))
; [eval] Lock_arg(typeof(self_2), 0)
; [eval] typeof(self_2)
(assert (=
  (typeof<PyType> self_2@89@01)
  (Lock<PyType> (Lock_arg<PyType> (typeof<PyType> self_2@89@01) 0))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_163@95@01 $Ref)
(declare-const _caller_measures_163@96@01 Seq<Measure$>)
(declare-const _residue_164@97@01 $Perm)
(declare-const _current_wait_level_163@98@01 $Perm)
(declare-const _cthread_163@99@01 $Ref)
(declare-const _caller_measures_163@100@01 Seq<Measure$>)
(declare-const _residue_164@101@01 $Perm)
(declare-const _current_wait_level_163@102@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(assert (= ($Snap.first $t@103@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@99@01 $Ref.null)))
(assert (=
  ($Snap.second $t@103@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@103@01))
    ($Snap.second ($Snap.second $t@103@01)))))
(assert (= ($Snap.first ($Snap.second $t@103@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@99@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@103@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseBounded] :: Level(_r_16) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@104@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@104@01))
    ($Snap.second ($Snap.second $t@104@01)))))
(assert (= ($Snap.first ($Snap.second $t@104@01)) $Snap.unit))
; [eval] (forperm _r_16: Ref [_r_16.MustReleaseUnbounded] :: Level(_r_16) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@104@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@104@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@104@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@104@01))) $Snap.unit))
; [eval] _residue_164 <= _current_wait_level_163
(assert (<= _residue_164@101@01 _current_wait_level_163@102@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@104@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@105@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@106@01 Set<_Name>)
; [exec]
; var module_defined_1: Bool
(declare-const module_defined_1@107@01 Bool)
; [exec]
; var module_names_1: Set[_Name]
(declare-const module_names_1@108@01 Set<_Name>)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@109@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@110@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq[Measure$]()
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
(declare-const module_names_0@111@01 Set<_Name>)
(assert (=
  module_names_0@111@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 ($Snap.combine ($Snap.first $t@112@01) ($Snap.second $t@112@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@112@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@112@01))
    ($Snap.second ($Snap.second $t@112@01)))))
(assert (= ($Snap.first ($Snap.second $t@112@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@112@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@112@01)) $Snap.unit))
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
(declare-const module_names_0@113@01 Set<_Name>)
(assert (=
  module_names_0@113@01
  (Set_union module_names_0@111@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
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
  ($Snap.second $t@114@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@114@01))
    ($Snap.second ($Snap.second $t@114@01)))))
(assert (= ($Snap.first ($Snap.second $t@114@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@114@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@114@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@114@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@114@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@114@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@114@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@114@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@114@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_defined_1 := false
; [exec]
; module_names_1 := Set[_Name]()
; [eval] Set[_Name]()
; [exec]
; module_names_1 := (module_names_1 union Set(_single(6872323072689856351)))
; [eval] (module_names_1 union Set(_single(6872323072689856351)))
; [eval] Set(_single(6872323072689856351))
; [eval] _single(6872323072689856351)
(declare-const module_names_1@115@01 Set<_Name>)
(assert (=
  module_names_1@115@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file___0()._val, 99 / 100) &&
;   (issubtype(typeof(__file___0()._val), str()) &&
;   issubtype(typeof(__file___0()._val), str()))
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
; [eval] __file___0()
(set-option :timeout 0)
(push) ; 3
(assert (__file___0%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file___0%precondition $Snap.unit))
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__name__ $Snap.unit) (__file___0 $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__file__ $Snap.unit) (__file___0 $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (__file___0 $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (= ($Snap.first ($Snap.second $t@116@01)) $Snap.unit))
; [eval] issubtype(typeof(__file___0()._val), str())
; [eval] typeof(__file___0()._val)
; [eval] __file___0()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@116@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@116@01)) $Snap.unit))
; [eval] issubtype(typeof(__file___0()._val), str())
; [eval] typeof(__file___0()._val)
; [eval] __file___0()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_1 := (module_names_1 union Set(_single(6872323076851130207)))
; [eval] (module_names_1 union Set(_single(6872323076851130207)))
; [eval] Set(_single(6872323076851130207))
; [eval] _single(6872323076851130207)
(declare-const module_names_1@117@01 Set<_Name>)
(assert (=
  module_names_1@117@01
  (Set_union module_names_1@115@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name___0()._val, 99 / 100) &&
;   (issubtype(typeof(__name___0()._val), str()) &&
;   (issubtype(typeof(__name___0()._val), str()) &&
;   !str___eq__(str___create__(8, 6872332955275845471), __name___0()._val)))
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
; [eval] __name___0()
(set-option :timeout 0)
(push) ; 3
(assert (__name___0%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__name___0%precondition $Snap.unit))
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__file___0 $Snap.unit) (__name___0 $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__name__ $Snap.unit) (__name___0 $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (__file__ $Snap.unit) (__name___0 $Snap.unit))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (__name___0 $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@118@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@118@01))
    ($Snap.second ($Snap.second $t@118@01)))))
(assert (= ($Snap.first ($Snap.second $t@118@01)) $Snap.unit))
; [eval] issubtype(typeof(__name___0()._val), str())
; [eval] typeof(__name___0()._val)
; [eval] __name___0()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@118@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@118@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@118@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@118@01))) $Snap.unit))
; [eval] issubtype(typeof(__name___0()._val), str())
; [eval] typeof(__name___0()._val)
; [eval] __name___0()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@118@01))) $Snap.unit))
; [eval] !str___eq__(str___create__(8, 6872332955275845471), __name___0()._val)
; [eval] str___eq__(str___create__(8, 6872332955275845471), __name___0()._val)
; [eval] str___create__(8, 6872332955275845471)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] __name___0()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), str())
; [eval] typeof(self)
; [eval] str()
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@118@01))))
(pop) ; 3
; Joined path conditions
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@118@01))))
(assert (not
  (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@118@01)))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(32481164592901701)))
; [eval] (module_names_0 union Set(_single(32481164592901701)))
; [eval] Set(_single(32481164592901701))
; [eval] _single(32481164592901701)
(declare-const module_names_0@119@01 Set<_Name>)
(assert (=
  module_names_0@119@01
  (Set_union module_names_0@113@01 (Set_singleton (_single<_Name> 32481164592901701)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2147776066907203333705)))
; [eval] (module_names_0 union Set(_single(2147776066907203333705)))
; [eval] Set(_single(2147776066907203333705))
; [eval] _single(2147776066907203333705)
(declare-const module_names_0@120@01 Set<_Name>)
(assert (=
  module_names_0@120@01
  (Set_union module_names_0@119@01 (Set_singleton (_single<_Name> 2147776066907203333705)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8315178084276987218)))
; [eval] (module_names_0 union Set(_single(8315178084276987218)))
; [eval] Set(_single(8315178084276987218))
; [eval] _single(8315178084276987218)
(declare-const module_names_0@121@01 Set<_Name>)
(assert (=
  module_names_0@121@01
  (Set_union module_names_0@120@01 (Set_singleton (_single<_Name> 8315178084276987218)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7738150958662902082)))
; [eval] (module_names_0 union Set(_single(7738150958662902082)))
; [eval] Set(_single(7738150958662902082))
; [eval] _single(7738150958662902082)
(declare-const module_names_0@122@01 Set<_Name>)
(assert (=
  module_names_0@122@01
  (Set_union module_names_0@121@01 (Set_singleton (_single<_Name> 7738150958662902082)))))
; [eval] !module_defined_1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | True | live]
; [else-branch: 34 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | True]
; [exec]
; module_defined_1 := true
; [exec]
; module_names_1 := (module_names_1 union Set(_single(27981962743276871)))
; [eval] (module_names_1 union Set(_single(27981962743276871)))
; [eval] Set(_single(27981962743276871))
; [eval] _single(27981962743276871)
(declare-const module_names_1@123@01 Set<_Name>)
(assert (=
  module_names_1@123@01
  (Set_union module_names_1@117@01 (Set_singleton (_single<_Name> 27981962743276871)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(7809644653626814543)))
; [eval] (module_names_1 union Set(_single(7809644653626814543)))
; [eval] Set(_single(7809644653626814543))
; [eval] _single(7809644653626814543)
(declare-const module_names_1@124@01 Set<_Name>)
(assert (=
  module_names_1@124@01
  (Set_union module_names_1@123@01 (Set_singleton (_single<_Name> 7809644653626814543)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(32195171041966420)))
; [eval] (module_names_1 union Set(_single(32195171041966420)))
; [eval] Set(_single(32195171041966420))
; [eval] _single(32195171041966420)
(declare-const module_names_1@125@01 Set<_Name>)
(assert (=
  module_names_1@125@01
  (Set_union module_names_1@124@01 (Set_singleton (_single<_Name> 32195171041966420)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(37578771102893684825896415043)))
; [eval] (module_names_1 union Set(_single(37578771102893684825896415043)))
; [eval] Set(_single(37578771102893684825896415043))
; [eval] _single(37578771102893684825896415043)
(declare-const module_names_1@126@01 Set<_Name>)
(assert (=
  module_names_1@126@01
  (Set_union module_names_1@125@01 (Set_singleton (_single<_Name> 37578771102893684825896415043)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(32481164592901701)))
; [eval] (module_names_1 union Set(_single(32481164592901701)))
; [eval] Set(_single(32481164592901701))
; [eval] _single(32481164592901701)
(declare-const module_names_1@127@01 Set<_Name>)
(assert (=
  module_names_1@127@01
  (Set_union module_names_1@126@01 (Set_singleton (_single<_Name> 32481164592901701)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(32481125787004233)))
; [eval] (module_names_1 union Set(_single(32481125787004233)))
; [eval] Set(_single(32481125787004233))
; [eval] _single(32481125787004233)
(declare-const module_names_1@128@01 Set<_Name>)
(assert (=
  module_names_1@128@01
  (Set_union module_names_1@127@01 (Set_singleton (_single<_Name> 32481125787004233)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(7827276)))
; [eval] (module_names_1 union Set(_single(7827276)))
; [eval] Set(_single(7827276))
; [eval] _single(7827276)
(declare-const module_names_1@129@01 Set<_Name>)
(assert (=
  module_names_1@129@01
  (Set_union module_names_1@128@01 (Set_singleton (_single<_Name> 7827276)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(8389754714483814220)))
; [eval] (module_names_1 union Set(_single(8389754714483814220)))
; [eval] Set(_single(8389754714483814220))
; [eval] _single(8389754714483814220)
(declare-const module_names_1@130@01 Set<_Name>)
(assert (=
  module_names_1@130@01
  (Set_union module_names_1@129@01 (Set_singleton (_single<_Name> 8389754714483814220)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(1871507244730112373328)))
; [eval] (module_names_1 union Set(_single(1871507244730112373328)))
; [eval] Set(_single(1871507244730112373328))
; [eval] _single(1871507244730112373328)
(declare-const module_names_1@131@01 Set<_Name>)
(assert (=
  module_names_1@131@01
  (Set_union module_names_1@130@01 (Set_singleton (_single<_Name> 1871507244730112373328)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(1701999952)))
; [eval] (module_names_1 union Set(_single(1701999952)))
; [eval] Set(_single(1701999952))
; [eval] _single(1701999952)
(declare-const module_names_1@132@01 Set<_Name>)
(assert (=
  module_names_1@132@01
  (Set_union module_names_1@131@01 (Set_singleton (_single<_Name> 1701999952)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(8315178084276987218)))
; [eval] (module_names_1 union Set(_single(8315178084276987218)))
; [eval] Set(_single(8315178084276987218))
; [eval] _single(8315178084276987218)
(declare-const module_names_1@133@01 Set<_Name>)
(assert (=
  module_names_1@133@01
  (Set_union module_names_1@132@01 (Set_singleton (_single<_Name> 8315178084276987218)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(7738150958662902082)))
; [eval] (module_names_1 union Set(_single(7738150958662902082)))
; [eval] Set(_single(7738150958662902082))
; [eval] _single(7738150958662902082)
(declare-const module_names_1@134@01 Set<_Name>)
(assert (=
  module_names_1@134@01
  (Set_union module_names_1@133@01 (Set_singleton (_single<_Name> 7738150958662902082)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(465558725964)))
; [eval] (module_names_1 union Set(_single(465558725964)))
; [eval] Set(_single(465558725964))
; [eval] _single(465558725964)
(declare-const module_names_1@135@01 Set<_Name>)
(assert (=
  module_names_1@135@01
  (Set_union module_names_1@134@01 (Set_singleton (_single<_Name> 465558725964)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(122646376569110405802325325)))
; [eval] (module_names_1 union Set(_single(122646376569110405802325325)))
; [eval] Set(_single(122646376569110405802325325))
; [eval] _single(122646376569110405802325325)
(declare-const module_names_1@136@01 Set<_Name>)
(assert (=
  module_names_1@136@01
  (Set_union module_names_1@135@01 (Set_singleton (_single<_Name> 122646376569110405802325325)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(8038062462289584464661321053517)))
; [eval] (module_names_1 union Set(_single(8038062462289584464661321053517)))
; [eval] Set(_single(8038062462289584464661321053517))
; [eval] _single(8038062462289584464661321053517)
(declare-const module_names_1@137@01 Set<_Name>)
(assert (=
  module_names_1@137@01
  (Set_union module_names_1@136@01 (Set_singleton (_single<_Name> 8038062462289584464661321053517)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(1999559502384759136599)))
; [eval] (module_names_1 union Set(_single(1999559502384759136599)))
; [eval] Set(_single(1999559502384759136599))
; [eval] _single(1999559502384759136599)
(declare-const module_names_1@138@01 Set<_Name>)
(assert (=
  module_names_1@138@01
  (Set_union module_names_1@137@01 (Set_singleton (_single<_Name> 1999559502384759136599)))))
; [exec]
; assert true &&
;   ((_single(7738150958662902082) in module_names_1) &&
;   (_single(7738150958662902082) in module_names_1))
; [eval] (_single(7738150958662902082) in module_names_1)
; [eval] _single(7738150958662902082)
(push) ; 4
(assert (not (Set_in (_single<_Name> 7738150958662902082) module_names_1@138@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 7738150958662902082) module_names_1@138@01))
; [eval] (_single(7738150958662902082) in module_names_1)
; [eval] _single(7738150958662902082)
; [exec]
; assert true && (_single(7738150958662902082) in module_names_1)
; [eval] (_single(7738150958662902082) in module_names_1)
; [eval] _single(7738150958662902082)
; [exec]
; module_names_1 := (module_names_1 union Set(_single(6872339552563453791)))
; [eval] (module_names_1 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_1@139@01 Set<_Name>)
(assert (=
  module_names_1@139@01
  (Set_union module_names_1@138@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_1 := (module_names_1 union
;   Set(_single(474107507589505187341671)))
; [eval] (module_names_1 union Set(_single(474107507589505187341671)))
; [eval] Set(_single(474107507589505187341671))
; [eval] _single(474107507589505187341671)
(declare-const module_names_1@140@01 Set<_Name>)
(assert (=
  module_names_1@140@01
  (Set_union module_names_1@139@01 (Set_singleton (_single<_Name> 474107507589505187341671)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(28554769915274081)))
; [eval] (module_names_1 union Set(_single(28554769915274081)))
; [eval] Set(_single(28554769915274081))
; [eval] _single(28554769915274081)
(declare-const module_names_1@141@01 Set<_Name>)
(assert (=
  module_names_1@141@01
  (Set_union module_names_1@140@01 (Set_singleton (_single<_Name> 28554769915274081)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(28555834798400882)))
; [eval] (module_names_1 union Set(_single(28555834798400882)))
; [eval] Set(_single(28555834798400882))
; [eval] _single(28555834798400882)
(declare-const module_names_1@142@01 Set<_Name>)
(assert (=
  module_names_1@142@01
  (Set_union module_names_1@141@01 (Set_singleton (_single<_Name> 28555834798400882)))))
; [exec]
; module_names_1 := (module_names_1 union Set(_single(1801678668)))
; [eval] (module_names_1 union Set(_single(1801678668)))
; [eval] Set(_single(1801678668))
; [eval] _single(1801678668)
(declare-const module_names_1@143@01 Set<_Name>)
(assert (=
  module_names_1@143@01
  (Set_union module_names_1@142@01 (Set_singleton (_single<_Name> 1801678668)))))
; [exec]
; assert (_single(1801678668) in module_names_1)
; [eval] (_single(1801678668) in module_names_1)
; [eval] _single(1801678668)
(push) ; 4
(assert (not (Set_in (_single<_Name> 1801678668) module_names_1@143@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 1801678668) module_names_1@143@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1801678668)))
; [eval] (module_names_0 union Set(_single(1801678668)))
; [eval] Set(_single(1801678668))
; [eval] _single(1801678668)
(declare-const module_names_0@144@01 Set<_Name>)
(assert (=
  module_names_0@144@01
  (Set_union module_names_0@122@01 (Set_singleton (_single<_Name> 1801678668)))))
; [exec]
; assert true && (_single(1801678668) in module_names_0)
; [eval] (_single(1801678668) in module_names_0)
; [eval] _single(1801678668)
(push) ; 4
(assert (not (Set_in (_single<_Name> 1801678668) module_names_0@144@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 1801678668) module_names_0@144@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7303014)))
; [eval] (module_names_0 union Set(_single(7303014)))
; [eval] Set(_single(7303014))
; [eval] _single(7303014)
(declare-const module_names_0@145@01 Set<_Name>)
(assert (=
  module_names_0@145@01
  (Set_union module_names_0@144@01 (Set_singleton (_single<_Name> 7303014)))))
; [exec]
; assert true && (_single(1801678668) in module_names_0)
; [eval] (_single(1801678668) in module_names_0)
; [eval] _single(1801678668)
(push) ; 4
(assert (not (Set_in (_single<_Name> 1801678668) module_names_0@145@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 1801678668) module_names_0@145@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(125779936305507)))
; [eval] (module_names_0 union Set(_single(125779936305507)))
; [eval] Set(_single(125779936305507))
; [eval] _single(125779936305507)
(declare-const module_names_0@146@01 Set<_Name>)
(assert (=
  module_names_0@146@01
  (Set_union module_names_0@145@01 (Set_singleton (_single<_Name> 125779936305507)))))
; [exec]
; label __end
; [eval] (forperm _r_17: Ref [MustInvokeBounded(_r_17)] :: false)
; [eval] (forperm _r_17: Ref [MustInvokeUnbounded(_r_17)] :: false)
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: false)
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !!module_defined_1
; [eval] !module_defined_1
; [then-branch: 35 | False | dead]
; [else-branch: 35 | True | live]
(push) ; 3
; [else-branch: 35 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
