(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:29:42
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
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
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
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___lt__ ($Snap Int Int) Bool)
(declare-fun int___lt__%limited ($Snap Int Int) Bool)
(declare-fun int___lt__%stateless (Int Int) Bool)
(declare-fun int___lt__%precondition ($Snap Int Int) Bool)
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
  :qid |quant-u-3823|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-3824|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-3825|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3826|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3857|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3858|)))
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (= (_isDefined%limited s@$ id@4@00) (_isDefined s@$ id@4@00))
  :pattern ((_isDefined s@$ id@4@00))
  :qid |quant-u-3827|)))
(assert (forall ((s@$ $Snap) (id@4@00 Int)) (!
  (_isDefined%stateless id@4@00)
  :pattern ((_isDefined%limited s@$ id@4@00))
  :qid |quant-u-3828|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (= (Level%limited s@$ r@6@00) (Level s@$ r@6@00))
  :pattern ((Level s@$ r@6@00))
  :qid |quant-u-3829|)))
(assert (forall ((s@$ $Snap) (r@6@00 $Ref)) (!
  (Level%stateless r@6@00)
  :pattern ((Level%limited s@$ r@6@00))
  :qid |quant-u-3830|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (=
    (str___create__%limited s@$ len@8@00 value@9@00)
    (str___create__ s@$ len@8@00 value@9@00))
  :pattern ((str___create__ s@$ len@8@00 value@9@00))
  :qid |quant-u-3831|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (str___create__%stateless len@8@00 value@9@00)
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3832|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (and
      (= (str___len__ $Snap.unit result@10@00) len@8@00)
      (= (str___val__ $Snap.unit result@10@00) value@9@00)
      (= (typeof<PyType> result@10@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3859|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (str___len__%precondition $Snap.unit result@10@00)))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3860|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (str___val__%precondition $Snap.unit result@10@00)))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3861|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) true)
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3862|)))
(assert (forall ((s@$ $Snap) (map@11@00 Seq<Measure$>) (key@12@00 $Ref) (value@13@00 Int)) (!
  (=
    (Measure$check%limited s@$ map@11@00 key@12@00 value@13@00)
    (Measure$check s@$ map@11@00 key@12@00 value@13@00))
  :pattern ((Measure$check s@$ map@11@00 key@12@00 value@13@00))
  :qid |quant-u-3833|)))
(assert (forall ((s@$ $Snap) (map@11@00 Seq<Measure$>) (key@12@00 $Ref) (value@13@00 Int)) (!
  (Measure$check%stateless map@11@00 key@12@00 value@13@00)
  :pattern ((Measure$check%limited s@$ map@11@00 key@12@00 value@13@00))
  :qid |quant-u-3834|)))
(assert (forall ((s@$ $Snap) (map@11@00 Seq<Measure$>) (key@12@00 $Ref) (value@13@00 Int)) (!
  (=>
    (Measure$check%precondition s@$ map@11@00 key@12@00 value@13@00)
    (=
      (Measure$check s@$ map@11@00 key@12@00 value@13@00)
      (forall ((m Measure$)) (!
        (=>
          (and
            (Seq_contains map@11@00 m)
            (and (Measure$guard<Bool> m) (= (Measure$key<Ref> m) key@12@00)))
          (> (Measure$value<Int> m) value@13@00))
        :pattern ((Seq_contains map@11@00 m))
        :pattern ((Seq_contains_trigger map@11@00 m))
        :pattern ((Seq_contains_trigger map@11@00 m))
        ))))
  :pattern ((Measure$check s@$ map@11@00 key@12@00 value@13@00))
  :qid |quant-u-3863|)))
(assert (forall ((s@$ $Snap) (map@11@00 Seq<Measure$>) (key@12@00 $Ref) (value@13@00 Int)) (!
  true
  :pattern ((Measure$check s@$ map@11@00 key@12@00 value@13@00))
  :qid |quant-u-3864|)))
(assert (forall ((s@$ $Snap) (self@15@00 $Ref) (other@16@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@15@00 other@16@00)
    (str___eq__ s@$ self@15@00 other@16@00))
  :pattern ((str___eq__ s@$ self@15@00 other@16@00))
  :qid |quant-u-3835|)))
(assert (forall ((s@$ $Snap) (self@15@00 $Ref) (other@16@00 $Ref)) (!
  (str___eq__%stateless self@15@00 other@16@00)
  :pattern ((str___eq__%limited s@$ self@15@00 other@16@00))
  :qid |quant-u-3836|)))
(assert (forall ((s@$ $Snap) (self@15@00 $Ref) (other@16@00 $Ref)) (!
  (let ((result@17@00 (str___eq__%limited s@$ self@15@00 other@16@00))) (=>
    (str___eq__%precondition s@$ self@15@00 other@16@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@15@00)
          (str___val__ $Snap.unit other@16@00))
        result@17@00)
      (=>
        result@17@00
        (=
          (str___len__ $Snap.unit self@15@00)
          (str___len__ $Snap.unit other@16@00))))))
  :pattern ((str___eq__%limited s@$ self@15@00 other@16@00))
  :qid |quant-u-3865|)))
(assert (forall ((s@$ $Snap) (self@15@00 $Ref) (other@16@00 $Ref)) (!
  (let ((result@17@00 (str___eq__%limited s@$ self@15@00 other@16@00))) (=>
    (str___eq__%precondition s@$ self@15@00 other@16@00)
    (and
      (str___val__%precondition $Snap.unit self@15@00)
      (str___val__%precondition $Snap.unit other@16@00))))
  :pattern ((str___eq__%limited s@$ self@15@00 other@16@00))
  :qid |quant-u-3866|)))
(assert (forall ((s@$ $Snap) (self@15@00 $Ref) (other@16@00 $Ref)) (!
  (let ((result@17@00 (str___eq__%limited s@$ self@15@00 other@16@00))) (=>
    (and (str___eq__%precondition s@$ self@15@00 other@16@00) result@17@00)
    (and
      (str___len__%precondition $Snap.unit self@15@00)
      (str___len__%precondition $Snap.unit other@16@00))))
  :pattern ((str___eq__%limited s@$ self@15@00 other@16@00))
  :qid |quant-u-3867|)))
(assert (forall ((s@$ $Snap) (self@18@00 Int) (other@19@00 Int)) (!
  (=
    (int___lt__%limited s@$ self@18@00 other@19@00)
    (int___lt__ s@$ self@18@00 other@19@00))
  :pattern ((int___lt__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3837|)))
(assert (forall ((s@$ $Snap) (self@18@00 Int) (other@19@00 Int)) (!
  (int___lt__%stateless self@18@00 other@19@00)
  :pattern ((int___lt__%limited s@$ self@18@00 other@19@00))
  :qid |quant-u-3838|)))
(assert (forall ((s@$ $Snap) (self@18@00 Int) (other@19@00 Int)) (!
  (=>
    (int___lt__%precondition s@$ self@18@00 other@19@00)
    (= (int___lt__ s@$ self@18@00 other@19@00) (< self@18@00 other@19@00)))
  :pattern ((int___lt__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3868|)))
(assert (forall ((s@$ $Snap) (self@18@00 Int) (other@19@00 Int)) (!
  true
  :pattern ((int___lt__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3869|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (=
    (int___add__%limited s@$ self@21@00 other@22@00)
    (int___add__ s@$ self@21@00 other@22@00))
  :pattern ((int___add__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3839|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (int___add__%stateless self@21@00 other@22@00)
  :pattern ((int___add__%limited s@$ self@21@00 other@22@00))
  :qid |quant-u-3840|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@21@00 other@22@00)
    (= (int___add__ s@$ self@21@00 other@22@00) (+ self@21@00 other@22@00)))
  :pattern ((int___add__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3870|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3871|)))
(assert (forall ((s@$ $Snap) (self@24@00 Int) (other@25@00 Int)) (!
  (=
    (int___sub__%limited s@$ self@24@00 other@25@00)
    (int___sub__ s@$ self@24@00 other@25@00))
  :pattern ((int___sub__ s@$ self@24@00 other@25@00))
  :qid |quant-u-3841|)))
(assert (forall ((s@$ $Snap) (self@24@00 Int) (other@25@00 Int)) (!
  (int___sub__%stateless self@24@00 other@25@00)
  :pattern ((int___sub__%limited s@$ self@24@00 other@25@00))
  :qid |quant-u-3842|)))
(assert (forall ((s@$ $Snap) (self@24@00 Int) (other@25@00 Int)) (!
  (=>
    (int___sub__%precondition s@$ self@24@00 other@25@00)
    (= (int___sub__ s@$ self@24@00 other@25@00) (- self@24@00 other@25@00)))
  :pattern ((int___sub__ s@$ self@24@00 other@25@00))
  :qid |quant-u-3872|)))
(assert (forall ((s@$ $Snap) (self@24@00 Int) (other@25@00 Int)) (!
  true
  :pattern ((int___sub__ s@$ self@24@00 other@25@00))
  :qid |quant-u-3873|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3843|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3844|)))
(assert (forall ((s@$ $Snap) (box@28@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@28@00) (bool___unbox__ s@$ box@28@00))
  :pattern ((bool___unbox__ s@$ box@28@00))
  :qid |quant-u-3845|)))
(assert (forall ((s@$ $Snap) (box@28@00 $Ref)) (!
  (bool___unbox__%stateless box@28@00)
  :pattern ((bool___unbox__%limited s@$ box@28@00))
  :qid |quant-u-3846|)))
(assert (forall ((s@$ $Snap) (box@28@00 $Ref)) (!
  (let ((result@29@00 (bool___unbox__%limited s@$ box@28@00))) (=>
    (bool___unbox__%precondition s@$ box@28@00)
    (= (__prim__bool___box__%limited $Snap.unit result@29@00) box@28@00)))
  :pattern ((bool___unbox__%limited s@$ box@28@00))
  :qid |quant-u-3874|)))
(assert (forall ((s@$ $Snap) (box@28@00 $Ref)) (!
  (let ((result@29@00 (bool___unbox__%limited s@$ box@28@00))) (=>
    (bool___unbox__%precondition s@$ box@28@00)
    (__prim__bool___box__%precondition $Snap.unit result@29@00)))
  :pattern ((bool___unbox__%limited s@$ box@28@00))
  :qid |quant-u-3875|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@30@00)
    (__prim__bool___box__ s@$ prim@30@00))
  :pattern ((__prim__bool___box__ s@$ prim@30@00))
  :qid |quant-u-3847|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (__prim__bool___box__%stateless prim@30@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@30@00))
  :qid |quant-u-3848|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (let ((result@31@00 (__prim__bool___box__%limited s@$ prim@30@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@30@00)
    (and
      (= (typeof<PyType> result@31@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@31@00) prim@30@00)
      (= (int___unbox__%limited $Snap.unit result@31@00) (ite prim@30@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@30@00))
  :qid |quant-u-3876|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (let ((result@31@00 (__prim__bool___box__%limited s@$ prim@30@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@30@00))
  :qid |quant-u-3877|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (let ((result@31@00 (__prim__bool___box__%limited s@$ prim@30@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@30@00)
    (bool___unbox__%precondition $Snap.unit result@31@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@30@00))
  :qid |quant-u-3878|)))
(assert (forall ((s@$ $Snap) (prim@30@00 Bool)) (!
  (let ((result@31@00 (__prim__bool___box__%limited s@$ prim@30@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@30@00)
    (int___unbox__%precondition $Snap.unit result@31@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@30@00))
  :qid |quant-u-3879|)))
(assert (forall ((s@$ $Snap) (box@32@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@32@00) (int___unbox__ s@$ box@32@00))
  :pattern ((int___unbox__ s@$ box@32@00))
  :qid |quant-u-3849|)))
(assert (forall ((s@$ $Snap) (box@32@00 $Ref)) (!
  (int___unbox__%stateless box@32@00)
  :pattern ((int___unbox__%limited s@$ box@32@00))
  :qid |quant-u-3850|)))
(assert (forall ((s@$ $Snap) (box@32@00 $Ref)) (!
  (let ((result@33@00 (int___unbox__%limited s@$ box@32@00))) (=>
    (int___unbox__%precondition s@$ box@32@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@32@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@33@00) box@32@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@32@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@33@00 0)))
          box@32@00)))))
  :pattern ((int___unbox__%limited s@$ box@32@00))
  :qid |quant-u-3880|)))
(assert (forall ((s@$ $Snap) (box@32@00 $Ref)) (!
  (let ((result@33@00 (int___unbox__%limited s@$ box@32@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@32@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@32@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@33@00)))
  :pattern ((int___unbox__%limited s@$ box@32@00))
  :qid |quant-u-3881|)))
(assert (forall ((s@$ $Snap) (box@32@00 $Ref)) (!
  (let ((result@33@00 (int___unbox__%limited s@$ box@32@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@32@00)
      (issubtype<Bool> (typeof<PyType> box@32@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@33@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@32@00))
  :qid |quant-u-3882|)))
(assert (forall ((s@$ $Snap) (prim@34@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@34@00)
    (__prim__int___box__ s@$ prim@34@00))
  :pattern ((__prim__int___box__ s@$ prim@34@00))
  :qid |quant-u-3851|)))
(assert (forall ((s@$ $Snap) (prim@34@00 Int)) (!
  (__prim__int___box__%stateless prim@34@00)
  :pattern ((__prim__int___box__%limited s@$ prim@34@00))
  :qid |quant-u-3852|)))
(assert (forall ((s@$ $Snap) (prim@34@00 Int)) (!
  (let ((result@35@00 (__prim__int___box__%limited s@$ prim@34@00))) (=>
    (__prim__int___box__%precondition s@$ prim@34@00)
    (and
      (= (typeof<PyType> result@35@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@35@00) prim@34@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@34@00))
  :qid |quant-u-3883|)))
(assert (forall ((s@$ $Snap) (prim@34@00 Int)) (!
  (let ((result@35@00 (__prim__int___box__%limited s@$ prim@34@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@34@00))
  :qid |quant-u-3884|)))
(assert (forall ((s@$ $Snap) (prim@34@00 Int)) (!
  (let ((result@35@00 (__prim__int___box__%limited s@$ prim@34@00))) (=>
    (__prim__int___box__%precondition s@$ prim@34@00)
    (int___unbox__%precondition $Snap.unit result@35@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@34@00))
  :qid |quant-u-3885|)))
(assert (forall ((s@$ $Snap) (val@36@00 $Ref) (id@37@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@36@00 id@37@00)
    (_checkDefined s@$ val@36@00 id@37@00))
  :pattern ((_checkDefined s@$ val@36@00 id@37@00))
  :qid |quant-u-3853|)))
(assert (forall ((s@$ $Snap) (val@36@00 $Ref) (id@37@00 Int)) (!
  (_checkDefined%stateless val@36@00 id@37@00)
  :pattern ((_checkDefined%limited s@$ val@36@00 id@37@00))
  :qid |quant-u-3854|)))
(assert (forall ((s@$ $Snap) (val@36@00 $Ref) (id@37@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@36@00 id@37@00)
    (= (_checkDefined s@$ val@36@00 id@37@00) val@36@00))
  :pattern ((_checkDefined s@$ val@36@00 id@37@00))
  :qid |quant-u-3886|)))
(assert (forall ((s@$ $Snap) (val@36@00 $Ref) (id@37@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@36@00 id@37@00))
  :qid |quant-u-3887|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3855|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3856|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- x_0 ----------
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
; var _cwl_156: Perm
(declare-const _cwl_156@11@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@12@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; label __end
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- y ----------
(declare-const _cthread_157@13@01 $Ref)
(declare-const _caller_measures_157@14@01 Seq<Measure$>)
(declare-const _residue_157@15@01 $Perm)
(declare-const _current_wait_level_157@16@01 $Perm)
(declare-const _cthread_157@17@01 $Ref)
(declare-const _caller_measures_157@18@01 Seq<Measure$>)
(declare-const _residue_157@19@01 $Perm)
(declare-const _current_wait_level_157@20@01 $Perm)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(assert (= ($Snap.first $t@21@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@17@01 $Ref.null)))
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(assert (= ($Snap.first ($Snap.second $t@21@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@17@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@21@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (= ($Snap.first $t@22@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@22@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@22@01))
    ($Snap.second ($Snap.second $t@22@01)))))
(assert (= ($Snap.first ($Snap.second $t@22@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@22@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@22@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@22@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@22@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@19@01 _current_wait_level_157@20@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@22@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@23@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@24@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@25@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq(Measure$create(true, _cthread_157, 1))
; [eval] Seq(Measure$create(true, _cthread_157, 1))
; [eval] Measure$create(true, _cthread_157, 1)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_157@17@01 1)))
  1))
(declare-const _method_measures_157@26@01 Seq<Measure$>)
(assert (=
  _method_measures_157@26@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_157@17@01 1))))
; [exec]
; _err := null
; [exec]
; label __end
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- z ----------
(declare-const _cthread_158@27@01 $Ref)
(declare-const _caller_measures_158@28@01 Seq<Measure$>)
(declare-const _residue_158@29@01 $Perm)
(declare-const _current_wait_level_158@30@01 $Perm)
(declare-const _cthread_158@31@01 $Ref)
(declare-const _caller_measures_158@32@01 Seq<Measure$>)
(declare-const _residue_158@33@01 $Perm)
(declare-const _current_wait_level_158@34@01 $Perm)
(push) ; 1
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@31@01 $Ref.null)))
(assert (=
  ($Snap.second $t@35@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@35@01))
    ($Snap.second ($Snap.second $t@35@01)))))
(assert (= ($Snap.first ($Snap.second $t@35@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@31@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@35@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@35@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@36@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@36@01))
    ($Snap.second ($Snap.second $t@36@01)))))
(assert (= ($Snap.first ($Snap.second $t@36@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@36@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@36@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@36@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@33@01 _current_wait_level_158@34@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@36@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@37@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@38@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@39@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq(Measure$create(true, _cthread_158, 5))
; [eval] Seq(Measure$create(true, _cthread_158, 5))
; [eval] Measure$create(true, _cthread_158, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_158@31@01 5)))
  1))
(declare-const _method_measures_158@40@01 Seq<Measure$>)
(assert (=
  _method_measures_158@40@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_158@31@01 5))))
; [exec]
; _err := null
; [exec]
; _cwl_158 := y(_cthread_158, _method_measures_158, _residue_158)
; [eval] _cthread_157 != null
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1) || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1)
(push) ; 3
(assert (Measure$check%precondition $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1))
(pop) ; 3
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1))
(push) ; 3
; [then-branch: 0 | Measure$check(_, _method_measures_158@40@01, _cthread_158@31@01, 1) | live]
; [else-branch: 0 | !(Measure$check(_, _method_measures_158@40@01, _cthread_158@31@01, 1)) | live]
(push) ; 4
; [then-branch: 0 | Measure$check(_, _method_measures_158@40@01, _cthread_158@31@01, 1)]
(assert (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(Measure$check(_, _method_measures_158@40@01, _cthread_158@31@01, 1))]
(assert (not (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1)))
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1))
  (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1)))
(push) ; 3
(assert (not (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit _method_measures_158@40@01 _cthread_158@31@01 1))
(declare-const _current_wait_level_157@41@01 $Perm)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(assert (= ($Snap.first $t@42@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@42@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@42@01))
    ($Snap.second ($Snap.second $t@42@01)))))
(assert (= ($Snap.first ($Snap.second $t@42@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@42@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@42@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@42@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_158@33@01 _current_wait_level_157@41@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@42@01))) $Snap.unit))
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
; ---------- f ----------
(declare-const _cthread_159@43@01 $Ref)
(declare-const _caller_measures_159@44@01 Seq<Measure$>)
(declare-const _residue_159@45@01 $Perm)
(declare-const _current_wait_level_159@46@01 $Perm)
(declare-const _cthread_159@47@01 $Ref)
(declare-const _caller_measures_159@48@01 Seq<Measure$>)
(declare-const _residue_159@49@01 $Perm)
(declare-const _current_wait_level_159@50@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@51@01 $Snap)
(assert (= $t@51@01 ($Snap.combine ($Snap.first $t@51@01) ($Snap.second $t@51@01))))
(assert (= ($Snap.first $t@51@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@47@01 $Ref.null)))
(assert (=
  ($Snap.second $t@51@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@51@01))
    ($Snap.second ($Snap.second $t@51@01)))))
(assert (= ($Snap.first ($Snap.second $t@51@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@47@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@51@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(assert (= ($Snap.first $t@52@01) $Snap.unit))
; [eval] (forperm _r_10: Ref [_r_10.MustReleaseBounded] :: Level(_r_10) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@52@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@52@01))
    ($Snap.second ($Snap.second $t@52@01)))))
(assert (= ($Snap.first ($Snap.second $t@52@01)) $Snap.unit))
; [eval] (forperm _r_10: Ref [_r_10.MustReleaseUnbounded] :: Level(_r_10) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@52@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@52@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@52@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@52@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@49@01 _current_wait_level_159@50@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@52@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@53@01 $Ref)
; [exec]
; var _loop_measures: Seq[Measure$]
(declare-const _loop_measures@54@01 Seq<Measure$>)
; [exec]
; var _loop_check_before: Bool
(declare-const _loop_check_before@55@01 Bool)
; [exec]
; var _loop_termination_flag: Bool
(declare-const _loop_termination_flag@56@01 Bool)
; [exec]
; var _loop_original_must_terminate: Perm
(declare-const _loop_original_must_terminate@57@01 $Perm)
; [exec]
; var _residue_170: Perm
(declare-const _residue_170@58@01 $Perm)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@59@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@60@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; _loop_original_must_terminate := perm(MustTerminate(_cthread_159))
; [eval] perm(MustTerminate(_cthread_159))
(declare-const _loop_original_must_terminate@61@01 $Perm)
(assert (= _loop_original_must_terminate@61@01 $Perm.No))
; [exec]
; _loop_termination_flag := false
; [exec]
; _loop_check_before := true
(declare-const _loop_measures@62@01 Seq<Measure$>)
(declare-const _loop_check_before@63@01 Bool)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _residue_170)
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(assert (= ($Snap.first ($Snap.second $t@64@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _residue_170)
(assert (=
  ($Snap.second ($Snap.second $t@64@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@64@01))) $Snap.unit))
; [eval] _residue_159 <= _residue_170
(assert (<= _residue_159@49@01 _residue_170@58@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@64@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] _loop_check_before ==> _loop_termination_flag || (!true || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | True | live]
; [else-branch: 1 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | True]
; [eval] _loop_termination_flag || (!true || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 2 | False | live]
; [else-branch: 2 | True | live]
(push) ; 7
; [then-branch: 2 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 2 | True]
; [eval] !true
(push) ; 8
; [then-branch: 3 | False | live]
; [else-branch: 3 | True | live]
(push) ; 9
; [then-branch: 3 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 3 | True]
; [eval] perm(MustTerminate(_cthread_159)) == none && ((forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
(push) ; 10
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 11
; [then-branch: 4 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 4 | True]
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
(push) ; 12
; [then-branch: 5 | False | live]
; [else-branch: 5 | True | live]
(push) ; 13
; [then-branch: 5 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 5 | True]
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
(push) ; 14
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 15
; [then-branch: 6 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 6 | True]
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 17
; [then-branch: 7 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 7 | True]
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
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
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !_loop_check_before ==> (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 4
; [then-branch: 8 | False | dead]
; [else-branch: 8 | True | live]
(push) ; 5
; [else-branch: 8 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
(assert (=
  ($Snap.second $t@64@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@01))
    ($Snap.second ($Snap.second $t@64@01)))))
(assert (= ($Snap.first ($Snap.second $t@64@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@64@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@64@01))) $Snap.unit))
(assert (<= _residue_159@49@01 _residue_170@58@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@64@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@64@01)))))
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
(push) ; 5
(pop) ; 5
(push) ; 5
; [eval] !true
(pop) ; 5
; Loop head block: Follow loop-internal edges
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | True | live]
; [else-branch: 9 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 9 | True]
; [exec]
; _loop_measures := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; label loop_end
; [exec]
; _loop_check_before := false
; [exec]
; assert _loop_termination_flag ==> !true
; [eval] _loop_termination_flag ==> !true
(push) ; 6
; [then-branch: 10 | False | dead]
; [else-branch: 10 | True | live]
(push) ; 7
; [else-branch: 10 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] _loop_check_before ==> _loop_termination_flag || (!true || perm(MustTerminate(_cthread_159)) == none && ((forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 11 | False | dead]
; [else-branch: 11 | True | live]
(push) ; 7
; [else-branch: 11 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] !_loop_check_before ==> (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | True | live]
; [else-branch: 12 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 12 | True]
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false) && ((forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false) && ((forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false) && (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
(push) ; 8
; [then-branch: 13 | False | live]
; [else-branch: 13 | True | live]
(push) ; 9
; [then-branch: 13 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 13 | True]
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
(push) ; 10
; [then-branch: 14 | False | live]
; [else-branch: 14 | True | live]
(push) ; 11
; [then-branch: 14 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 14 | True]
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
(push) ; 12
; [then-branch: 15 | False | live]
; [else-branch: 15 | True | live]
(push) ; 13
; [then-branch: 15 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 15 | True]
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
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
(pop) ; 5
; [eval] !true
; [then-branch: 16 | False | dead]
; [else-branch: 16 | True | live]
(push) ; 5
; [else-branch: 16 | True]
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f1 ----------
(declare-const _cthread_160@65@01 $Ref)
(declare-const _caller_measures_160@66@01 Seq<Measure$>)
(declare-const _residue_160@67@01 $Perm)
(declare-const _current_wait_level_160@68@01 $Perm)
(declare-const _cthread_160@69@01 $Ref)
(declare-const _caller_measures_160@70@01 Seq<Measure$>)
(declare-const _residue_160@71@01 $Perm)
(declare-const _current_wait_level_160@72@01 $Perm)
(push) ; 1
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@69@01 $Ref.null)))
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@69@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@73@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@73@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(assert (= ($Snap.first $t@74@01) $Snap.unit))
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: Level(_r_15) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(assert (= ($Snap.first ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: Level(_r_15) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@74@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@74@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@74@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@71@01 _current_wait_level_160@72@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@75@01 $Ref)
; [exec]
; var _loop_measures_0: Seq[Measure$]
(declare-const _loop_measures_0@76@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_0: Bool
(declare-const _loop_check_before_0@77@01 Bool)
; [exec]
; var _loop_termination_flag_0: Bool
(declare-const _loop_termination_flag_0@78@01 Bool)
; [exec]
; var _loop_original_must_terminate_0: Perm
(declare-const _loop_original_must_terminate_0@79@01 $Perm)
; [exec]
; var _residue_171: Perm
(declare-const _residue_171@80@01 $Perm)
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@81@01 $Perm)
; [exec]
; var _method_measures_160: Seq[Measure$]
(declare-const _method_measures_160@82@01 Seq<Measure$>)
; [exec]
; _method_measures_160 := Seq(Measure$create(true, _cthread_160, 10))
; [eval] Seq(Measure$create(true, _cthread_160, 10))
; [eval] Measure$create(true, _cthread_160, 10)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_160@69@01 10)))
  1))
(declare-const _method_measures_160@83@01 Seq<Measure$>)
(assert (=
  _method_measures_160@83@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_160@69@01 10))))
; [exec]
; _err := null
; [exec]
; _loop_original_must_terminate_0 := perm(MustTerminate(_cthread_160))
; [eval] perm(MustTerminate(_cthread_160))
(declare-const _loop_original_must_terminate_0@84@01 $Perm)
(assert (= _loop_original_must_terminate_0@84@01 $Perm.Write))
; [exec]
; _loop_termination_flag_0 := false
; [exec]
; _loop_check_before_0 := true
(declare-const _loop_measures_0@85@01 Seq<Measure$>)
(declare-const _loop_check_before_0@86@01 Bool)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 ($Snap.combine ($Snap.first $t@87@01) ($Snap.second $t@87@01))))
(assert (= ($Snap.first $t@87@01) $Snap.unit))
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseBounded] :: Level(_r_13) <= _residue_171)
(assert (=
  ($Snap.second $t@87@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@87@01))
    ($Snap.second ($Snap.second $t@87@01)))))
(assert (= ($Snap.first ($Snap.second $t@87@01)) $Snap.unit))
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseUnbounded] :: Level(_r_13) <= _residue_171)
(assert (=
  ($Snap.second ($Snap.second $t@87@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@87@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@87@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@87@01))) $Snap.unit))
; [eval] _residue_160 <= _residue_171
(assert (<= _residue_160@71@01 _residue_171@80@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@87@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@87@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@87@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@87@01)))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | True | live]
; [else-branch: 17 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 17 | True]
; [eval] _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 18 | False | live]
; [else-branch: 18 | True | live]
(push) ; 7
; [then-branch: 18 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 18 | True]
; [eval] !true
(push) ; 8
; [then-branch: 19 | False | live]
; [else-branch: 19 | True | live]
(push) ; 9
; [then-branch: 19 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 19 | True]
; [eval] perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
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
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | True | live]
; [else-branch: 20 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 20 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 7
; [then-branch: 21 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 21 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !true
(set-option :timeout 0)
(push) ; 8
; [then-branch: 22 | False | live]
; [else-branch: 22 | True | live]
(push) ; 9
; [then-branch: 22 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 22 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
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
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | True | live]
; [else-branch: 23 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 23 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 24 | False | live]
; [else-branch: 24 | True | live]
(push) ; 7
; [then-branch: 24 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 24 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !true
(set-option :timeout 0)
(push) ; 8
; [then-branch: 25 | False | live]
; [else-branch: 25 | True | live]
(push) ; 9
; [then-branch: 25 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 25 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
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
; [eval] _loop_check_before_0 ==> _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | True | live]
; [else-branch: 26 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 26 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_0 || (!true || perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | False | live]
; [else-branch: 27 | True | live]
(push) ; 7
; [then-branch: 27 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 27 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !true
(set-option :timeout 0)
(push) ; 8
; [then-branch: 28 | False | live]
; [else-branch: 28 | True | live]
(push) ; 9
; [then-branch: 28 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 28 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_160)) == none && ((forperm _r_14: Ref [MustInvokeBounded(_r_14)] :: false) && ((forperm _r_14: Ref [MustInvokeUnbounded(_r_14)] :: false) && ((forperm _r_14: Ref [_r_14.MustReleaseBounded] :: false) && (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
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
; ---------- f2 ----------
(declare-const _cthread_161@88@01 $Ref)
(declare-const _caller_measures_161@89@01 Seq<Measure$>)
(declare-const _residue_161@90@01 $Perm)
(declare-const _current_wait_level_161@91@01 $Perm)
(declare-const _cthread_161@92@01 $Ref)
(declare-const _caller_measures_161@93@01 Seq<Measure$>)
(declare-const _residue_161@94@01 $Perm)
(declare-const _current_wait_level_161@95@01 $Perm)
(push) ; 1
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 ($Snap.combine ($Snap.first $t@96@01) ($Snap.second $t@96@01))))
(assert (= ($Snap.first $t@96@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@92@01 $Ref.null)))
(assert (=
  ($Snap.second $t@96@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@96@01))
    ($Snap.second ($Snap.second $t@96@01)))))
(assert (= ($Snap.first ($Snap.second $t@96@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@92@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@96@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(assert (= ($Snap.first ($Snap.second $t@97@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@97@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@94@01 _current_wait_level_161@95@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@97@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@98@01 $Ref)
; [exec]
; var i: Ref
(declare-const i@99@01 $Ref)
; [exec]
; var n_0: Ref
(declare-const n_0@100@01 $Ref)
; [exec]
; var _loop_measures_1: Seq[Measure$]
(declare-const _loop_measures_1@101@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_1: Bool
(declare-const _loop_check_before_1@102@01 Bool)
; [exec]
; var _loop_termination_flag_1: Bool
(declare-const _loop_termination_flag_1@103@01 Bool)
; [exec]
; var _loop_original_must_terminate_1: Perm
(declare-const _loop_original_must_terminate_1@104@01 $Perm)
; [exec]
; var _residue_172: Perm
(declare-const _residue_172@105@01 $Perm)
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@106@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@107@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; i := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i@108@01 $Ref)
(assert (= i@108@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(105)
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] _isDefined(105)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 105))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 105))
(assert (_isDefined $Snap.unit 105))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_0 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_0@110@01 $Ref)
(assert (= n_0@110@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3170158)
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 $Snap.unit))
; [eval] _isDefined(3170158)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3170158))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170158))
(assert (_isDefined $Snap.unit 3170158))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_1 := perm(MustTerminate(_cthread_161))
; [eval] perm(MustTerminate(_cthread_161))
(declare-const _loop_original_must_terminate_1@112@01 $Perm)
(assert (= _loop_original_must_terminate_1@112@01 $Perm.No))
; [exec]
; _loop_termination_flag_1 := true
; [exec]
; _loop_check_before_1 := true
(declare-const _loop_measures_1@113@01 Seq<Measure$>)
(declare-const i@114@01 $Ref)
(declare-const _loop_check_before_1@115@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: Level(_r_18) <= _residue_172)
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (= ($Snap.first ($Snap.second $t@116@01)) $Snap.unit))
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: Level(_r_18) <= _residue_172)
(assert (=
  ($Snap.second ($Snap.second $t@116@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@116@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@116@01))) $Snap.unit))
; [eval] _residue_161 <= _residue_172
(assert (<= _residue_161@94@01 _residue_172@105@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@116@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i), int())
; [eval] typeof(i)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i@114@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@114@01 105))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@114@01 105))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@114@01 105)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@114@01 105)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@114@01 105)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@114@01 105)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@114@01 105))))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_0@110@01 3170158))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_0@110@01 3170158))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
; [else-branch: 29 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 29 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105)))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i), int())
; [eval] typeof(i)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i@108@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i@108@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@108@01 105))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@108@01 105))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@108@01 105)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@108@01 105)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@108@01 105)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@108@01 105)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@108@01 105))))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_0@110@01 3170158))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_0@110@01 3170158))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_0@110@01 3170158)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@108@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
; [else-branch: 30 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@108@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 30 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@108@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105)))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))) 1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 4
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@108@01 105))) 1)
    0)))
; [eval] _loop_check_before_1 ==> _loop_termination_flag_1 || (!int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) || perm(MustTerminate(_cthread_161)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | True | live]
; [else-branch: 31 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 31 | True]
; [eval] _loop_termination_flag_1 || (!int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) || perm(MustTerminate(_cthread_161)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !_loop_check_before_1 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_1
(push) ; 4
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(push) ; 5
; [else-branch: 32 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (= ($Snap.first $t@116@01) $Snap.unit))
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (= ($Snap.first ($Snap.second $t@116@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@116@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@116@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@116@01))) $Snap.unit))
(assert (<= _residue_161@94@01 _residue_172@105@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@116@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i@114@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit i@114@01 105))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@114@01 105)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@114@01 105)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
; [else-branch: 33 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 33 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
; [exec]
; _loop_measures_1 := Seq(Measure$create(true, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0,
;   3170158)), int___unbox__(_checkDefined(i, 105))), 1)))
; [eval] Seq(Measure$create(true, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)))
; [eval] Measure$create(true, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105)))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1))))
  1))
(declare-const _loop_measures_1@117@01 Seq<Measure$>)
(assert (=
  _loop_measures_1@117@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105))) 1)))))
; [exec]
; i := __prim__int___box__(int___add__(int___unbox__(i), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i), 1))
; [eval] int___add__(int___unbox__(i), 1)
; [eval] int___unbox__(i)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i@114@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i@114@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i@114@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i@114@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i@114@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i@114@01) 1)))
(declare-const i@118@01 $Ref)
(assert (=
  i@118@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i@114@01) 1))))
; [exec]
; inhale _isDefined(105)
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 $Snap.unit))
; [eval] _isDefined(105)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end_1
; [exec]
; _loop_check_before_1 := false
; [exec]
; assert _loop_termination_flag_1 ==>
;   !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0,
;   3170158))) ||
;   Measure$check(_loop_measures_1, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0,
;   3170158)), int___unbox__(_checkDefined(i, 105))), 1))
; [eval] _loop_termination_flag_1 ==> !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) || Measure$check(_loop_measures_1, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | True | live]
; [else-branch: 34 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 34 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) || Measure$check(_loop_measures_1, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@118@01 105))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i@118@01 105))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@118@01 105)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@118@01 105)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@118@01 105)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@118@01 105)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@118@01 105))))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(push) ; 8
; [then-branch: 35 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | live]
; [else-branch: 35 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
(push) ; 9
; [then-branch: 35 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(pop) ; 9
(push) ; 9
; [else-branch: 35 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
; [eval] Measure$check(_loop_measures_1, _cthread_161, int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105)))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))))
(pop) ; 10
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))))
(push) ; 10
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))
(pop) ; 10
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))
(push) ; 10
(assert (Measure$check%precondition $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)))
(pop) ; 10
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i@118@01 105)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i@118@01 105)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i@118@01 105))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))))
(push) ; 6
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
  (Measure$check $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
  (Measure$check $Snap.unit _loop_measures_1@117@01 _cthread_161@92@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(i), int())
; [eval] typeof(i)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> i@118@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i@118@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
; [else-branch: 36 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 36 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_0, 3170158)), int___unbox__(_checkDefined(i, 105)))
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))))
(pop) ; 8
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))))
(push) ; 8
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))
(pop) ; 8
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))
(pop) ; 7
(push) ; 7
; [else-branch: 36 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@118@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(push) ; 6
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@118@01 105))) 1)
    0)))
; [eval] _loop_check_before_1 ==> _loop_termination_flag_1 || (!int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158))) || perm(MustTerminate(_cthread_161)) == none && ((forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 37 | False | dead]
; [else-branch: 37 | True | live]
(push) ; 7
; [else-branch: 37 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] !_loop_check_before_1 ==> (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | True | live]
; [else-branch: 38 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 38 | True]
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false) && ((forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false) && ((forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false) && (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
(push) ; 8
; [then-branch: 39 | False | live]
; [else-branch: 39 | True | live]
(push) ; 9
; [then-branch: 39 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 39 | True]
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
(push) ; 10
; [then-branch: 40 | False | live]
; [else-branch: 40 | True | live]
(push) ; 11
; [then-branch: 40 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 40 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
(push) ; 12
; [then-branch: 41 | False | live]
; [else-branch: 41 | True | live]
(push) ; 13
; [then-branch: 41 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 41 | True]
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
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
(pop) ; 5
(push) ; 5
; [else-branch: 33 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(pop) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___lt__(int___unbox__(_checkDefined(i, 105)), int___unbox__(_checkDefined(n_0, 3170158)))
; [eval] int___unbox__(_checkDefined(i, 105))
; [eval] _checkDefined(i, 105)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_0, 3170158))
; [eval] _checkDefined(n_0, 3170158)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))) | live]
; [else-branch: 42 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 42 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158)))))
; [exec]
; exhale perm(MustTerminate(_cthread_161)) > none ==>
;   acc(MustTerminate(_cthread_161), perm(MustTerminate(_cthread_161)) -
;   _loop_original_must_terminate_1)
; [eval] perm(MustTerminate(_cthread_161)) > none
; [eval] perm(MustTerminate(_cthread_161))
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | True | live]
; [else-branch: 43 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 43 | True]
; [eval] perm(MustTerminate(_cthread_161)) - _loop_original_must_terminate_1
; [eval] perm(MustTerminate(_cthread_161))
(push) ; 7
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_1@112@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_1@112@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_1@112@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_1@112@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_1@112@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_1@112@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_1@112@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_1
; [exec]
; label __end
; [eval] (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 42 | int___lt__(_, int___unbox__(_, _checkDefined(_, i@114@01, 105)), int___unbox__(_, _checkDefined(_, n_0@110@01, 3170158)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i@114@01 105)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_0@110@01 3170158))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f3 ----------
(declare-const _cthread_162@120@01 $Ref)
(declare-const _caller_measures_162@121@01 Seq<Measure$>)
(declare-const _residue_162@122@01 $Perm)
(declare-const _current_wait_level_162@123@01 $Perm)
(declare-const _cthread_162@124@01 $Ref)
(declare-const _caller_measures_162@125@01 Seq<Measure$>)
(declare-const _residue_162@126@01 $Perm)
(declare-const _current_wait_level_162@127@01 $Perm)
(push) ; 1
(declare-const $t@128@01 $Snap)
(assert (= $t@128@01 ($Snap.combine ($Snap.first $t@128@01) ($Snap.second $t@128@01))))
(assert (= ($Snap.first $t@128@01) $Snap.unit))
; [eval] _cthread_162 != null
(assert (not (= _cthread_162@124@01 $Ref.null)))
(assert (=
  ($Snap.second $t@128@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@128@01))
    ($Snap.second ($Snap.second $t@128@01)))))
(assert (= ($Snap.first ($Snap.second $t@128@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_162@124@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@128@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@128@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@128@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@128@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 ($Snap.combine ($Snap.first $t@129@01) ($Snap.second $t@129@01))))
(assert (= ($Snap.first $t@129@01) $Snap.unit))
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseBounded] :: Level(_r_25) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@129@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@129@01))
    ($Snap.second ($Snap.second $t@129@01)))))
(assert (= ($Snap.first ($Snap.second $t@129@01)) $Snap.unit))
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseUnbounded] :: Level(_r_25) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@129@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@129@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@129@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@129@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_162@126@01 _current_wait_level_162@127@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@129@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@130@01 $Ref)
; [exec]
; var i_0: Ref
(declare-const i_0@131@01 $Ref)
; [exec]
; var n_1: Ref
(declare-const n_1@132@01 $Ref)
; [exec]
; var _loop_measures_2: Seq[Measure$]
(declare-const _loop_measures_2@133@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_2: Bool
(declare-const _loop_check_before_2@134@01 Bool)
; [exec]
; var _loop_termination_flag_2: Bool
(declare-const _loop_termination_flag_2@135@01 Bool)
; [exec]
; var _loop_original_must_terminate_2: Perm
(declare-const _loop_original_must_terminate_2@136@01 $Perm)
; [exec]
; var _residue_173: Perm
(declare-const _residue_173@137@01 $Perm)
; [exec]
; var _cwl_162: Perm
(declare-const _cwl_162@138@01 $Perm)
; [exec]
; var _method_measures_162: Seq[Measure$]
(declare-const _method_measures_162@139@01 Seq<Measure$>)
; [exec]
; _method_measures_162 := Seq(Measure$create(true, _cthread_162, 5))
; [eval] Seq(Measure$create(true, _cthread_162, 5))
; [eval] Measure$create(true, _cthread_162, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_162@124@01 5)))
  1))
(declare-const _method_measures_162@140@01 Seq<Measure$>)
(assert (=
  _method_measures_162@140@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_162@124@01 5))))
; [exec]
; _err := null
; [exec]
; i_0 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_0@141@01 $Ref)
(assert (= i_0@141@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3170153)
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] _isDefined(3170153)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3170153))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170153))
(assert (_isDefined $Snap.unit 3170153))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_1 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_1@143@01 $Ref)
(assert (= n_1@143@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3235694)
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 $Snap.unit))
; [eval] _isDefined(3235694)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3235694))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3235694))
(assert (_isDefined $Snap.unit 3235694))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_2 := perm(MustTerminate(_cthread_162))
; [eval] perm(MustTerminate(_cthread_162))
(declare-const _loop_original_must_terminate_2@145@01 $Perm)
(assert (= _loop_original_must_terminate_2@145@01 $Perm.Write))
; [exec]
; _loop_termination_flag_2 := true
; [exec]
; _loop_check_before_2 := true
(declare-const _loop_measures_2@146@01 Seq<Measure$>)
(declare-const i_0@147@01 $Ref)
(declare-const _loop_check_before_2@148@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseBounded] :: Level(_r_23) <= _residue_173)
(assert (=
  ($Snap.second $t@149@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@149@01))
    ($Snap.second ($Snap.second $t@149@01)))))
(assert (= ($Snap.first ($Snap.second $t@149@01)) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseUnbounded] :: Level(_r_23) <= _residue_173)
(assert (=
  ($Snap.second ($Snap.second $t@149@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@149@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
; [eval] _residue_162 <= _residue_173
(assert (<= _residue_162@126@01 _residue_173@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@149@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_0), int())
; [eval] typeof(i_0)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_0@147@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@147@01 3170153))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@147@01 3170153))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@147@01 3170153)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@147@01 3170153)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@147@01 3170153)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_1@143@01 3235694))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_1@143@01 3235694))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
; [else-branch: 44 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 44 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153)))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 44 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_0), int())
; [eval] typeof(i_0)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_0@141@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_0@141@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@141@01 3170153))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@141@01 3170153))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@141@01 3170153)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@141@01 3170153)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@141@01 3170153)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_1@143@01 3235694))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_1@143@01 3235694))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_1@143@01 3235694)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@141@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
; [else-branch: 45 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@141@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 45 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@141@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153)))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))) 1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 4
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@141@01 3170153))) 1)
    0)))
; [eval] _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) || perm(MustTerminate(_cthread_162)) == none && ((forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | True | live]
; [else-branch: 46 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 46 | True]
; [eval] _loop_termination_flag_2 || (!int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) || perm(MustTerminate(_cthread_162)) == none && ((forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !_loop_check_before_2 ==> (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_2
(push) ; 4
; [then-branch: 47 | False | dead]
; [else-branch: 47 | True | live]
(push) ; 5
; [else-branch: 47 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
(assert (=
  ($Snap.second $t@149@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@149@01))
    ($Snap.second ($Snap.second $t@149@01)))))
(assert (= ($Snap.first ($Snap.second $t@149@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@149@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@149@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
(assert (<= _residue_162@126@01 _residue_173@137@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@149@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i_0@147@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit i_0@147@01 3170153))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@147@01 3170153)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
; [else-branch: 48 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 48 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
; [exec]
; _loop_measures_2 := Seq(Measure$create(true, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1,
;   3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)))
; [eval] Seq(Measure$create(true, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)))
; [eval] Measure$create(true, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153)))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1))))
  1))
(declare-const _loop_measures_2@150@01 Seq<Measure$>)
(assert (=
  _loop_measures_2@150@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153))) 1)))))
; [exec]
; i_0 := __prim__int___box__(int___add__(int___unbox__(i_0), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i_0), 1))
; [eval] int___add__(int___unbox__(i_0), 1)
; [eval] int___unbox__(i_0)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i_0@147@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i_0@147@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_0@147@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_0@147@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_0@147@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_0@147@01) 1)))
(declare-const i_0@151@01 $Ref)
(assert (=
  i_0@151@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_0@147@01) 1))))
; [exec]
; inhale _isDefined(3170153)
(declare-const $t@152@01 $Snap)
(assert (= $t@152@01 $Snap.unit))
; [eval] _isDefined(3170153)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end_2
; [exec]
; _loop_check_before_2 := false
; [exec]
; assert _loop_termination_flag_2 ==>
;   !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1,
;   3235694))) ||
;   Measure$check(_loop_measures_2, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1,
;   3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1))
; [eval] _loop_termination_flag_2 ==> !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) || Measure$check(_loop_measures_2, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1))
(set-option :timeout 0)
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | True | live]
; [else-branch: 49 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 49 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) || Measure$check(_loop_measures_2, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@151@01 3170153))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_0@151@01 3170153))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@151@01 3170153)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@151@01 3170153)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@151@01 3170153)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(push) ; 8
; [then-branch: 50 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | live]
; [else-branch: 50 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
(push) ; 9
; [then-branch: 50 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(pop) ; 9
(push) ; 9
; [else-branch: 50 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
; [eval] Measure$check(_loop_measures_2, _cthread_162, int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153)))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
(push) ; 10
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))))
(pop) ; 10
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))))
(push) ; 10
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))
(pop) ; 10
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))
(push) ; 10
(assert (Measure$check%precondition $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)))
(pop) ; 10
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_0@151@01 3170153)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_0@151@01 3170153)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))))
(push) ; 6
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
  (Measure$check $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
  (Measure$check $Snap.unit _loop_measures_2@150@01 _cthread_162@124@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(i_0), int())
; [eval] typeof(i_0)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> i_0@151@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_0@151@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 51 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
; [else-branch: 51 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 51 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_1, 3235694)), int___unbox__(_checkDefined(i_0, 3170153)))
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))))
(pop) ; 8
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))))
(push) ; 8
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))
(pop) ; 8
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))
(pop) ; 7
(push) ; 7
; [else-branch: 51 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@151@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(push) ; 6
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@151@01 3170153))) 1)
    0)))
; [eval] _loop_check_before_2 ==> _loop_termination_flag_2 || (!int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694))) || perm(MustTerminate(_cthread_162)) == none && ((forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 52 | False | dead]
; [else-branch: 52 | True | live]
(push) ; 7
; [else-branch: 52 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] !_loop_check_before_2 ==> (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_2
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | True | live]
; [else-branch: 53 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 53 | True]
; [eval] (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false) && ((forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false) && ((forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false) && (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false)
(push) ; 8
; [then-branch: 54 | False | live]
; [else-branch: 54 | True | live]
(push) ; 9
; [then-branch: 54 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 54 | True]
; [eval] (forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false)
(push) ; 10
; [then-branch: 55 | False | live]
; [else-branch: 55 | True | live]
(push) ; 11
; [then-branch: 55 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 55 | True]
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false)
(push) ; 12
; [then-branch: 56 | False | live]
; [else-branch: 56 | True | live]
(push) ; 13
; [then-branch: 56 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 56 | True]
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)
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
(pop) ; 5
(push) ; 5
; [else-branch: 48 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(pop) ; 5
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
  ($Snap.first ($Snap.second ($Snap.second $t@128@01)))))
; [eval] !int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_0, 3170153)), int___unbox__(_checkDefined(n_1, 3235694)))
; [eval] int___unbox__(_checkDefined(i_0, 3170153))
; [eval] _checkDefined(i_0, 3170153)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_1, 3235694))
; [eval] _checkDefined(n_1, 3235694)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))) | live]
; [else-branch: 57 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 57 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694)))))
; [exec]
; exhale perm(MustTerminate(_cthread_162)) > none ==>
;   acc(MustTerminate(_cthread_162), perm(MustTerminate(_cthread_162)) -
;   _loop_original_must_terminate_2)
; [eval] perm(MustTerminate(_cthread_162)) > none
; [eval] perm(MustTerminate(_cthread_162))
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | True | live]
; [else-branch: 58 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 58 | True]
; [eval] perm(MustTerminate(_cthread_162)) - _loop_original_must_terminate_2
; [eval] perm(MustTerminate(_cthread_162))
(push) ; 7
(assert (not (or
  (=
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)
    $Perm.No)
  (<
    $Perm.No
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)))))
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)))
    $Perm.No)
  (<
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_2@145@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_2
; [exec]
; label __end
; [eval] (forperm _r_26: Ref [MustInvokeBounded(_r_26)] :: false)
; [eval] (forperm _r_26: Ref [MustInvokeUnbounded(_r_26)] :: false)
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: false)
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 57 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_0@147@01, 3170153)), int___unbox__(_, _checkDefined(_, n_1@143@01, 3235694)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_0@147@01 3170153)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_1@143@01 3235694))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f4 ----------
(declare-const _cthread_163@153@01 $Ref)
(declare-const _caller_measures_163@154@01 Seq<Measure$>)
(declare-const _residue_163@155@01 $Perm)
(declare-const _current_wait_level_163@156@01 $Perm)
(declare-const _cthread_163@157@01 $Ref)
(declare-const _caller_measures_163@158@01 Seq<Measure$>)
(declare-const _residue_163@159@01 $Perm)
(declare-const _current_wait_level_163@160@01 $Perm)
(push) ; 1
(declare-const $t@161@01 $Snap)
(assert (= $t@161@01 ($Snap.combine ($Snap.first $t@161@01) ($Snap.second $t@161@01))))
(assert (= ($Snap.first $t@161@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@157@01 $Ref.null)))
(assert (=
  ($Snap.second $t@161@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@161@01))
    ($Snap.second ($Snap.second $t@161@01)))))
(assert (= ($Snap.first ($Snap.second $t@161@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@157@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@161@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@161@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@161@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@161@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 ($Snap.combine ($Snap.first $t@162@01) ($Snap.second $t@162@01))))
(assert (= ($Snap.first $t@162@01) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: Level(_r_30) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@162@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@162@01))
    ($Snap.second ($Snap.second $t@162@01)))))
(assert (= ($Snap.first ($Snap.second $t@162@01)) $Snap.unit))
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: Level(_r_30) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@162@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@162@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@162@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@162@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_163@159@01 _current_wait_level_163@160@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@162@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@163@01 $Ref)
; [exec]
; var i_1: Ref
(declare-const i_1@164@01 $Ref)
; [exec]
; var n_2: Ref
(declare-const n_2@165@01 $Ref)
; [exec]
; var _loop_measures_3: Seq[Measure$]
(declare-const _loop_measures_3@166@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_3: Bool
(declare-const _loop_check_before_3@167@01 Bool)
; [exec]
; var _loop_termination_flag_3: Bool
(declare-const _loop_termination_flag_3@168@01 Bool)
; [exec]
; var _loop_original_must_terminate_3: Perm
(declare-const _loop_original_must_terminate_3@169@01 $Perm)
; [exec]
; var _residue_174: Perm
(declare-const _residue_174@170@01 $Perm)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@171@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@172@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq(Measure$create(true, _cthread_163, 5))
; [eval] Seq(Measure$create(true, _cthread_163, 5))
; [eval] Measure$create(true, _cthread_163, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_163@157@01 5)))
  1))
(declare-const _method_measures_163@173@01 Seq<Measure$>)
(assert (=
  _method_measures_163@173@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_163@157@01 5))))
; [exec]
; _err := null
; [exec]
; i_1 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_1@174@01 $Ref)
(assert (= i_1@174@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3235689)
(declare-const $t@175@01 $Snap)
(assert (= $t@175@01 $Snap.unit))
; [eval] _isDefined(3235689)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3235689))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3235689))
(assert (_isDefined $Snap.unit 3235689))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_2 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_2@176@01 $Ref)
(assert (= n_2@176@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3301230)
(declare-const $t@177@01 $Snap)
(assert (= $t@177@01 $Snap.unit))
; [eval] _isDefined(3301230)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3301230))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3301230))
(assert (_isDefined $Snap.unit 3301230))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_3 := perm(MustTerminate(_cthread_163))
; [eval] perm(MustTerminate(_cthread_163))
(declare-const _loop_original_must_terminate_3@178@01 $Perm)
(assert (= _loop_original_must_terminate_3@178@01 $Perm.Write))
; [exec]
; _loop_termination_flag_3 := false
; [exec]
; _loop_check_before_3 := true
(declare-const _loop_measures_3@179@01 Seq<Measure$>)
(declare-const i_1@180@01 $Ref)
(declare-const _loop_check_before_3@181@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseBounded] :: Level(_r_28) <= _residue_174)
(assert (=
  ($Snap.second $t@182@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@182@01))
    ($Snap.second ($Snap.second $t@182@01)))))
(assert (= ($Snap.first ($Snap.second $t@182@01)) $Snap.unit))
; [eval] (forperm _r_28: Ref [_r_28.MustReleaseUnbounded] :: Level(_r_28) <= _residue_174)
(assert (=
  ($Snap.second ($Snap.second $t@182@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@182@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@182@01))) $Snap.unit))
; [eval] _residue_163 <= _residue_174
(assert (<= _residue_163@159@01 _residue_174@170@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@182@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@182@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@182@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_1), int())
; [eval] typeof(i_1)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_1@180@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@182@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_1), int())
; [eval] typeof(i_1)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_1@174@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_1@174@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | True | live]
; [else-branch: 59 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 59 | True]
; [eval] _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 60 | False | live]
; [else-branch: 60 | True | live]
(push) ; 7
; [then-branch: 60 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 60 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___unbox__(_checkDefined(i_1, 3235689))
; [eval] _checkDefined(i_1, 3235689)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_1@174@01 3235689))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_1@174@01 3235689))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_1@174@01 3235689)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_1@174@01 3235689)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_1@174@01 3235689)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689))))
; [eval] int___unbox__(_checkDefined(n_2, 3301230))
; [eval] _checkDefined(n_2, 3301230)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_2@176@01 3301230))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_2@176@01 3301230))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_2@176@01 3301230)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_2@176@01 3301230)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_2@176@01 3301230)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
(push) ; 8
; [then-branch: 61 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))) | live]
; [else-branch: 61 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))) | live]
(push) ; 9
; [then-branch: 61 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))
(pop) ; 9
(push) ; 9
; [else-branch: 61 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
; [eval] perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_1@174@01 3235689)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_1@174@01 3235689)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689))
  (_checkDefined%precondition $Snap.unit n_2@176@01 3301230)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_2@176@01 3301230)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_1@174@01 3235689)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_1@174@01 3235689)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689))
  (_checkDefined%precondition $Snap.unit n_2@176@01 3301230)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_2@176@01 3301230)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))))
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))))
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
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | True | live]
; [else-branch: 62 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 62 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 63 | False | live]
; [else-branch: 63 | True | live]
(push) ; 7
; [then-branch: 63 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 63 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___unbox__(_checkDefined(i_1, 3235689))
; [eval] _checkDefined(i_1, 3235689)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_2, 3301230))
; [eval] _checkDefined(n_2, 3301230)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 64 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))) | live]
; [else-branch: 64 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))) | live]
(push) ; 9
; [then-branch: 64 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 64 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))))
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
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 65 | True | live]
; [else-branch: 65 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 65 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 66 | False | live]
; [else-branch: 66 | True | live]
(push) ; 7
; [then-branch: 66 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 66 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___unbox__(_checkDefined(i_1, 3235689))
; [eval] _checkDefined(i_1, 3235689)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_2, 3301230))
; [eval] _checkDefined(n_2, 3301230)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 67 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))) | live]
; [else-branch: 67 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))) | live]
(push) ; 9
; [then-branch: 67 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 67 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))))
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
; [eval] _loop_check_before_3 ==> _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | True | live]
; [else-branch: 68 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 68 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_3 || (!int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230))) || perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | False | live]
; [else-branch: 69 | True | live]
(push) ; 7
; [then-branch: 69 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 69 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_1, 3235689)), int___unbox__(_checkDefined(n_2, 3301230)))
; [eval] int___unbox__(_checkDefined(i_1, 3235689))
; [eval] _checkDefined(i_1, 3235689)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_2, 3301230))
; [eval] _checkDefined(n_2, 3301230)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 70 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))) | live]
; [else-branch: 70 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))) | live]
(push) ; 9
; [then-branch: 70 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 70 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_1@174@01, 3235689)), int___unbox__(_, _checkDefined(_, n_2@176@01, 3301230)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_163)) == none && ((forperm _r_29: Ref [MustInvokeBounded(_r_29)] :: false) && ((forperm _r_29: Ref [MustInvokeUnbounded(_r_29)] :: false) && ((forperm _r_29: Ref [_r_29.MustReleaseBounded] :: false) && (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_1@174@01 3235689)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_2@176@01 3301230))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f5 ----------
(declare-const _cthread_164@183@01 $Ref)
(declare-const _caller_measures_164@184@01 Seq<Measure$>)
(declare-const _residue_164@185@01 $Perm)
(declare-const _current_wait_level_164@186@01 $Perm)
(declare-const _cthread_164@187@01 $Ref)
(declare-const _caller_measures_164@188@01 Seq<Measure$>)
(declare-const _residue_164@189@01 $Perm)
(declare-const _current_wait_level_164@190@01 $Perm)
(push) ; 1
(declare-const $t@191@01 $Snap)
(assert (= $t@191@01 ($Snap.combine ($Snap.first $t@191@01) ($Snap.second $t@191@01))))
(assert (= ($Snap.first $t@191@01) $Snap.unit))
; [eval] _cthread_164 != null
(assert (not (= _cthread_164@187@01 $Ref.null)))
(assert (=
  ($Snap.second $t@191@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@191@01))
    ($Snap.second ($Snap.second $t@191@01)))))
(assert (= ($Snap.first ($Snap.second $t@191@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_164), Thread_0())
; [eval] typeof(_cthread_164)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_164@187@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@191@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@191@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@191@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@191@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@192@01 $Snap)
(assert (= $t@192@01 ($Snap.combine ($Snap.first $t@192@01) ($Snap.second $t@192@01))))
(assert (= ($Snap.first $t@192@01) $Snap.unit))
; [eval] (forperm _r_37: Ref [_r_37.MustReleaseBounded] :: Level(_r_37) <= _current_wait_level_164)
(assert (=
  ($Snap.second $t@192@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@192@01))
    ($Snap.second ($Snap.second $t@192@01)))))
(assert (= ($Snap.first ($Snap.second $t@192@01)) $Snap.unit))
; [eval] (forperm _r_37: Ref [_r_37.MustReleaseUnbounded] :: Level(_r_37) <= _current_wait_level_164)
(assert (=
  ($Snap.second ($Snap.second $t@192@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@192@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@192@01))) $Snap.unit))
; [eval] _residue_164 <= _current_wait_level_164
(assert (<= _residue_164@189@01 _current_wait_level_164@190@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@192@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@193@01 $Ref)
; [exec]
; var i_2: Ref
(declare-const i_2@194@01 $Ref)
; [exec]
; var n_3: Ref
(declare-const n_3@195@01 $Ref)
; [exec]
; var j: Ref
(declare-const j@196@01 $Ref)
; [exec]
; var _loop_measures_4: Seq[Measure$]
(declare-const _loop_measures_4@197@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_4: Bool
(declare-const _loop_check_before_4@198@01 Bool)
; [exec]
; var _loop_termination_flag_4: Bool
(declare-const _loop_termination_flag_4@199@01 Bool)
; [exec]
; var _loop_original_must_terminate_4: Perm
(declare-const _loop_original_must_terminate_4@200@01 $Perm)
; [exec]
; var _residue_175: Perm
(declare-const _residue_175@201@01 $Perm)
; [exec]
; var _loop_measures_5: Seq[Measure$]
(declare-const _loop_measures_5@202@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_5: Bool
(declare-const _loop_check_before_5@203@01 Bool)
; [exec]
; var _loop_termination_flag_5: Bool
(declare-const _loop_termination_flag_5@204@01 Bool)
; [exec]
; var _loop_original_must_terminate_5: Perm
(declare-const _loop_original_must_terminate_5@205@01 $Perm)
; [exec]
; var _residue_176: Perm
(declare-const _residue_176@206@01 $Perm)
; [exec]
; var _cwl_164: Perm
(declare-const _cwl_164@207@01 $Perm)
; [exec]
; var _method_measures_164: Seq[Measure$]
(declare-const _method_measures_164@208@01 Seq<Measure$>)
; [exec]
; _method_measures_164 := Seq(Measure$create(true, _cthread_164, 5))
; [eval] Seq(Measure$create(true, _cthread_164, 5))
; [eval] Measure$create(true, _cthread_164, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_164@187@01 5)))
  1))
(declare-const _method_measures_164@209@01 Seq<Measure$>)
(assert (=
  _method_measures_164@209@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_164@187@01 5))))
; [exec]
; _err := null
; [exec]
; i_2 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_2@210@01 $Ref)
(assert (= i_2@210@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3301225)
(declare-const $t@211@01 $Snap)
(assert (= $t@211@01 $Snap.unit))
; [eval] _isDefined(3301225)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3301225))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3301225))
(assert (_isDefined $Snap.unit 3301225))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_3 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_3@212@01 $Ref)
(assert (= n_3@212@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3366766)
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 $Snap.unit))
; [eval] _isDefined(3366766)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3366766))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3366766))
(assert (_isDefined $Snap.unit 3366766))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_4 := perm(MustTerminate(_cthread_164))
; [eval] perm(MustTerminate(_cthread_164))
(declare-const _loop_original_must_terminate_4@214@01 $Perm)
(assert (= _loop_original_must_terminate_4@214@01 $Perm.Write))
; [exec]
; _loop_termination_flag_4 := true
; [exec]
; _loop_check_before_4 := true
(declare-const _loop_measures_4@215@01 Seq<Measure$>)
(declare-const i_2@216@01 $Ref)
(declare-const j@217@01 $Ref)
(declare-const _loop_original_must_terminate_5@218@01 $Perm)
(declare-const _loop_termination_flag_5@219@01 Bool)
(declare-const _loop_check_before_5@220@01 Bool)
(declare-const _loop_measures_5@221@01 Seq<Measure$>)
(declare-const _loop_check_before_4@222@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@223@01 $Snap)
(assert (= $t@223@01 ($Snap.combine ($Snap.first $t@223@01) ($Snap.second $t@223@01))))
(assert (= ($Snap.first $t@223@01) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseBounded] :: Level(_r_35) <= _residue_175)
(assert (=
  ($Snap.second $t@223@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@223@01))
    ($Snap.second ($Snap.second $t@223@01)))))
(assert (= ($Snap.first ($Snap.second $t@223@01)) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseUnbounded] :: Level(_r_35) <= _residue_175)
(assert (=
  ($Snap.second ($Snap.second $t@223@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@223@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@223@01))) $Snap.unit))
; [eval] _residue_164 <= _residue_175
(assert (<= _residue_164@189@01 _residue_175@201@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@223@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_2), int())
; [eval] typeof(i_2)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_2@216@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_2@216@01 3301225))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_2@216@01 3301225))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@216@01 3301225)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@216@01 3301225)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@216@01 3301225)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_3@212@01 3366766))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_3@212@01 3366766))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
; [else-branch: 71 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 71 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225)))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 71 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_2), int())
; [eval] typeof(i_2)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_2@210@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_2@210@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_2@210@01 3301225))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_2@210@01 3301225))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@210@01 3301225)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@210@01 3301225)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@210@01 3301225)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_3@212@01 3366766))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_3@212@01 3366766))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_3@212@01 3366766)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@210@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
; [else-branch: 72 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@210@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 72 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@210@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225)))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))) 1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 4
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@210@01 3301225))) 1)
    0)))
; [eval] _loop_check_before_4 ==> _loop_termination_flag_4 || (!int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_36: Ref [MustInvokeBounded(_r_36)] :: false) && ((forperm _r_36: Ref [MustInvokeUnbounded(_r_36)] :: false) && ((forperm _r_36: Ref [_r_36.MustReleaseBounded] :: false) && (forperm _r_36: Ref [_r_36.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | True | live]
; [else-branch: 73 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 73 | True]
; [eval] _loop_termination_flag_4 || (!int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_36: Ref [MustInvokeBounded(_r_36)] :: false) && ((forperm _r_36: Ref [MustInvokeUnbounded(_r_36)] :: false) && ((forperm _r_36: Ref [_r_36.MustReleaseBounded] :: false) && (forperm _r_36: Ref [_r_36.MustReleaseUnbounded] :: false)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !_loop_check_before_4 ==> (forperm _r_36: Ref [MustInvokeBounded(_r_36)] :: false) && ((forperm _r_36: Ref [MustInvokeUnbounded(_r_36)] :: false) && ((forperm _r_36: Ref [_r_36.MustReleaseBounded] :: false) && (forperm _r_36: Ref [_r_36.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_4
(push) ; 4
; [then-branch: 74 | False | dead]
; [else-branch: 74 | True | live]
(push) ; 5
; [else-branch: 74 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@223@01 ($Snap.combine ($Snap.first $t@223@01) ($Snap.second $t@223@01))))
(assert (= ($Snap.first $t@223@01) $Snap.unit))
(assert (=
  ($Snap.second $t@223@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@223@01))
    ($Snap.second ($Snap.second $t@223@01)))))
(assert (= ($Snap.first ($Snap.second $t@223@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@223@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@223@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@223@01))) $Snap.unit))
(assert (<= _residue_164@189@01 _residue_175@201@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@223@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i_2@216@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit i_2@216@01 3301225))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_2@216@01 3301225)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@223@01))))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i_2, 3301225)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
; [else-branch: 75 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 75 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_2@216@01, 3301225)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [exec]
; _loop_measures_4 := Seq(Measure$create(true, _cthread_164, int___add__(int___sub__(int___unbox__(_checkDefined(n_3,
;   3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1)))
; [eval] Seq(Measure$create(true, _cthread_164, int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1)))
; [eval] Measure$create(true, _cthread_164, int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_3, 3366766)), int___unbox__(_checkDefined(i_2, 3301225)))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_2, 3301225))
; [eval] _checkDefined(i_2, 3301225)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_164@187@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1))))
  1))
(declare-const _loop_measures_4@224@01 Seq<Measure$>)
(assert (=
  _loop_measures_4@224@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_164@187@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_2@216@01 3301225))) 1)))))
; [exec]
; i_2 := __prim__int___box__(int___add__(int___unbox__(i_2), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i_2), 1))
; [eval] int___add__(int___unbox__(i_2), 1)
; [eval] int___unbox__(i_2)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i_2@216@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i_2@216@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_2@216@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_2@216@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_2@216@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_2@216@01) 1)))
(declare-const i_2@225@01 $Ref)
(assert (=
  i_2@225@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_2@216@01) 1))))
; [exec]
; inhale _isDefined(3301225)
(declare-const $t@226@01 $Snap)
(assert (= $t@226@01 $Snap.unit))
; [eval] _isDefined(3301225)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; j := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(declare-const j@227@01 $Ref)
(assert (= j@227@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(106)
(declare-const $t@228@01 $Snap)
(assert (= $t@228@01 $Snap.unit))
; [eval] _isDefined(106)
(push) ; 6
(assert (_isDefined%precondition $Snap.unit 106))
(pop) ; 6
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 106))
(assert (_isDefined $Snap.unit 106))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_5 := perm(MustTerminate(_cthread_164))
; [eval] perm(MustTerminate(_cthread_164))
(declare-const _loop_original_must_terminate_5@229@01 $Perm)
(assert (= _loop_original_must_terminate_5@229@01 $Perm.Write))
; [exec]
; _loop_termination_flag_5 := false
; [exec]
; _loop_check_before_5 := true
(declare-const _loop_measures_5@230@01 Seq<Measure$>)
(declare-const j@231@01 $Ref)
(declare-const _loop_check_before_5@232@01 Bool)
(set-option :timeout 0)
(push) ; 6
; Loop head block: Check well-definedness of invariant
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 ($Snap.combine ($Snap.first $t@233@01) ($Snap.second $t@233@01))))
(assert (= ($Snap.first $t@233@01) $Snap.unit))
; [eval] (forperm _r_33: Ref [_r_33.MustReleaseBounded] :: Level(_r_33) <= _residue_176)
(assert (=
  ($Snap.second $t@233@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@233@01))
    ($Snap.second ($Snap.second $t@233@01)))))
(assert (= ($Snap.first ($Snap.second $t@233@01)) $Snap.unit))
; [eval] (forperm _r_33: Ref [_r_33.MustReleaseUnbounded] :: Level(_r_33) <= _residue_176)
(assert (=
  ($Snap.second ($Snap.second $t@233@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@233@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@233@01))) $Snap.unit))
; [eval] _residue_175 <= _residue_176
(assert (<= _residue_175@201@01 _residue_176@206@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@233@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(j), int())
; [eval] typeof(j)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> j@231@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
  $Snap.unit))
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; [eval] issubtype(typeof(j), int())
; [eval] typeof(j)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> j@227@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j@227@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_5 ==> _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | True | live]
; [else-branch: 76 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 76 | True]
; [eval] _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(push) ; 9
; [then-branch: 77 | False | live]
; [else-branch: 77 | True | live]
(push) ; 10
; [then-branch: 77 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 77 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(j, 106))
; [eval] _checkDefined(j, 106)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j@227@01 106))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j@227@01 106))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j@227@01 106)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j@227@01 106)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j@227@01 106)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j@227@01 106)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j@227@01 106))))
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(pop) ; 11
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
(push) ; 11
; [then-branch: 78 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
; [else-branch: 78 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
(push) ; 12
; [then-branch: 78 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
(pop) ; 12
(push) ; 12
; [else-branch: 78 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [eval] perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_164)) == none
; [eval] perm(MustTerminate(_cthread_164))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit j@227@01 106)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j@227@01 106)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j@227@01 106))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit j@227@01 106)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j@227@01 106)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j@227@01 106))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))))
(push) ; 7
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_check_before_5 ==> _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | True | live]
; [else-branch: 79 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 79 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 9
; [then-branch: 80 | False | live]
; [else-branch: 80 | True | live]
(push) ; 10
; [then-branch: 80 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 80 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(j, 106))
; [eval] _checkDefined(j, 106)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 81 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
; [else-branch: 81 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
(push) ; 12
; [then-branch: 81 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 81 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_164)) == none
; [eval] perm(MustTerminate(_cthread_164))
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
(set-option :timeout 0)
(push) ; 7
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_check_before_5 ==> _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | True | live]
; [else-branch: 82 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 82 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 9
; [then-branch: 83 | False | live]
; [else-branch: 83 | True | live]
(push) ; 10
; [then-branch: 83 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 83 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(j, 106))
; [eval] _checkDefined(j, 106)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 84 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
; [else-branch: 84 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
(push) ; 12
; [then-branch: 84 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 84 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_164)) == none
; [eval] perm(MustTerminate(_cthread_164))
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
(set-option :timeout 0)
(push) ; 7
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_check_before_5 ==> _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | True | live]
; [else-branch: 85 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 85 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_5 || (!int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766))) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 9
; [then-branch: 86 | False | live]
; [else-branch: 86 | True | live]
(push) ; 10
; [then-branch: 86 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 86 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___lt__(int___unbox__(_checkDefined(j, 106)), int___unbox__(_checkDefined(n_3, 3366766)))
; [eval] int___unbox__(_checkDefined(j, 106))
; [eval] _checkDefined(j, 106)
(set-option :timeout 0)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_3, 3366766))
; [eval] _checkDefined(n_3, 3366766)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(pop) ; 11
; Joined path conditions
(push) ; 11
; [then-branch: 87 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))) | live]
; [else-branch: 87 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))) | live]
(push) ; 12
; [then-branch: 87 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 87 | int___lt__(_, int___unbox__(_, _checkDefined(_, j@227@01, 106)), int___unbox__(_, _checkDefined(_, n_3@212@01, 3366766)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_164)) == none && ((forperm _r_34: Ref [MustInvokeBounded(_r_34)] :: false) && ((forperm _r_34: Ref [MustInvokeUnbounded(_r_34)] :: false) && ((forperm _r_34: Ref [_r_34.MustReleaseBounded] :: false) && (forperm _r_34: Ref [_r_34.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_164)) == none
; [eval] perm(MustTerminate(_cthread_164))
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
(set-option :timeout 0)
(push) ; 7
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j@227@01 106)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_3@212@01 3366766))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f6 ----------
(declare-const _cthread_165@234@01 $Ref)
(declare-const _caller_measures_165@235@01 Seq<Measure$>)
(declare-const _residue_165@236@01 $Perm)
(declare-const _current_wait_level_165@237@01 $Perm)
(declare-const _cthread_165@238@01 $Ref)
(declare-const _caller_measures_165@239@01 Seq<Measure$>)
(declare-const _residue_165@240@01 $Perm)
(declare-const _current_wait_level_165@241@01 $Perm)
(push) ; 1
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 ($Snap.combine ($Snap.first $t@242@01) ($Snap.second $t@242@01))))
(assert (= ($Snap.first $t@242@01) $Snap.unit))
; [eval] _cthread_165 != null
(assert (not (= _cthread_165@238@01 $Ref.null)))
(assert (=
  ($Snap.second $t@242@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@242@01))
    ($Snap.second ($Snap.second $t@242@01)))))
(assert (= ($Snap.first ($Snap.second $t@242@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_165@238@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@242@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@242@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@242@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@242@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@243@01 $Snap)
(assert (= $t@243@01 ($Snap.combine ($Snap.first $t@243@01) ($Snap.second $t@243@01))))
(assert (= ($Snap.first $t@243@01) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseBounded] :: Level(_r_44) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@243@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@243@01))
    ($Snap.second ($Snap.second $t@243@01)))))
(assert (= ($Snap.first ($Snap.second $t@243@01)) $Snap.unit))
; [eval] (forperm _r_44: Ref [_r_44.MustReleaseUnbounded] :: Level(_r_44) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@243@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@243@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@243@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@243@01))) $Snap.unit))
; [eval] _residue_165 <= _current_wait_level_165
(assert (<= _residue_165@240@01 _current_wait_level_165@241@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@243@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@244@01 $Ref)
; [exec]
; var i_3: Ref
(declare-const i_3@245@01 $Ref)
; [exec]
; var n_4: Ref
(declare-const n_4@246@01 $Ref)
; [exec]
; var j_0: Ref
(declare-const j_0@247@01 $Ref)
; [exec]
; var _loop_measures_6: Seq[Measure$]
(declare-const _loop_measures_6@248@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_6: Bool
(declare-const _loop_check_before_6@249@01 Bool)
; [exec]
; var _loop_termination_flag_6: Bool
(declare-const _loop_termination_flag_6@250@01 Bool)
; [exec]
; var _loop_original_must_terminate_6: Perm
(declare-const _loop_original_must_terminate_6@251@01 $Perm)
; [exec]
; var _residue_177: Perm
(declare-const _residue_177@252@01 $Perm)
; [exec]
; var _loop_measures_7: Seq[Measure$]
(declare-const _loop_measures_7@253@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_7: Bool
(declare-const _loop_check_before_7@254@01 Bool)
; [exec]
; var _loop_termination_flag_7: Bool
(declare-const _loop_termination_flag_7@255@01 Bool)
; [exec]
; var _loop_original_must_terminate_7: Perm
(declare-const _loop_original_must_terminate_7@256@01 $Perm)
; [exec]
; var _residue_178: Perm
(declare-const _residue_178@257@01 $Perm)
; [exec]
; var _cwl_165: Perm
(declare-const _cwl_165@258@01 $Perm)
; [exec]
; var _method_measures_165: Seq[Measure$]
(declare-const _method_measures_165@259@01 Seq<Measure$>)
; [exec]
; _method_measures_165 := Seq(Measure$create(true, _cthread_165, 5))
; [eval] Seq(Measure$create(true, _cthread_165, 5))
; [eval] Measure$create(true, _cthread_165, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 5)))
  1))
(declare-const _method_measures_165@260@01 Seq<Measure$>)
(assert (=
  _method_measures_165@260@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 5))))
; [exec]
; _err := null
; [exec]
; i_3 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_3@261@01 $Ref)
(assert (= i_3@261@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3366761)
(declare-const $t@262@01 $Snap)
(assert (= $t@262@01 $Snap.unit))
; [eval] _isDefined(3366761)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3366761))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3366761))
(assert (_isDefined $Snap.unit 3366761))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_4 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_4@263@01 $Ref)
(assert (= n_4@263@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3432302)
(declare-const $t@264@01 $Snap)
(assert (= $t@264@01 $Snap.unit))
; [eval] _isDefined(3432302)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3432302))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3432302))
(assert (_isDefined $Snap.unit 3432302))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_6 := perm(MustTerminate(_cthread_165))
; [eval] perm(MustTerminate(_cthread_165))
(declare-const _loop_original_must_terminate_6@265@01 $Perm)
(assert (= _loop_original_must_terminate_6@265@01 $Perm.Write))
; [exec]
; _loop_termination_flag_6 := true
; [exec]
; _loop_check_before_6 := true
(declare-const _loop_measures_6@266@01 Seq<Measure$>)
(declare-const i_3@267@01 $Ref)
(declare-const j_0@268@01 $Ref)
(declare-const _loop_original_must_terminate_7@269@01 $Perm)
(declare-const _loop_termination_flag_7@270@01 Bool)
(declare-const _loop_check_before_7@271@01 Bool)
(declare-const _loop_measures_7@272@01 Seq<Measure$>)
(declare-const _loop_check_before_6@273@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@274@01 $Snap)
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
; [eval] (forperm _r_42: Ref [_r_42.MustReleaseBounded] :: Level(_r_42) <= _residue_177)
(assert (=
  ($Snap.second $t@274@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@274@01))
    ($Snap.second ($Snap.second $t@274@01)))))
(assert (= ($Snap.first ($Snap.second $t@274@01)) $Snap.unit))
; [eval] (forperm _r_42: Ref [_r_42.MustReleaseUnbounded] :: Level(_r_42) <= _residue_177)
(assert (=
  ($Snap.second ($Snap.second $t@274@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@274@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@274@01))) $Snap.unit))
; [eval] _residue_165 <= _residue_177
(assert (<= _residue_165@240@01 _residue_177@252@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@274@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_3), int())
; [eval] typeof(i_3)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_3@267@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@267@01 3366761))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@267@01 3366761))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@267@01 3366761)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@267@01 3366761)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@267@01 3366761)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_4@263@01 3432302))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_4@263@01 3432302))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 88 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 88 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_3), int())
; [eval] typeof(i_3)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_3@261@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_3@261@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@261@01 3366761))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@261@01 3366761))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@261@01 3366761)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@261@01 3366761)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@261@01 3366761)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 4
; [eval] _isDefined(id)
(push) ; 5
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_4@263@01 3432302))
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_4@263@01 3432302))
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
(pop) ; 4
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_4@263@01 3432302)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 4
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 4
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@261@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 89 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@261@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 89 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@261@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))) 1))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 4
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@261@01 3366761))) 1)
    0)))
; [eval] _loop_check_before_6 ==> _loop_termination_flag_6 || (!int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 90 | True | live]
; [else-branch: 90 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 90 | True]
; [eval] _loop_termination_flag_6 || (!int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] !_loop_check_before_6 ==> (forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_6
(push) ; 4
; [then-branch: 91 | False | dead]
; [else-branch: 91 | True | live]
(push) ; 5
; [else-branch: 91 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@274@01 ($Snap.combine ($Snap.first $t@274@01) ($Snap.second $t@274@01))))
(assert (= ($Snap.first $t@274@01) $Snap.unit))
(assert (=
  ($Snap.second $t@274@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@274@01))
    ($Snap.second ($Snap.second $t@274@01)))))
(assert (= ($Snap.first ($Snap.second $t@274@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@274@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@274@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@274@01))) $Snap.unit))
(assert (<= _residue_165@240@01 _residue_177@252@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@274@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i_3@267@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit i_3@267@01 3366761))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@267@01 3366761)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01))))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 92 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 92 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [exec]
; _loop_measures_6 := Seq(Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4,
;   3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)))
; [eval] Seq(Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)))
; [eval] Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1))))
  1))
(declare-const _loop_measures_6@275@01 Seq<Measure$>)
(assert (=
  _loop_measures_6@275@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761))) 1)))))
; [exec]
; i_3 := __prim__int___box__(int___add__(int___unbox__(i_3), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i_3), 1))
; [eval] int___add__(int___unbox__(i_3), 1)
; [eval] int___unbox__(i_3)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i_3@267@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i_3@267@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_3@267@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_3@267@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_3@267@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_3@267@01) 1)))
(declare-const i_3@276@01 $Ref)
(assert (=
  i_3@276@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_3@267@01) 1))))
; [exec]
; inhale _isDefined(3366761)
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] _isDefined(3366761)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; j_0 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(declare-const j_0@278@01 $Ref)
(assert (= j_0@278@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3170154)
(declare-const $t@279@01 $Snap)
(assert (= $t@279@01 $Snap.unit))
; [eval] _isDefined(3170154)
(push) ; 6
(assert (_isDefined%precondition $Snap.unit 3170154))
(pop) ; 6
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3170154))
(assert (_isDefined $Snap.unit 3170154))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_7 := perm(MustTerminate(_cthread_165))
; [eval] perm(MustTerminate(_cthread_165))
(declare-const _loop_original_must_terminate_7@280@01 $Perm)
(assert (= _loop_original_must_terminate_7@280@01 $Perm.Write))
; [exec]
; _loop_termination_flag_7 := true
; [exec]
; _loop_check_before_7 := true
(declare-const _loop_measures_7@281@01 Seq<Measure$>)
(declare-const j_0@282@01 $Ref)
(declare-const _loop_check_before_7@283@01 Bool)
(set-option :timeout 0)
(push) ; 6
; Loop head block: Check well-definedness of invariant
(declare-const $t@284@01 $Snap)
(assert (= $t@284@01 ($Snap.combine ($Snap.first $t@284@01) ($Snap.second $t@284@01))))
(assert (= ($Snap.first $t@284@01) $Snap.unit))
; [eval] (forperm _r_40: Ref [_r_40.MustReleaseBounded] :: Level(_r_40) <= _residue_178)
(assert (=
  ($Snap.second $t@284@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@284@01))
    ($Snap.second ($Snap.second $t@284@01)))))
(assert (= ($Snap.first ($Snap.second $t@284@01)) $Snap.unit))
; [eval] (forperm _r_40: Ref [_r_40.MustReleaseUnbounded] :: Level(_r_40) <= _residue_178)
(assert (=
  ($Snap.second ($Snap.second $t@284@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@284@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@284@01))) $Snap.unit))
; [eval] _residue_177 <= _residue_178
(assert (<= _residue_177@252@01 _residue_178@257@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@284@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(j_0), int())
; [eval] typeof(j_0)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> j_0@282@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@282@01 3170154))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@282@01 3170154))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@282@01 3170154)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@282@01 3170154)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@282@01 3170154)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 93 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 93 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 93 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))
(pop) ; 8
(push) ; 8
; [else-branch: 93 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
  $Snap.unit))
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; [eval] issubtype(typeof(j_0), int())
; [eval] typeof(j_0)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> j_0@278@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_0@278@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@278@01 3170154))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@278@01 3170154))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@278@01 3170154)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@278@01 3170154)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@278@01 3170154)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@278@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 94 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@278@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 94 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@278@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))) 1))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 7
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@278@01 3170154))) 1)
    0)))
; [eval] _loop_check_before_7 ==> _loop_termination_flag_7 || (!int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 95 | True | live]
; [else-branch: 95 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 95 | True]
; [eval] _loop_termination_flag_7 || (!int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [eval] !_loop_check_before_7 ==> (forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_7
(push) ; 7
; [then-branch: 96 | False | dead]
; [else-branch: 96 | True | live]
(push) ; 8
; [else-branch: 96 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
(assert (= $t@284@01 ($Snap.combine ($Snap.first $t@284@01) ($Snap.second $t@284@01))))
(assert (= ($Snap.first $t@284@01) $Snap.unit))
(assert (=
  ($Snap.second $t@284@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@284@01))
    ($Snap.second ($Snap.second $t@284@01)))))
(assert (= ($Snap.first ($Snap.second $t@284@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@284@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@284@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@284@01))) $Snap.unit))
(assert (<= _residue_177@252@01 _residue_178@257@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@284@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> j_0@282@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit j_0@282@01 3170154))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@282@01 3170154)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01))))))))
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
(push) ; 8
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [eval] !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 97 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 97 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [exec]
; _loop_measures_7 := Seq(Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4,
;   3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)))
; [eval] Seq(Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)))
; [eval] Measure$create(true, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1))))
  1))
(declare-const _loop_measures_7@285@01 Seq<Measure$>)
(assert (=
  _loop_measures_7@285@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154))) 1)))))
; [exec]
; j_0 := __prim__int___box__(int___add__(int___unbox__(j_0), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(j_0), 1))
; [eval] int___add__(int___unbox__(j_0), 1)
; [eval] int___unbox__(j_0)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit j_0@282@01))
(pop) ; 9
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit j_0@282@01))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_0@282@01) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_0@282@01) 1))
(push) ; 9
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_0@282@01) 1)))
(pop) ; 9
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_0@282@01) 1)))
(declare-const j_0@286@01 $Ref)
(assert (=
  j_0@286@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_0@282@01) 1))))
; [exec]
; inhale _isDefined(3170154)
(declare-const $t@287@01 $Snap)
(assert (= $t@287@01 $Snap.unit))
; [eval] _isDefined(3170154)
(push) ; 9
(pop) ; 9
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end_7
; [exec]
; _loop_check_before_7 := false
; [exec]
; assert _loop_termination_flag_7 ==>
;   !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4,
;   3432302))) ||
;   Measure$check(_loop_measures_7, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4,
;   3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1))
; [eval] _loop_termination_flag_7 ==> !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) || Measure$check(_loop_measures_7, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1))
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | True | live]
; [else-branch: 98 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 98 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) || Measure$check(_loop_measures_7, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@286@01 3170154))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_0@286@01 3170154))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@286@01 3170154)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@286@01 3170154)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@286@01 3170154)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 11
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 11
; [then-branch: 99 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
; [else-branch: 99 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
(push) ; 12
; [then-branch: 99 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 12
(push) ; 12
; [else-branch: 99 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] Measure$check(_loop_measures_7, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))))
(pop) ; 13
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))
(push) ; 13
(assert (Measure$check%precondition $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)))
(pop) ; 13
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit j_0@286@01 3170154)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_0@286@01 3170154)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))))
(push) ; 9
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (Measure$check $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (Measure$check $Snap.unit _loop_measures_7@285@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(j_0), int())
; [eval] typeof(j_0)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> j_0@286@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_0@286@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 100 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 100 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(j_0, 3170154)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))))
(push) ; 11
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))
(pop) ; 11
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))
(pop) ; 10
(push) ; 10
; [else-branch: 100 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@286@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(push) ; 9
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@286@01 3170154))) 1)
    0)))
; [eval] _loop_check_before_7 ==> _loop_termination_flag_7 || (!int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))))
(push) ; 9
; [then-branch: 101 | False | dead]
; [else-branch: 101 | True | live]
(push) ; 10
; [else-branch: 101 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [eval] !_loop_check_before_7 ==> (forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_7
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | True | live]
; [else-branch: 102 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 102 | True]
; [eval] (forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false) && ((forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false) && ((forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false) && (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_41: Ref [MustInvokeBounded(_r_41)] :: false)
(push) ; 11
; [then-branch: 103 | False | live]
; [else-branch: 103 | True | live]
(push) ; 12
; [then-branch: 103 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 103 | True]
; [eval] (forperm _r_41: Ref [MustInvokeUnbounded(_r_41)] :: false)
(push) ; 13
; [then-branch: 104 | False | live]
; [else-branch: 104 | True | live]
(push) ; 14
; [then-branch: 104 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 104 | True]
; [eval] (forperm _r_41: Ref [_r_41.MustReleaseBounded] :: false)
(push) ; 15
; [then-branch: 105 | False | live]
; [else-branch: 105 | True | live]
(push) ; 16
; [then-branch: 105 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 105 | True]
; [eval] (forperm _r_41: Ref [_r_41.MustReleaseUnbounded] :: false)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 97 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 8
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@284@01)))))))
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))))
; [eval] !int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_0, 3170154)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(j_0, 3170154))
; [eval] _checkDefined(j_0, 3170154)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
; [else-branch: 106 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 106 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
; [exec]
; exhale perm(MustTerminate(_cthread_165)) > none ==>
;   acc(MustTerminate(_cthread_165), perm(MustTerminate(_cthread_165)) -
;   _loop_original_must_terminate_7)
; [eval] perm(MustTerminate(_cthread_165)) > none
; [eval] perm(MustTerminate(_cthread_165))
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 107 | True | live]
; [else-branch: 107 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 107 | True]
; [eval] perm(MustTerminate(_cthread_165)) - _loop_original_must_terminate_7
; [eval] perm(MustTerminate(_cthread_165))
(push) ; 10
(assert (not (or
  (=
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)
    $Perm.No)
  (<
    $Perm.No
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)))))
(set-option :timeout 0)
(push) ; 10
(assert (not (or
  (=
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)))
    $Perm.No)
  (<
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_7@280@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_7
; [exec]
; label loop_end_6
; [exec]
; _loop_check_before_6 := false
; [exec]
; assert _loop_termination_flag_6 ==>
;   !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4,
;   3432302))) ||
;   Measure$check(_loop_measures_6, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4,
;   3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1))
; [eval] _loop_termination_flag_6 ==> !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) || Measure$check(_loop_measures_6, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | True | live]
; [else-branch: 108 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 108 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) || Measure$check(_loop_measures_6, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 12
; [eval] _isDefined(id)
(push) ; 13
(pop) ; 13
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@276@01 3366761))
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_3@276@01 3366761))
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 13
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@276@01 3366761)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@276@01 3366761)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)))
(pop) ; 12
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@276@01 3366761)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 12
; [eval] _isDefined(id)
(push) ; 13
(pop) ; 13
; Joined path conditions
(pop) ; 12
; Joined path conditions
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 12
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(push) ; 12
; [then-branch: 109 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
; [else-branch: 109 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
(push) ; 13
; [then-branch: 109 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 13
(push) ; 13
; [else-branch: 109 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] Measure$check(_loop_measures_6, _cthread_165, int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 14
; [eval] _isDefined(id)
(push) ; 15
(pop) ; 15
; Joined path conditions
(pop) ; 14
; Joined path conditions
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 14
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 14
; [eval] _isDefined(id)
(push) ; 15
(pop) ; 15
; Joined path conditions
(pop) ; 14
; Joined path conditions
(push) ; 14
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 14
; Joined path conditions
(push) ; 14
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))))
(pop) ; 14
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))))
(push) ; 14
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))
(pop) ; 14
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))
(push) ; 14
(assert (Measure$check%precondition $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)))
(pop) ; 14
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_3@276@01 3366761)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_3@276@01 3366761)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))))
(push) ; 10
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (Measure$check $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (Measure$check $Snap.unit _loop_measures_6@275@01 _cthread_165@238@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(i_3), int())
; [eval] typeof(i_3)
; [eval] int()
(push) ; 10
(assert (not (issubtype<Bool> (typeof<PyType> i_3@276@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_3@276@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 10
; [eval] _isDefined(id)
(push) ; 11
(pop) ; 11
; Joined path conditions
(pop) ; 10
; Joined path conditions
(push) ; 10
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 10
; Joined path conditions
(push) ; 10
(pop) ; 10
; Joined path conditions
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
; [else-branch: 110 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 110 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_4, 3432302)), int___unbox__(_checkDefined(i_3, 3366761)))
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 12
; [eval] _isDefined(id)
(push) ; 13
(pop) ; 13
; Joined path conditions
(pop) ; 12
; Joined path conditions
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 12
; Joined path conditions
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 12
; [eval] _isDefined(id)
(push) ; 13
(pop) ; 13
; Joined path conditions
(pop) ; 12
; Joined path conditions
(push) ; 12
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 12
; Joined path conditions
(push) ; 12
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))))
(pop) ; 12
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))))
(push) ; 12
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))
(pop) ; 12
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))
(pop) ; 11
(push) ; 11
; [else-branch: 110 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@276@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(push) ; 10
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@276@01 3366761))) 1)
    0)))
; [eval] _loop_check_before_6 ==> _loop_termination_flag_6 || (!int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302))) || perm(MustTerminate(_cthread_165)) == none && ((forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))))
(push) ; 10
; [then-branch: 111 | False | dead]
; [else-branch: 111 | True | live]
(push) ; 11
; [else-branch: 111 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [eval] !_loop_check_before_6 ==> (forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_6
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | True | live]
; [else-branch: 112 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 112 | True]
; [eval] (forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false) && ((forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false) && ((forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false) && (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_43: Ref [MustInvokeBounded(_r_43)] :: false)
(push) ; 12
; [then-branch: 113 | False | live]
; [else-branch: 113 | True | live]
(push) ; 13
; [then-branch: 113 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 113 | True]
; [eval] (forperm _r_43: Ref [MustInvokeUnbounded(_r_43)] :: false)
(push) ; 14
; [then-branch: 114 | False | live]
; [else-branch: 114 | True | live]
(push) ; 15
; [then-branch: 114 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 114 | True]
; [eval] (forperm _r_43: Ref [_r_43.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 115 | False | live]
; [else-branch: 115 | True | live]
(push) ; 17
; [then-branch: 115 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 115 | True]
; [eval] (forperm _r_43: Ref [_r_43.MustReleaseUnbounded] :: false)
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
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 106 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_0@282@01, 3170154)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_0@282@01 3170154)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 92 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(pop) ; 5
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@274@01)))))))
  ($Snap.first ($Snap.second ($Snap.second $t@242@01)))))
; [eval] !int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_3, 3366761)), int___unbox__(_checkDefined(n_4, 3432302)))
; [eval] int___unbox__(_checkDefined(i_3, 3366761))
; [eval] _checkDefined(i_3, 3366761)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_4, 3432302))
; [eval] _checkDefined(n_4, 3432302)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))) | live]
; [else-branch: 116 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 116 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302)))))
; [exec]
; exhale perm(MustTerminate(_cthread_165)) > none ==>
;   acc(MustTerminate(_cthread_165), perm(MustTerminate(_cthread_165)) -
;   _loop_original_must_terminate_6)
; [eval] perm(MustTerminate(_cthread_165)) > none
; [eval] perm(MustTerminate(_cthread_165))
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | True | live]
; [else-branch: 117 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 117 | True]
; [eval] perm(MustTerminate(_cthread_165)) - _loop_original_must_terminate_6
; [eval] perm(MustTerminate(_cthread_165))
(push) ; 7
(assert (not (or
  (=
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)
    $Perm.No)
  (<
    $Perm.No
    (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<=
  $Perm.No
  (-
    (/ (to_real 2) (to_real 1))
    ($Perm.min
      (/ (to_real 2) (to_real 1))
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)))))
(set-option :timeout 0)
(push) ; 7
(assert (not (or
  (=
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)))
    $Perm.No)
  (<
    (-
      (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)
      ($Perm.min
        (/ (to_real 2) (to_real 1))
        (- (/ (to_real 2) (to_real 1)) _loop_original_must_terminate_6@265@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_6
; [exec]
; label __end
; [eval] (forperm _r_45: Ref [MustInvokeBounded(_r_45)] :: false)
; [eval] (forperm _r_45: Ref [MustInvokeUnbounded(_r_45)] :: false)
; [eval] (forperm _r_45: Ref [_r_45.MustReleaseBounded] :: false)
; [eval] (forperm _r_45: Ref [_r_45.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 116 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_3@267@01, 3366761)), int___unbox__(_, _checkDefined(_, n_4@263@01, 3432302)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_3@267@01 3366761)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_4@263@01 3432302))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f7 ----------
(declare-const _cthread_166@288@01 $Ref)
(declare-const _caller_measures_166@289@01 Seq<Measure$>)
(declare-const _residue_166@290@01 $Perm)
(declare-const _current_wait_level_166@291@01 $Perm)
(declare-const _cthread_166@292@01 $Ref)
(declare-const _caller_measures_166@293@01 Seq<Measure$>)
(declare-const _residue_166@294@01 $Perm)
(declare-const _current_wait_level_166@295@01 $Perm)
(push) ; 1
(declare-const $t@296@01 $Snap)
(assert (= $t@296@01 ($Snap.combine ($Snap.first $t@296@01) ($Snap.second $t@296@01))))
(assert (= ($Snap.first $t@296@01) $Snap.unit))
; [eval] _cthread_166 != null
(assert (not (= _cthread_166@292@01 $Ref.null)))
(assert (=
  ($Snap.second $t@296@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@296@01))
    ($Snap.second ($Snap.second $t@296@01)))))
(assert (= ($Snap.first ($Snap.second $t@296@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_166), Thread_0())
; [eval] typeof(_cthread_166)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_166@292@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@296@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@296@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@296@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@296@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@297@01 $Snap)
(assert (= $t@297@01 ($Snap.combine ($Snap.first $t@297@01) ($Snap.second $t@297@01))))
(assert (= ($Snap.first $t@297@01) $Snap.unit))
; [eval] (forperm _r_51: Ref [_r_51.MustReleaseBounded] :: Level(_r_51) <= _current_wait_level_166)
(assert (=
  ($Snap.second $t@297@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@297@01))
    ($Snap.second ($Snap.second $t@297@01)))))
(assert (= ($Snap.first ($Snap.second $t@297@01)) $Snap.unit))
; [eval] (forperm _r_51: Ref [_r_51.MustReleaseUnbounded] :: Level(_r_51) <= _current_wait_level_166)
(assert (=
  ($Snap.second ($Snap.second $t@297@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@297@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@297@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@297@01))) $Snap.unit))
; [eval] _residue_166 <= _current_wait_level_166
(assert (<= _residue_166@294@01 _current_wait_level_166@295@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@297@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@298@01 $Ref)
; [exec]
; var i_4: Ref
(declare-const i_4@299@01 $Ref)
; [exec]
; var n_5: Ref
(declare-const n_5@300@01 $Ref)
; [exec]
; var j_1: Ref
(declare-const j_1@301@01 $Ref)
; [exec]
; var _loop_measures_8: Seq[Measure$]
(declare-const _loop_measures_8@302@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_8: Bool
(declare-const _loop_check_before_8@303@01 Bool)
; [exec]
; var _loop_termination_flag_8: Bool
(declare-const _loop_termination_flag_8@304@01 Bool)
; [exec]
; var _loop_original_must_terminate_8: Perm
(declare-const _loop_original_must_terminate_8@305@01 $Perm)
; [exec]
; var _residue_179: Perm
(declare-const _residue_179@306@01 $Perm)
; [exec]
; var _loop_measures_9: Seq[Measure$]
(declare-const _loop_measures_9@307@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_9: Bool
(declare-const _loop_check_before_9@308@01 Bool)
; [exec]
; var _loop_termination_flag_9: Bool
(declare-const _loop_termination_flag_9@309@01 Bool)
; [exec]
; var _loop_original_must_terminate_9: Perm
(declare-const _loop_original_must_terminate_9@310@01 $Perm)
; [exec]
; var _residue_180: Perm
(declare-const _residue_180@311@01 $Perm)
; [exec]
; var _cwl_166: Perm
(declare-const _cwl_166@312@01 $Perm)
; [exec]
; var _method_measures_166: Seq[Measure$]
(declare-const _method_measures_166@313@01 Seq<Measure$>)
; [exec]
; _method_measures_166 := Seq(Measure$create(true, _cthread_166, 5))
; [eval] Seq(Measure$create(true, _cthread_166, 5))
; [eval] Measure$create(true, _cthread_166, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_166@292@01 5)))
  1))
(declare-const _method_measures_166@314@01 Seq<Measure$>)
(assert (=
  _method_measures_166@314@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_166@292@01 5))))
; [exec]
; _err := null
; [exec]
; i_4 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_4@315@01 $Ref)
(assert (= i_4@315@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3432297)
(declare-const $t@316@01 $Snap)
(assert (= $t@316@01 $Snap.unit))
; [eval] _isDefined(3432297)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3432297))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3432297))
(assert (_isDefined $Snap.unit 3432297))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_5 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_5@317@01 $Ref)
(assert (= n_5@317@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3497838)
(declare-const $t@318@01 $Snap)
(assert (= $t@318@01 $Snap.unit))
; [eval] _isDefined(3497838)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3497838))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3497838))
(assert (_isDefined $Snap.unit 3497838))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_8 := perm(MustTerminate(_cthread_166))
; [eval] perm(MustTerminate(_cthread_166))
(declare-const _loop_original_must_terminate_8@319@01 $Perm)
(assert (= _loop_original_must_terminate_8@319@01 $Perm.Write))
; [exec]
; _loop_termination_flag_8 := false
; [exec]
; _loop_check_before_8 := true
(declare-const _loop_measures_8@320@01 Seq<Measure$>)
(declare-const i_4@321@01 $Ref)
(declare-const _cwl_166@322@01 $Perm)
(declare-const j_1@323@01 $Ref)
(declare-const _loop_original_must_terminate_9@324@01 $Perm)
(declare-const _loop_termination_flag_9@325@01 Bool)
(declare-const _loop_check_before_9@326@01 Bool)
(declare-const _loop_measures_9@327@01 Seq<Measure$>)
(declare-const _loop_check_before_8@328@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@329@01 $Snap)
(assert (= $t@329@01 ($Snap.combine ($Snap.first $t@329@01) ($Snap.second $t@329@01))))
(assert (= ($Snap.first $t@329@01) $Snap.unit))
; [eval] (forperm _r_49: Ref [_r_49.MustReleaseBounded] :: Level(_r_49) <= _residue_179)
(assert (=
  ($Snap.second $t@329@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@329@01))
    ($Snap.second ($Snap.second $t@329@01)))))
(assert (= ($Snap.first ($Snap.second $t@329@01)) $Snap.unit))
; [eval] (forperm _r_49: Ref [_r_49.MustReleaseUnbounded] :: Level(_r_49) <= _residue_179)
(assert (=
  ($Snap.second ($Snap.second $t@329@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@329@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@329@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@329@01))) $Snap.unit))
; [eval] _residue_166 <= _residue_179
(assert (<= _residue_166@294@01 _residue_179@306@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@329@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@329@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@329@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_4), int())
; [eval] typeof(i_4)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_4@321@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@329@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_4), int())
; [eval] typeof(i_4)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_4@315@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_4@315@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_8 ==> _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | True | live]
; [else-branch: 118 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 118 | True]
; [eval] _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 119 | False | live]
; [else-branch: 119 | True | live]
(push) ; 7
; [then-branch: 119 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 119 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___unbox__(_checkDefined(i_4, 3432297))
; [eval] _checkDefined(i_4, 3432297)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_4@315@01 3432297))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_4@315@01 3432297))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_4@315@01 3432297)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_4@315@01 3432297)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_4@315@01 3432297)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297))))
; [eval] int___unbox__(_checkDefined(n_5, 3497838))
; [eval] _checkDefined(n_5, 3497838)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_5@317@01 3497838))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_5@317@01 3497838))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_5@317@01 3497838)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_5@317@01 3497838)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_5@317@01 3497838)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
(push) ; 8
; [then-branch: 120 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))) | live]
; [else-branch: 120 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))) | live]
(push) ; 9
; [then-branch: 120 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))
(pop) ; 9
(push) ; 9
; [else-branch: 120 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
; [eval] perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_166)) == none
; [eval] perm(MustTerminate(_cthread_166))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_4@315@01 3432297)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_4@315@01 3432297)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297))
  (_checkDefined%precondition $Snap.unit n_5@317@01 3497838)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_5@317@01 3497838)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_4@315@01 3432297)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_4@315@01 3432297)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297))
  (_checkDefined%precondition $Snap.unit n_5@317@01 3497838)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_5@317@01 3497838)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))))
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))))
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
; [eval] _loop_check_before_8 ==> _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | True | live]
; [else-branch: 121 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 121 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 122 | False | live]
; [else-branch: 122 | True | live]
(push) ; 7
; [then-branch: 122 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 122 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___unbox__(_checkDefined(i_4, 3432297))
; [eval] _checkDefined(i_4, 3432297)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_5, 3497838))
; [eval] _checkDefined(n_5, 3497838)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 123 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))) | live]
; [else-branch: 123 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))) | live]
(push) ; 9
; [then-branch: 123 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 123 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_166)) == none
; [eval] perm(MustTerminate(_cthread_166))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))))
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
; [eval] _loop_check_before_8 ==> _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 124 | True | live]
; [else-branch: 124 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 124 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 125 | False | live]
; [else-branch: 125 | True | live]
(push) ; 7
; [then-branch: 125 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 125 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___unbox__(_checkDefined(i_4, 3432297))
; [eval] _checkDefined(i_4, 3432297)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_5, 3497838))
; [eval] _checkDefined(n_5, 3497838)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 126 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))) | live]
; [else-branch: 126 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))) | live]
(push) ; 9
; [then-branch: 126 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 126 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_166)) == none
; [eval] perm(MustTerminate(_cthread_166))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))))
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
; [eval] _loop_check_before_8 ==> _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | True | live]
; [else-branch: 127 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 127 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_8 || (!int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838))) || perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 128 | False | live]
; [else-branch: 128 | True | live]
(push) ; 7
; [then-branch: 128 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 128 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_4, 3432297)), int___unbox__(_checkDefined(n_5, 3497838)))
; [eval] int___unbox__(_checkDefined(i_4, 3432297))
; [eval] _checkDefined(i_4, 3432297)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_5, 3497838))
; [eval] _checkDefined(n_5, 3497838)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 129 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))) | live]
; [else-branch: 129 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))) | live]
(push) ; 9
; [then-branch: 129 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 129 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_4@315@01, 3432297)), int___unbox__(_, _checkDefined(_, n_5@317@01, 3497838)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_166)) == none && ((forperm _r_50: Ref [MustInvokeBounded(_r_50)] :: false) && ((forperm _r_50: Ref [MustInvokeUnbounded(_r_50)] :: false) && ((forperm _r_50: Ref [_r_50.MustReleaseBounded] :: false) && (forperm _r_50: Ref [_r_50.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_166)) == none
; [eval] perm(MustTerminate(_cthread_166))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_4@315@01 3432297)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_5@317@01 3497838))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f8 ----------
(declare-const _cthread_167@330@01 $Ref)
(declare-const _caller_measures_167@331@01 Seq<Measure$>)
(declare-const _residue_167@332@01 $Perm)
(declare-const _current_wait_level_167@333@01 $Perm)
(declare-const _cthread_167@334@01 $Ref)
(declare-const _caller_measures_167@335@01 Seq<Measure$>)
(declare-const _residue_167@336@01 $Perm)
(declare-const _current_wait_level_167@337@01 $Perm)
(push) ; 1
(declare-const $t@338@01 $Snap)
(assert (= $t@338@01 ($Snap.combine ($Snap.first $t@338@01) ($Snap.second $t@338@01))))
(assert (= ($Snap.first $t@338@01) $Snap.unit))
; [eval] _cthread_167 != null
(assert (not (= _cthread_167@334@01 $Ref.null)))
(assert (=
  ($Snap.second $t@338@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@338@01))
    ($Snap.second ($Snap.second $t@338@01)))))
(assert (= ($Snap.first ($Snap.second $t@338@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_167), Thread_0())
; [eval] typeof(_cthread_167)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_167@334@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@338@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@338@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@338@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@338@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@339@01 $Snap)
(assert (= $t@339@01 ($Snap.combine ($Snap.first $t@339@01) ($Snap.second $t@339@01))))
(assert (= ($Snap.first $t@339@01) $Snap.unit))
; [eval] (forperm _r_58: Ref [_r_58.MustReleaseBounded] :: Level(_r_58) <= _current_wait_level_167)
(assert (=
  ($Snap.second $t@339@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@339@01))
    ($Snap.second ($Snap.second $t@339@01)))))
(assert (= ($Snap.first ($Snap.second $t@339@01)) $Snap.unit))
; [eval] (forperm _r_58: Ref [_r_58.MustReleaseUnbounded] :: Level(_r_58) <= _current_wait_level_167)
(assert (=
  ($Snap.second ($Snap.second $t@339@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@339@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@339@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@339@01))) $Snap.unit))
; [eval] _residue_167 <= _current_wait_level_167
(assert (<= _residue_167@336@01 _current_wait_level_167@337@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@339@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@340@01 $Ref)
; [exec]
; var i_5: Ref
(declare-const i_5@341@01 $Ref)
; [exec]
; var n_6: Ref
(declare-const n_6@342@01 $Ref)
; [exec]
; var j_2: Ref
(declare-const j_2@343@01 $Ref)
; [exec]
; var _loop_measures_10: Seq[Measure$]
(declare-const _loop_measures_10@344@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_10: Bool
(declare-const _loop_check_before_10@345@01 Bool)
; [exec]
; var _loop_termination_flag_10: Bool
(declare-const _loop_termination_flag_10@346@01 Bool)
; [exec]
; var _loop_original_must_terminate_10: Perm
(declare-const _loop_original_must_terminate_10@347@01 $Perm)
; [exec]
; var _residue_181: Perm
(declare-const _residue_181@348@01 $Perm)
; [exec]
; var _loop_measures_11: Seq[Measure$]
(declare-const _loop_measures_11@349@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_11: Bool
(declare-const _loop_check_before_11@350@01 Bool)
; [exec]
; var _loop_termination_flag_11: Bool
(declare-const _loop_termination_flag_11@351@01 Bool)
; [exec]
; var _loop_original_must_terminate_11: Perm
(declare-const _loop_original_must_terminate_11@352@01 $Perm)
; [exec]
; var _residue_182: Perm
(declare-const _residue_182@353@01 $Perm)
; [exec]
; var _cwl_167: Perm
(declare-const _cwl_167@354@01 $Perm)
; [exec]
; var _method_measures_167: Seq[Measure$]
(declare-const _method_measures_167@355@01 Seq<Measure$>)
; [exec]
; _method_measures_167 := Seq(Measure$create(true, _cthread_167, 5))
; [eval] Seq(Measure$create(true, _cthread_167, 5))
; [eval] Measure$create(true, _cthread_167, 5)
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_167@334@01 5)))
  1))
(declare-const _method_measures_167@356@01 Seq<Measure$>)
(assert (=
  _method_measures_167@356@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_167@334@01 5))))
; [exec]
; _err := null
; [exec]
; i_5 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_5@357@01 $Ref)
(assert (= i_5@357@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3497833)
(declare-const $t@358@01 $Snap)
(assert (= $t@358@01 $Snap.unit))
; [eval] _isDefined(3497833)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3497833))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3497833))
(assert (_isDefined $Snap.unit 3497833))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_6 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_6@359@01 $Ref)
(assert (= n_6@359@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3563374)
(declare-const $t@360@01 $Snap)
(assert (= $t@360@01 $Snap.unit))
; [eval] _isDefined(3563374)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3563374))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3563374))
(assert (_isDefined $Snap.unit 3563374))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_10 := perm(MustTerminate(_cthread_167))
; [eval] perm(MustTerminate(_cthread_167))
(declare-const _loop_original_must_terminate_10@361@01 $Perm)
(assert (= _loop_original_must_terminate_10@361@01 $Perm.Write))
; [exec]
; _loop_termination_flag_10 := false
; [exec]
; _loop_check_before_10 := true
(declare-const _loop_measures_10@362@01 Seq<Measure$>)
(declare-const i_5@363@01 $Ref)
(declare-const j_2@364@01 $Ref)
(declare-const _loop_original_must_terminate_11@365@01 $Perm)
(declare-const _loop_termination_flag_11@366@01 Bool)
(declare-const _loop_check_before_11@367@01 Bool)
(declare-const _loop_measures_11@368@01 Seq<Measure$>)
(declare-const _loop_check_before_10@369@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@370@01 $Snap)
(assert (= $t@370@01 ($Snap.combine ($Snap.first $t@370@01) ($Snap.second $t@370@01))))
(assert (= ($Snap.first $t@370@01) $Snap.unit))
; [eval] (forperm _r_56: Ref [_r_56.MustReleaseBounded] :: Level(_r_56) <= _residue_181)
(assert (=
  ($Snap.second $t@370@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@370@01))
    ($Snap.second ($Snap.second $t@370@01)))))
(assert (= ($Snap.first ($Snap.second $t@370@01)) $Snap.unit))
; [eval] (forperm _r_56: Ref [_r_56.MustReleaseUnbounded] :: Level(_r_56) <= _residue_181)
(assert (=
  ($Snap.second ($Snap.second $t@370@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@370@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@370@01))) $Snap.unit))
; [eval] _residue_167 <= _residue_181
(assert (<= _residue_167@336@01 _residue_181@348@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@370@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_5), int())
; [eval] typeof(i_5)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_5@363@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@370@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_5), int())
; [eval] typeof(i_5)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_5@357@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_5@357@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_10 ==> _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 130 | True | live]
; [else-branch: 130 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 130 | True]
; [eval] _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 131 | False | live]
; [else-branch: 131 | True | live]
(push) ; 7
; [then-branch: 131 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 131 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___unbox__(_checkDefined(i_5, 3497833))
; [eval] _checkDefined(i_5, 3497833)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_5@357@01 3497833))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_5@357@01 3497833))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_5@357@01 3497833)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_5@357@01 3497833)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_5@357@01 3497833)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833))))
; [eval] int___unbox__(_checkDefined(n_6, 3563374))
; [eval] _checkDefined(n_6, 3563374)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_6@359@01 3563374))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_6@359@01 3563374))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_6@359@01 3563374)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_6@359@01 3563374)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_6@359@01 3563374)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
(push) ; 8
; [then-branch: 132 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))) | live]
; [else-branch: 132 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))) | live]
(push) ; 9
; [then-branch: 132 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))
(pop) ; 9
(push) ; 9
; [else-branch: 132 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
; [eval] perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_167)) == none
; [eval] perm(MustTerminate(_cthread_167))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_5@357@01 3497833)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_5@357@01 3497833)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833))
  (_checkDefined%precondition $Snap.unit n_6@359@01 3563374)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_6@359@01 3563374)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_5@357@01 3497833)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_5@357@01 3497833)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833))
  (_checkDefined%precondition $Snap.unit n_6@359@01 3563374)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_6@359@01 3563374)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))))
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))))
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
; [eval] _loop_check_before_10 ==> _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 133 | True | live]
; [else-branch: 133 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 133 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 134 | False | live]
; [else-branch: 134 | True | live]
(push) ; 7
; [then-branch: 134 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 134 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___unbox__(_checkDefined(i_5, 3497833))
; [eval] _checkDefined(i_5, 3497833)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_6, 3563374))
; [eval] _checkDefined(n_6, 3563374)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 135 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))) | live]
; [else-branch: 135 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))) | live]
(push) ; 9
; [then-branch: 135 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 135 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_167)) == none
; [eval] perm(MustTerminate(_cthread_167))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))))
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
; [eval] _loop_check_before_10 ==> _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | True | live]
; [else-branch: 136 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 136 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 137 | False | live]
; [else-branch: 137 | True | live]
(push) ; 7
; [then-branch: 137 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 137 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___unbox__(_checkDefined(i_5, 3497833))
; [eval] _checkDefined(i_5, 3497833)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_6, 3563374))
; [eval] _checkDefined(n_6, 3563374)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 138 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))) | live]
; [else-branch: 138 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))) | live]
(push) ; 9
; [then-branch: 138 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 138 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_167)) == none
; [eval] perm(MustTerminate(_cthread_167))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))))
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
; [eval] _loop_check_before_10 ==> _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 139 | True | live]
; [else-branch: 139 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 139 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] _loop_termination_flag_10 || (!int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374))) || perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false)))))
(set-option :timeout 0)
(push) ; 6
; [then-branch: 140 | False | live]
; [else-branch: 140 | True | live]
(push) ; 7
; [then-branch: 140 | False]
(assert false)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 140 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] !int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_5, 3497833)), int___unbox__(_checkDefined(n_6, 3563374)))
; [eval] int___unbox__(_checkDefined(i_5, 3497833))
; [eval] _checkDefined(i_5, 3497833)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_6, 3563374))
; [eval] _checkDefined(n_6, 3563374)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
; [then-branch: 141 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))) | live]
; [else-branch: 141 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))) | live]
(push) ; 9
; [then-branch: 141 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 141 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_5@357@01, 3497833)), int___unbox__(_, _checkDefined(_, n_6@359@01, 3563374)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] perm(MustTerminate(_cthread_167)) == none && ((forperm _r_57: Ref [MustInvokeBounded(_r_57)] :: false) && ((forperm _r_57: Ref [MustInvokeUnbounded(_r_57)] :: false) && ((forperm _r_57: Ref [_r_57.MustReleaseBounded] :: false) && (forperm _r_57: Ref [_r_57.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_167)) == none
; [eval] perm(MustTerminate(_cthread_167))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(set-option :timeout 0)
(push) ; 4
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_5@357@01 3497833)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_6@359@01 3563374))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f9 ----------
(declare-const _cthread_168@371@01 $Ref)
(declare-const _caller_measures_168@372@01 Seq<Measure$>)
(declare-const _residue_168@373@01 $Perm)
(declare-const _current_wait_level_168@374@01 $Perm)
(declare-const _cthread_168@375@01 $Ref)
(declare-const _caller_measures_168@376@01 Seq<Measure$>)
(declare-const _residue_168@377@01 $Perm)
(declare-const _current_wait_level_168@378@01 $Perm)
(push) ; 1
(declare-const $t@379@01 $Snap)
(assert (= $t@379@01 ($Snap.combine ($Snap.first $t@379@01) ($Snap.second $t@379@01))))
(assert (= ($Snap.first $t@379@01) $Snap.unit))
; [eval] _cthread_168 != null
(assert (not (= _cthread_168@375@01 $Ref.null)))
(assert (=
  ($Snap.second $t@379@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@379@01))
    ($Snap.second ($Snap.second $t@379@01)))))
(assert (= ($Snap.first ($Snap.second $t@379@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_168), Thread_0())
; [eval] typeof(_cthread_168)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_168@375@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@379@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@380@01 $Snap)
(assert (= $t@380@01 ($Snap.combine ($Snap.first $t@380@01) ($Snap.second $t@380@01))))
(assert (= ($Snap.first $t@380@01) $Snap.unit))
; [eval] (forperm _r_65: Ref [_r_65.MustReleaseBounded] :: Level(_r_65) <= _current_wait_level_168)
(assert (=
  ($Snap.second $t@380@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@380@01))
    ($Snap.second ($Snap.second $t@380@01)))))
(assert (= ($Snap.first ($Snap.second $t@380@01)) $Snap.unit))
; [eval] (forperm _r_65: Ref [_r_65.MustReleaseUnbounded] :: Level(_r_65) <= _current_wait_level_168)
(assert (=
  ($Snap.second ($Snap.second $t@380@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@380@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@380@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@380@01))) $Snap.unit))
; [eval] _residue_168 <= _current_wait_level_168
(assert (<= _residue_168@377@01 _current_wait_level_168@378@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@380@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@381@01 $Ref)
; [exec]
; var i_6: Ref
(declare-const i_6@382@01 $Ref)
; [exec]
; var n_7: Ref
(declare-const n_7@383@01 $Ref)
; [exec]
; var j_3: Ref
(declare-const j_3@384@01 $Ref)
; [exec]
; var _loop_measures_12: Seq[Measure$]
(declare-const _loop_measures_12@385@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_12: Bool
(declare-const _loop_check_before_12@386@01 Bool)
; [exec]
; var _loop_termination_flag_12: Bool
(declare-const _loop_termination_flag_12@387@01 Bool)
; [exec]
; var _loop_original_must_terminate_12: Perm
(declare-const _loop_original_must_terminate_12@388@01 $Perm)
; [exec]
; var _residue_183: Perm
(declare-const _residue_183@389@01 $Perm)
; [exec]
; var _loop_measures_13: Seq[Measure$]
(declare-const _loop_measures_13@390@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_13: Bool
(declare-const _loop_check_before_13@391@01 Bool)
; [exec]
; var _loop_termination_flag_13: Bool
(declare-const _loop_termination_flag_13@392@01 Bool)
; [exec]
; var _loop_original_must_terminate_13: Perm
(declare-const _loop_original_must_terminate_13@393@01 $Perm)
; [exec]
; var _residue_184: Perm
(declare-const _residue_184@394@01 $Perm)
; [exec]
; var _cwl_168: Perm
(declare-const _cwl_168@395@01 $Perm)
; [exec]
; var _method_measures_168: Seq[Measure$]
(declare-const _method_measures_168@396@01 Seq<Measure$>)
; [exec]
; _method_measures_168 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; i_6 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_6@397@01 $Ref)
(assert (= i_6@397@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3563369)
(declare-const $t@398@01 $Snap)
(assert (= $t@398@01 $Snap.unit))
; [eval] _isDefined(3563369)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3563369))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3563369))
(assert (_isDefined $Snap.unit 3563369))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_7 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_7@399@01 $Ref)
(assert (= n_7@399@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3628910)
(declare-const $t@400@01 $Snap)
(assert (= $t@400@01 $Snap.unit))
; [eval] _isDefined(3628910)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3628910))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3628910))
(assert (_isDefined $Snap.unit 3628910))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_12 := perm(MustTerminate(_cthread_168))
; [eval] perm(MustTerminate(_cthread_168))
(declare-const _loop_original_must_terminate_12@401@01 $Perm)
(assert (= _loop_original_must_terminate_12@401@01 $Perm.No))
; [exec]
; _loop_termination_flag_12 := false
; [exec]
; _loop_check_before_12 := true
(declare-const _loop_measures_12@402@01 Seq<Measure$>)
(declare-const i_6@403@01 $Ref)
(declare-const _cwl_168@404@01 $Perm)
(declare-const j_3@405@01 $Ref)
(declare-const _loop_original_must_terminate_13@406@01 $Perm)
(declare-const _loop_termination_flag_13@407@01 Bool)
(declare-const _loop_check_before_13@408@01 Bool)
(declare-const _loop_measures_13@409@01 Seq<Measure$>)
(declare-const _loop_check_before_12@410@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@411@01 $Snap)
(assert (= $t@411@01 ($Snap.combine ($Snap.first $t@411@01) ($Snap.second $t@411@01))))
(assert (= ($Snap.first $t@411@01) $Snap.unit))
; [eval] (forperm _r_63: Ref [_r_63.MustReleaseBounded] :: Level(_r_63) <= _residue_183)
(assert (=
  ($Snap.second $t@411@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@411@01))
    ($Snap.second ($Snap.second $t@411@01)))))
(assert (= ($Snap.first ($Snap.second $t@411@01)) $Snap.unit))
; [eval] (forperm _r_63: Ref [_r_63.MustReleaseUnbounded] :: Level(_r_63) <= _residue_183)
(assert (=
  ($Snap.second ($Snap.second $t@411@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@411@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@411@01))) $Snap.unit))
; [eval] _residue_168 <= _residue_183
(assert (<= _residue_168@377@01 _residue_183@389@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@411@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_6), int())
; [eval] typeof(i_6)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_6@403@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_6), int())
; [eval] typeof(i_6)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_6@397@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_6@397@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_12 ==> _loop_termination_flag_12 || (!int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | True | live]
; [else-branch: 142 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 142 | True]
; [eval] _loop_termination_flag_12 || (!int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 143 | False | live]
; [else-branch: 143 | True | live]
(push) ; 7
; [then-branch: 143 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 143 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(i_6, 3563369))
; [eval] _checkDefined(i_6, 3563369)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@397@01 3563369))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@397@01 3563369))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@397@01 3563369)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@397@01 3563369)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@397@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_7@399@01 3628910))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_7@399@01 3628910))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_7@399@01 3628910)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_7@399@01 3628910)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_7@399@01 3628910)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 8
; [then-branch: 144 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@397@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
; [else-branch: 144 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@397@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
(push) ; 9
; [then-branch: 144 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@397@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 9
(push) ; 9
; [else-branch: 144 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@397@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [eval] perm(MustTerminate(_cthread_168)) == none && ((forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_168)) == none
; [eval] perm(MustTerminate(_cthread_168))
(push) ; 10
; [then-branch: 145 | False | live]
; [else-branch: 145 | True | live]
(push) ; 11
; [then-branch: 145 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 145 | True]
; [eval] (forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false)
(push) ; 12
; [then-branch: 146 | False | live]
; [else-branch: 146 | True | live]
(push) ; 13
; [then-branch: 146 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 146 | True]
; [eval] (forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false)
(push) ; 14
; [then-branch: 147 | False | live]
; [else-branch: 147 | True | live]
(push) ; 15
; [then-branch: 147 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 147 | True]
; [eval] (forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 148 | False | live]
; [else-branch: 148 | True | live]
(push) ; 17
; [then-branch: 148 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 148 | True]
; [eval] (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)
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
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_6@397@01 3563369)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@397@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369))
  (_checkDefined%precondition $Snap.unit n_7@399@01 3628910)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_7@399@01 3628910)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_6@397@01 3563369)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@397@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369))
  (_checkDefined%precondition $Snap.unit n_7@399@01 3628910)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_7@399@01 3628910)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@397@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))))
; [eval] !_loop_check_before_12 ==> (forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_12
(push) ; 4
; [then-branch: 149 | False | dead]
; [else-branch: 149 | True | live]
(push) ; 5
; [else-branch: 149 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@411@01 ($Snap.combine ($Snap.first $t@411@01) ($Snap.second $t@411@01))))
(assert (= ($Snap.first $t@411@01) $Snap.unit))
(assert (=
  ($Snap.second $t@411@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@411@01))
    ($Snap.second ($Snap.second $t@411@01)))))
(assert (= ($Snap.first ($Snap.second $t@411@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@411@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@411@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@411@01))) $Snap.unit))
(assert (<= _residue_168@377@01 _residue_183@389@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@411@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i_6@403@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@411@01))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(i_6, 3563369))
; [eval] _checkDefined(i_6, 3563369)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 6
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(i_6, 3563369))
; [eval] _checkDefined(i_6, 3563369)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 6
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(i_6, 3563369))
; [eval] _checkDefined(i_6, 3563369)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_6@403@01 3563369))
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_6@403@01 3563369)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 5
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
; [else-branch: 150 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 150 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [exec]
; _loop_measures_12 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; i_6 := __prim__int___box__(int___add__(int___unbox__(i_6), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i_6), 1))
; [eval] int___add__(int___unbox__(i_6), 1)
; [eval] int___unbox__(i_6)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i_6@403@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i_6@403@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_6@403@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_6@403@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_6@403@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_6@403@01) 1)))
(declare-const i_6@412@01 $Ref)
(assert (=
  i_6@412@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_6@403@01) 1))))
; [exec]
; inhale _isDefined(3563369)
(declare-const $t@413@01 $Snap)
(assert (= $t@413@01 $Snap.unit))
; [eval] _isDefined(3563369)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_168 := x_0(_cthread_168, _method_measures_168, _residue_183)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@414@01 $Perm)
(declare-const $t@415@01 $Snap)
(assert (= $t@415@01 ($Snap.combine ($Snap.first $t@415@01) ($Snap.second $t@415@01))))
(assert (= ($Snap.first $t@415@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@415@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@415@01))
    ($Snap.second ($Snap.second $t@415@01)))))
(assert (= ($Snap.first ($Snap.second $t@415@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@415@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@415@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@415@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@415@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_183@389@01 _current_wait_level_156@414@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@415@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_168 := y(_cthread_168, _method_measures_168, _residue_183)
; [eval] _cthread_157 != null
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1) || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1)
(set-option :timeout 0)
(push) ; 6
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1))
(pop) ; 6
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1))
(push) ; 6
; [then-branch: 151 | Measure$check(_, Nil, _cthread_168@375@01, 1) | live]
; [else-branch: 151 | !(Measure$check(_, Nil, _cthread_168@375@01, 1)) | live]
(push) ; 7
; [then-branch: 151 | Measure$check(_, Nil, _cthread_168@375@01, 1)]
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1))
(pop) ; 7
(push) ; 7
; [else-branch: 151 | !(Measure$check(_, Nil, _cthread_168@375@01, 1))]
(assert (not
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1)))
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(push) ; 8
; [then-branch: 152 | False | live]
; [else-branch: 152 | True | live]
(push) ; 9
; [then-branch: 152 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 152 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
(push) ; 10
; [then-branch: 153 | False | live]
; [else-branch: 153 | True | live]
(push) ; 11
; [then-branch: 153 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 153 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
(push) ; 12
; [then-branch: 154 | False | live]
; [else-branch: 154 | True | live]
(push) ; 13
; [then-branch: 154 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 154 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
(push) ; 14
; [then-branch: 155 | False | live]
; [else-branch: 155 | True | live]
(push) ; 15
; [then-branch: 155 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 155 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
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
; Joined path conditions
(assert (or
  (not
    (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1))
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 1)))
(declare-const _current_wait_level_157@416@01 $Perm)
(declare-const $t@417@01 $Snap)
(assert (= $t@417@01 ($Snap.combine ($Snap.first $t@417@01) ($Snap.second $t@417@01))))
(assert (= ($Snap.first $t@417@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@417@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@417@01))
    ($Snap.second ($Snap.second $t@417@01)))))
(assert (= ($Snap.first ($Snap.second $t@417@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@417@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@417@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@417@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@417@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_183@389@01 _current_wait_level_157@416@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@417@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_168 := z(_cthread_168, _method_measures_168, _residue_183)
; [eval] _cthread_158 != null
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_158, _cthread_158, 5) || perm(MustTerminate(_cthread_158)) == none && ((forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false) && ((forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false) && ((forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false) && (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_158, _cthread_158, 5)
(set-option :timeout 0)
(push) ; 6
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5))
(pop) ; 6
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5))
(push) ; 6
; [then-branch: 156 | Measure$check(_, Nil, _cthread_168@375@01, 5) | live]
; [else-branch: 156 | !(Measure$check(_, Nil, _cthread_168@375@01, 5)) | live]
(push) ; 7
; [then-branch: 156 | Measure$check(_, Nil, _cthread_168@375@01, 5)]
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5))
(pop) ; 7
(push) ; 7
; [else-branch: 156 | !(Measure$check(_, Nil, _cthread_168@375@01, 5))]
(assert (not
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5)))
; [eval] perm(MustTerminate(_cthread_158)) == none && ((forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false) && ((forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false) && ((forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false) && (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_158)) == none
; [eval] perm(MustTerminate(_cthread_158))
(push) ; 8
; [then-branch: 157 | False | live]
; [else-branch: 157 | True | live]
(push) ; 9
; [then-branch: 157 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 157 | True]
; [eval] (forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false)
(push) ; 10
; [then-branch: 158 | False | live]
; [else-branch: 158 | True | live]
(push) ; 11
; [then-branch: 158 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 158 | True]
; [eval] (forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false)
(push) ; 12
; [then-branch: 159 | False | live]
; [else-branch: 159 | True | live]
(push) ; 13
; [then-branch: 159 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 159 | True]
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false)
(push) ; 14
; [then-branch: 160 | False | live]
; [else-branch: 160 | True | live]
(push) ; 15
; [then-branch: 160 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 160 | True]
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false)
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
; Joined path conditions
(assert (or
  (not
    (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5))
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_168@375@01 5)))
(declare-const _current_wait_level_158@418@01 $Perm)
(declare-const $t@419@01 $Snap)
(assert (= $t@419@01 ($Snap.combine ($Snap.first $t@419@01) ($Snap.second $t@419@01))))
(assert (= ($Snap.first $t@419@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@419@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@419@01))
    ($Snap.second ($Snap.second $t@419@01)))))
(assert (= ($Snap.first ($Snap.second $t@419@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@419@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@419@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@419@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@419@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_183@389@01 _current_wait_level_158@418@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@419@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; j_3 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(declare-const j_3@420@01 $Ref)
(assert (= j_3@420@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3366762)
(declare-const $t@421@01 $Snap)
(assert (= $t@421@01 $Snap.unit))
; [eval] _isDefined(3366762)
(push) ; 6
(assert (_isDefined%precondition $Snap.unit 3366762))
(pop) ; 6
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3366762))
(assert (_isDefined $Snap.unit 3366762))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_13 := perm(MustTerminate(_cthread_168))
; [eval] perm(MustTerminate(_cthread_168))
(declare-const _loop_original_must_terminate_13@422@01 $Perm)
(assert (= _loop_original_must_terminate_13@422@01 $Perm.No))
; [exec]
; _loop_termination_flag_13 := true
; [exec]
; _loop_check_before_13 := true
(declare-const _loop_measures_13@423@01 Seq<Measure$>)
(declare-const j_3@424@01 $Ref)
(declare-const _loop_check_before_13@425@01 Bool)
(set-option :timeout 0)
(push) ; 6
; Loop head block: Check well-definedness of invariant
(declare-const $t@426@01 $Snap)
(assert (= $t@426@01 ($Snap.combine ($Snap.first $t@426@01) ($Snap.second $t@426@01))))
(assert (= ($Snap.first $t@426@01) $Snap.unit))
; [eval] (forperm _r_61: Ref [_r_61.MustReleaseBounded] :: Level(_r_61) <= _residue_184)
(assert (=
  ($Snap.second $t@426@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@426@01))
    ($Snap.second ($Snap.second $t@426@01)))))
(assert (= ($Snap.first ($Snap.second $t@426@01)) $Snap.unit))
; [eval] (forperm _r_61: Ref [_r_61.MustReleaseUnbounded] :: Level(_r_61) <= _residue_184)
(assert (=
  ($Snap.second ($Snap.second $t@426@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@426@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@426@01))) $Snap.unit))
; [eval] _residue_183 <= _residue_184
(assert (<= _residue_183@389@01 _residue_184@394@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@426@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(j_3), int())
; [eval] typeof(j_3)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> j_3@424@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@424@01 3366762))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@424@01 3366762))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@424@01 3366762)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@424@01 3366762)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@424@01 3366762)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
; [else-branch: 161 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 161 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762)))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))
(pop) ; 8
(push) ; 8
; [else-branch: 161 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
  $Snap.unit))
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; [eval] issubtype(typeof(j_3), int())
; [eval] typeof(j_3)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> j_3@420@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_3@420@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@420@01 3366762))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@420@01 3366762))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@420@01 3366762)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@420@01 3366762)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@420@01 3366762)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@420@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
; [else-branch: 162 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@420@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 162 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@420@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762)))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))) 1))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 7
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@420@01 3366762))) 1)
    0)))
; [eval] _loop_check_before_13 ==> _loop_termination_flag_13 || (!int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | True | live]
; [else-branch: 163 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 163 | True]
; [eval] _loop_termination_flag_13 || (!int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [eval] !_loop_check_before_13 ==> (forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_13
(push) ; 7
; [then-branch: 164 | False | dead]
; [else-branch: 164 | True | live]
(push) ; 8
; [else-branch: 164 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
(assert (= $t@426@01 ($Snap.combine ($Snap.first $t@426@01) ($Snap.second $t@426@01))))
(assert (= ($Snap.first $t@426@01) $Snap.unit))
(assert (=
  ($Snap.second $t@426@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@426@01))
    ($Snap.second ($Snap.second $t@426@01)))))
(assert (= ($Snap.first ($Snap.second $t@426@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@426@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@426@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@426@01))) $Snap.unit))
(assert (<= _residue_183@389@01 _residue_184@394@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@426@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> j_3@424@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit j_3@424@01 3366762))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@424@01 3366762)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@426@01))))))))
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
(push) ; 8
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [eval] !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
; [else-branch: 165 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 165 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [exec]
; _loop_measures_13 := Seq(Measure$create(true, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7,
;   3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)))
; [eval] Seq(Measure$create(true, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)))
; [eval] Measure$create(true, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762)))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1))))
  1))
(declare-const _loop_measures_13@427@01 Seq<Measure$>)
(assert (=
  _loop_measures_13@427@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762))) 1)))))
; [exec]
; j_3 := __prim__int___box__(int___add__(int___unbox__(j_3), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(j_3), 1))
; [eval] int___add__(int___unbox__(j_3), 1)
; [eval] int___unbox__(j_3)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit j_3@424@01))
(pop) ; 9
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit j_3@424@01))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_3@424@01) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_3@424@01) 1))
(push) ; 9
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_3@424@01) 1)))
(pop) ; 9
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_3@424@01) 1)))
(declare-const j_3@428@01 $Ref)
(assert (=
  j_3@428@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_3@424@01) 1))))
; [exec]
; inhale _isDefined(3366762)
(declare-const $t@429@01 $Snap)
(assert (= $t@429@01 $Snap.unit))
; [eval] _isDefined(3366762)
(push) ; 9
(pop) ; 9
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end_13
; [exec]
; _loop_check_before_13 := false
; [exec]
; assert _loop_termination_flag_13 ==>
;   !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7,
;   3628910))) ||
;   Measure$check(_loop_measures_13, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7,
;   3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1))
; [eval] _loop_termination_flag_13 ==> !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) || Measure$check(_loop_measures_13, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1))
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | True | live]
; [else-branch: 166 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 166 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) || Measure$check(_loop_measures_13, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@428@01 3366762))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_3@428@01 3366762))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@428@01 3366762)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@428@01 3366762)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@428@01 3366762)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 11
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(push) ; 11
; [then-branch: 167 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
; [else-branch: 167 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
(push) ; 12
; [then-branch: 167 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 12
(push) ; 12
; [else-branch: 167 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [eval] Measure$check(_loop_measures_13, _cthread_168, int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762)))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))))
(pop) ; 13
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))
(push) ; 13
(assert (Measure$check%precondition $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)))
(pop) ; 13
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit j_3@428@01 3366762)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_3@428@01 3366762)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))))
(push) ; 9
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
  (Measure$check $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
  (Measure$check $Snap.unit _loop_measures_13@427@01 _cthread_168@375@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(j_3), int())
; [eval] typeof(j_3)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> j_3@428@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_3@428@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 168 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
; [else-branch: 168 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 168 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_7, 3628910)), int___unbox__(_checkDefined(j_3, 3366762)))
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))))
(push) ; 11
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))
(pop) ; 11
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))
(pop) ; 10
(push) ; 10
; [else-branch: 168 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@428@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(push) ; 9
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@428@01 3366762))) 1)
    0)))
; [eval] _loop_check_before_13 ==> _loop_termination_flag_13 || (!int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))))
(push) ; 9
; [then-branch: 169 | False | dead]
; [else-branch: 169 | True | live]
(push) ; 10
; [else-branch: 169 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [eval] !_loop_check_before_13 ==> (forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_13
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | True | live]
; [else-branch: 170 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 170 | True]
; [eval] (forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false) && ((forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false) && ((forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false) && (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_62: Ref [MustInvokeBounded(_r_62)] :: false)
(push) ; 11
; [then-branch: 171 | False | live]
; [else-branch: 171 | True | live]
(push) ; 12
; [then-branch: 171 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 171 | True]
; [eval] (forperm _r_62: Ref [MustInvokeUnbounded(_r_62)] :: false)
(push) ; 13
; [then-branch: 172 | False | live]
; [else-branch: 172 | True | live]
(push) ; 14
; [then-branch: 172 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 172 | True]
; [eval] (forperm _r_62: Ref [_r_62.MustReleaseBounded] :: false)
(push) ; 15
; [then-branch: 173 | False | live]
; [else-branch: 173 | True | live]
(push) ; 16
; [then-branch: 173 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 173 | True]
; [eval] (forperm _r_62: Ref [_r_62.MustReleaseUnbounded] :: false)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 165 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 8
; [eval] !int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_3, 3366762)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(j_3, 3366762))
; [eval] _checkDefined(j_3, 3366762)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
; [else-branch: 174 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 174 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
; [exec]
; exhale perm(MustTerminate(_cthread_168)) > none ==>
;   acc(MustTerminate(_cthread_168), perm(MustTerminate(_cthread_168)) -
;   _loop_original_must_terminate_13)
; [eval] perm(MustTerminate(_cthread_168)) > none
; [eval] perm(MustTerminate(_cthread_168))
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | True | live]
; [else-branch: 175 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 175 | True]
; [eval] perm(MustTerminate(_cthread_168)) - _loop_original_must_terminate_13
; [eval] perm(MustTerminate(_cthread_168))
(push) ; 10
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_13@422@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_13@422@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_13@422@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_13@422@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_13@422@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_13@422@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_13@422@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_13
; [exec]
; label loop_end_12
; [exec]
; _loop_check_before_12 := false
; [exec]
; assert _loop_termination_flag_12 ==>
;   !int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7,
;   3628910)))
; [eval] _loop_termination_flag_12 ==> !int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
(push) ; 10
; [then-branch: 176 | False | dead]
; [else-branch: 176 | True | live]
(push) ; 11
; [else-branch: 176 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(i_6), int())
; [eval] typeof(i_6)
; [eval] int()
(push) ; 10
(assert (not (issubtype<Bool> (typeof<PyType> i_6@412@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_6@412@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_12 ==> _loop_termination_flag_12 || (!int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910))) || perm(MustTerminate(_cthread_168)) == none && ((forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))))
(push) ; 10
; [then-branch: 177 | False | dead]
; [else-branch: 177 | True | live]
(push) ; 11
; [else-branch: 177 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [eval] !_loop_check_before_12 ==> (forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_12
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | True | live]
; [else-branch: 178 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 178 | True]
; [eval] (forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false) && ((forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false) && ((forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false) && (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_64: Ref [MustInvokeBounded(_r_64)] :: false)
(push) ; 12
; [then-branch: 179 | False | live]
; [else-branch: 179 | True | live]
(push) ; 13
; [then-branch: 179 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 179 | True]
; [eval] (forperm _r_64: Ref [MustInvokeUnbounded(_r_64)] :: false)
(push) ; 14
; [then-branch: 180 | False | live]
; [else-branch: 180 | True | live]
(push) ; 15
; [then-branch: 180 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 180 | True]
; [eval] (forperm _r_64: Ref [_r_64.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 181 | False | live]
; [else-branch: 181 | True | live]
(push) ; 17
; [then-branch: 181 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 181 | True]
; [eval] (forperm _r_64: Ref [_r_64.MustReleaseUnbounded] :: false)
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
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 174 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_3@424@01, 3366762)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_3@424@01 3366762)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 150 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(pop) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_6, 3563369)), int___unbox__(_checkDefined(n_7, 3628910)))
; [eval] int___unbox__(_checkDefined(i_6, 3563369))
; [eval] _checkDefined(i_6, 3563369)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_7, 3628910))
; [eval] _checkDefined(n_7, 3628910)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))) | live]
; [else-branch: 182 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 182 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910)))))
; [exec]
; exhale perm(MustTerminate(_cthread_168)) > none ==>
;   acc(MustTerminate(_cthread_168), perm(MustTerminate(_cthread_168)) -
;   _loop_original_must_terminate_12)
; [eval] perm(MustTerminate(_cthread_168)) > none
; [eval] perm(MustTerminate(_cthread_168))
; [then-branch: 183 | False | dead]
; [else-branch: 183 | True | live]
(push) ; 6
; [else-branch: 183 | True]
; [exec]
; label post_loop_12
; [exec]
; label __end
; [eval] (forperm _r_66: Ref [MustInvokeBounded(_r_66)] :: false)
; [eval] (forperm _r_66: Ref [MustInvokeUnbounded(_r_66)] :: false)
; [eval] (forperm _r_66: Ref [_r_66.MustReleaseBounded] :: false)
; [eval] (forperm _r_66: Ref [_r_66.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 182 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_6@403@01, 3563369)), int___unbox__(_, _checkDefined(_, n_7@399@01, 3628910)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_6@403@01 3563369)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_7@399@01 3628910))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- f10 ----------
(declare-const _cthread_169@430@01 $Ref)
(declare-const _caller_measures_169@431@01 Seq<Measure$>)
(declare-const _residue_169@432@01 $Perm)
(declare-const _current_wait_level_169@433@01 $Perm)
(declare-const _cthread_169@434@01 $Ref)
(declare-const _caller_measures_169@435@01 Seq<Measure$>)
(declare-const _residue_169@436@01 $Perm)
(declare-const _current_wait_level_169@437@01 $Perm)
(push) ; 1
(declare-const $t@438@01 $Snap)
(assert (= $t@438@01 ($Snap.combine ($Snap.first $t@438@01) ($Snap.second $t@438@01))))
(assert (= ($Snap.first $t@438@01) $Snap.unit))
; [eval] _cthread_169 != null
(assert (not (= _cthread_169@434@01 $Ref.null)))
(assert (=
  ($Snap.second $t@438@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@438@01))
    ($Snap.second ($Snap.second $t@438@01)))))
(assert (= ($Snap.first ($Snap.second $t@438@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_169), Thread_0())
; [eval] typeof(_cthread_169)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_169@434@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@438@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@439@01 $Snap)
(assert (= $t@439@01 ($Snap.combine ($Snap.first $t@439@01) ($Snap.second $t@439@01))))
(assert (= ($Snap.first $t@439@01) $Snap.unit))
; [eval] (forperm _r_72: Ref [_r_72.MustReleaseBounded] :: Level(_r_72) <= _current_wait_level_169)
(assert (=
  ($Snap.second $t@439@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@439@01))
    ($Snap.second ($Snap.second $t@439@01)))))
(assert (= ($Snap.first ($Snap.second $t@439@01)) $Snap.unit))
; [eval] (forperm _r_72: Ref [_r_72.MustReleaseUnbounded] :: Level(_r_72) <= _current_wait_level_169)
(assert (=
  ($Snap.second ($Snap.second $t@439@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@439@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@439@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@439@01))) $Snap.unit))
; [eval] _residue_169 <= _current_wait_level_169
(assert (<= _residue_169@436@01 _current_wait_level_169@437@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@439@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@440@01 $Ref)
; [exec]
; var i_7: Ref
(declare-const i_7@441@01 $Ref)
; [exec]
; var n_8: Ref
(declare-const n_8@442@01 $Ref)
; [exec]
; var j_4: Ref
(declare-const j_4@443@01 $Ref)
; [exec]
; var _loop_measures_14: Seq[Measure$]
(declare-const _loop_measures_14@444@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_14: Bool
(declare-const _loop_check_before_14@445@01 Bool)
; [exec]
; var _loop_termination_flag_14: Bool
(declare-const _loop_termination_flag_14@446@01 Bool)
; [exec]
; var _loop_original_must_terminate_14: Perm
(declare-const _loop_original_must_terminate_14@447@01 $Perm)
; [exec]
; var _residue_185: Perm
(declare-const _residue_185@448@01 $Perm)
; [exec]
; var _loop_measures_15: Seq[Measure$]
(declare-const _loop_measures_15@449@01 Seq<Measure$>)
; [exec]
; var _loop_check_before_15: Bool
(declare-const _loop_check_before_15@450@01 Bool)
; [exec]
; var _loop_termination_flag_15: Bool
(declare-const _loop_termination_flag_15@451@01 Bool)
; [exec]
; var _loop_original_must_terminate_15: Perm
(declare-const _loop_original_must_terminate_15@452@01 $Perm)
; [exec]
; var _residue_186: Perm
(declare-const _residue_186@453@01 $Perm)
; [exec]
; var _cwl_169: Perm
(declare-const _cwl_169@454@01 $Perm)
; [exec]
; var _method_measures_169: Seq[Measure$]
(declare-const _method_measures_169@455@01 Seq<Measure$>)
; [exec]
; _method_measures_169 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; i_7 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(declare-const i_7@456@01 $Ref)
(assert (= i_7@456@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3628905)
(declare-const $t@457@01 $Snap)
(assert (= $t@457@01 $Snap.unit))
; [eval] _isDefined(3628905)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3628905))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3628905))
(assert (_isDefined $Snap.unit 3628905))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; n_8 := __prim__int___box__(10)
; [eval] __prim__int___box__(10)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 10))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 10))
(declare-const n_8@458@01 $Ref)
(assert (= n_8@458@01 (__prim__int___box__ $Snap.unit 10)))
; [exec]
; inhale _isDefined(3694446)
(declare-const $t@459@01 $Snap)
(assert (= $t@459@01 $Snap.unit))
; [eval] _isDefined(3694446)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3694446))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3694446))
(assert (_isDefined $Snap.unit 3694446))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_14 := perm(MustTerminate(_cthread_169))
; [eval] perm(MustTerminate(_cthread_169))
(declare-const _loop_original_must_terminate_14@460@01 $Perm)
(assert (= _loop_original_must_terminate_14@460@01 $Perm.No))
; [exec]
; _loop_termination_flag_14 := false
; [exec]
; _loop_check_before_14 := true
(declare-const _loop_measures_14@461@01 Seq<Measure$>)
(declare-const i_7@462@01 $Ref)
(declare-const _cwl_169@463@01 $Perm)
(declare-const j_4@464@01 $Ref)
(declare-const _loop_original_must_terminate_15@465@01 $Perm)
(declare-const _loop_termination_flag_15@466@01 Bool)
(declare-const _loop_check_before_15@467@01 Bool)
(declare-const _loop_measures_15@468@01 Seq<Measure$>)
(declare-const _loop_check_before_14@469@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@470@01 $Snap)
(assert (= $t@470@01 ($Snap.combine ($Snap.first $t@470@01) ($Snap.second $t@470@01))))
(assert (= ($Snap.first $t@470@01) $Snap.unit))
; [eval] (forperm _r_70: Ref [_r_70.MustReleaseBounded] :: Level(_r_70) <= _residue_185)
(assert (=
  ($Snap.second $t@470@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@470@01))
    ($Snap.second ($Snap.second $t@470@01)))))
(assert (= ($Snap.first ($Snap.second $t@470@01)) $Snap.unit))
; [eval] (forperm _r_70: Ref [_r_70.MustReleaseUnbounded] :: Level(_r_70) <= _residue_185)
(assert (=
  ($Snap.second ($Snap.second $t@470@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@470@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@470@01))) $Snap.unit))
; [eval] _residue_169 <= _residue_185
(assert (<= _residue_169@436@01 _residue_185@448@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@470@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(i_7), int())
; [eval] typeof(i_7)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> i_7@462@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(i_7), int())
; [eval] typeof(i_7)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> i_7@456@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_7@456@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_14 ==> _loop_termination_flag_14 || (!int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | True | live]
; [else-branch: 184 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 184 | True]
; [eval] _loop_termination_flag_14 || (!int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 185 | False | live]
; [else-branch: 185 | True | live]
(push) ; 7
; [then-branch: 185 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 185 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(i_7, 3628905))
; [eval] _checkDefined(i_7, 3628905)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@456@01 3628905))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@456@01 3628905))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@456@01 3628905)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@456@01 3628905)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@456@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_8@458@01 3694446))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit n_8@458@01 3694446))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_8@458@01 3694446)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_8@458@01 3694446)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_8@458@01 3694446)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 8
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 8
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 8
; [then-branch: 186 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@456@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
; [else-branch: 186 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@456@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
(push) ; 9
; [then-branch: 186 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@456@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 9
(push) ; 9
; [else-branch: 186 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@456@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [eval] perm(MustTerminate(_cthread_169)) == none && ((forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_169)) == none
; [eval] perm(MustTerminate(_cthread_169))
(push) ; 10
; [then-branch: 187 | False | live]
; [else-branch: 187 | True | live]
(push) ; 11
; [then-branch: 187 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 187 | True]
; [eval] (forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false)
(push) ; 12
; [then-branch: 188 | False | live]
; [else-branch: 188 | True | live]
(push) ; 13
; [then-branch: 188 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 188 | True]
; [eval] (forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false)
(push) ; 14
; [then-branch: 189 | False | live]
; [else-branch: 189 | True | live]
(push) ; 15
; [then-branch: 189 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 189 | True]
; [eval] (forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 190 | False | live]
; [else-branch: 190 | True | live]
(push) ; 17
; [then-branch: 190 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 190 | True]
; [eval] (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)
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
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_7@456@01 3628905)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@456@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905))
  (_checkDefined%precondition $Snap.unit n_8@458@01 3694446)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_8@458@01 3694446)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit i_7@456@01 3628905)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@456@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905))
  (_checkDefined%precondition $Snap.unit n_8@458@01 3694446)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit n_8@458@01 3694446)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@456@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))))
; [eval] !_loop_check_before_14 ==> (forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_14
(push) ; 4
; [then-branch: 191 | False | dead]
; [else-branch: 191 | True | live]
(push) ; 5
; [else-branch: 191 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@470@01 ($Snap.combine ($Snap.first $t@470@01) ($Snap.second $t@470@01))))
(assert (= ($Snap.first $t@470@01) $Snap.unit))
(assert (=
  ($Snap.second $t@470@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@470@01))
    ($Snap.second ($Snap.second $t@470@01)))))
(assert (= ($Snap.first ($Snap.second $t@470@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@470@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@470@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@470@01))) $Snap.unit))
(assert (<= _residue_169@436@01 _residue_185@448@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@470@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> i_7@462@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@470@01))))))
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
(push) ; 5
; [eval] int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(i_7, 3628905))
; [eval] _checkDefined(i_7, 3628905)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 6
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 5
(push) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(i_7, 3628905))
; [eval] _checkDefined(i_7, 3628905)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(pop) ; 6
; Joined path conditions
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 6
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(i_7, 3628905))
; [eval] _checkDefined(i_7, 3628905)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit i_7@462@01 3628905))
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit i_7@462@01 3628905)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 5
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 192 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
; [else-branch: 192 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 192 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [exec]
; _loop_measures_14 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; i_7 := __prim__int___box__(int___add__(int___unbox__(i_7), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(i_7), 1))
; [eval] int___add__(int___unbox__(i_7), 1)
; [eval] int___unbox__(i_7)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit i_7@462@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit i_7@462@01))
(push) ; 6
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_7@462@01) 1))
(pop) ; 6
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit i_7@462@01) 1))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_7@462@01) 1)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_7@462@01) 1)))
(declare-const i_7@471@01 $Ref)
(assert (=
  i_7@471@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit i_7@462@01) 1))))
; [exec]
; inhale _isDefined(3628905)
(declare-const $t@472@01 $Snap)
(assert (= $t@472@01 $Snap.unit))
; [eval] _isDefined(3628905)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_169 := x_0(_cthread_169, _method_measures_169, _residue_185)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@473@01 $Perm)
(declare-const $t@474@01 $Snap)
(assert (= $t@474@01 ($Snap.combine ($Snap.first $t@474@01) ($Snap.second $t@474@01))))
(assert (= ($Snap.first $t@474@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@474@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@474@01))
    ($Snap.second ($Snap.second $t@474@01)))))
(assert (= ($Snap.first ($Snap.second $t@474@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@474@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@474@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@474@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@474@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_185@448@01 _current_wait_level_156@473@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@474@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_169 := y(_cthread_169, _method_measures_169, _residue_185)
; [eval] _cthread_157 != null
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1) || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1)
(set-option :timeout 0)
(push) ; 6
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
(pop) ; 6
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
(push) ; 6
; [then-branch: 193 | Measure$check(_, Nil, _cthread_169@434@01, 1) | live]
; [else-branch: 193 | !(Measure$check(_, Nil, _cthread_169@434@01, 1)) | live]
(push) ; 7
; [then-branch: 193 | Measure$check(_, Nil, _cthread_169@434@01, 1)]
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
(pop) ; 7
(push) ; 7
; [else-branch: 193 | !(Measure$check(_, Nil, _cthread_169@434@01, 1))]
(assert (not
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1)))
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(push) ; 8
; [then-branch: 194 | False | live]
; [else-branch: 194 | True | live]
(push) ; 9
; [then-branch: 194 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 194 | True]
; [eval] (forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false)
(push) ; 10
; [then-branch: 195 | False | live]
; [else-branch: 195 | True | live]
(push) ; 11
; [then-branch: 195 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 195 | True]
; [eval] (forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false)
(push) ; 12
; [then-branch: 196 | False | live]
; [else-branch: 196 | True | live]
(push) ; 13
; [then-branch: 196 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 196 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false)
(push) ; 14
; [then-branch: 197 | False | live]
; [else-branch: 197 | True | live]
(push) ; 15
; [then-branch: 197 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 197 | True]
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false)
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
; Joined path conditions
(assert (or
  (not
    (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1)))
(declare-const _current_wait_level_157@475@01 $Perm)
(declare-const $t@476@01 $Snap)
(assert (= $t@476@01 ($Snap.combine ($Snap.first $t@476@01) ($Snap.second $t@476@01))))
(assert (= ($Snap.first $t@476@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@476@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@476@01))
    ($Snap.second ($Snap.second $t@476@01)))))
(assert (= ($Snap.first ($Snap.second $t@476@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@476@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@476@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@476@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@476@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_185@448@01 _current_wait_level_157@475@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@476@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _cwl_169 := z(_cthread_169, _method_measures_169, _residue_185)
; [eval] _cthread_158 != null
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_158, _cthread_158, 5) || perm(MustTerminate(_cthread_158)) == none && ((forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false) && ((forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false) && ((forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false) && (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_158, _cthread_158, 5)
(set-option :timeout 0)
(push) ; 6
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5))
(pop) ; 6
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5))
(push) ; 6
; [then-branch: 198 | Measure$check(_, Nil, _cthread_169@434@01, 5) | live]
; [else-branch: 198 | !(Measure$check(_, Nil, _cthread_169@434@01, 5)) | live]
(push) ; 7
; [then-branch: 198 | Measure$check(_, Nil, _cthread_169@434@01, 5)]
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5))
(pop) ; 7
(push) ; 7
; [else-branch: 198 | !(Measure$check(_, Nil, _cthread_169@434@01, 5))]
(assert (not
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5)))
; [eval] perm(MustTerminate(_cthread_158)) == none && ((forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false) && ((forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false) && ((forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false) && (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_158)) == none
; [eval] perm(MustTerminate(_cthread_158))
(push) ; 8
; [then-branch: 199 | False | live]
; [else-branch: 199 | True | live]
(push) ; 9
; [then-branch: 199 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 199 | True]
; [eval] (forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false)
(push) ; 10
; [then-branch: 200 | False | live]
; [else-branch: 200 | True | live]
(push) ; 11
; [then-branch: 200 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 200 | True]
; [eval] (forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false)
(push) ; 12
; [then-branch: 201 | False | live]
; [else-branch: 201 | True | live]
(push) ; 13
; [then-branch: 201 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 201 | True]
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false)
(push) ; 14
; [then-branch: 202 | False | live]
; [else-branch: 202 | True | live]
(push) ; 15
; [then-branch: 202 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 202 | True]
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false)
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
; Joined path conditions
(assert (or
  (not
    (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5))
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 5)))
(declare-const _current_wait_level_158@477@01 $Perm)
(declare-const $t@478@01 $Snap)
(assert (= $t@478@01 ($Snap.combine ($Snap.first $t@478@01) ($Snap.second $t@478@01))))
(assert (= ($Snap.first $t@478@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@478@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@478@01))
    ($Snap.second ($Snap.second $t@478@01)))))
(assert (= ($Snap.first ($Snap.second $t@478@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@478@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@478@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@478@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@478@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_185@448@01 _current_wait_level_158@477@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@478@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; j_4 := __prim__int___box__(0)
; [eval] __prim__int___box__(0)
(set-option :timeout 0)
(push) ; 6
(pop) ; 6
; Joined path conditions
(declare-const j_4@479@01 $Ref)
(assert (= j_4@479@01 (__prim__int___box__ $Snap.unit 0)))
; [exec]
; inhale _isDefined(3432298)
(declare-const $t@480@01 $Snap)
(assert (= $t@480@01 $Snap.unit))
; [eval] _isDefined(3432298)
(push) ; 6
(assert (_isDefined%precondition $Snap.unit 3432298))
(pop) ; 6
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3432298))
(assert (_isDefined $Snap.unit 3432298))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate_15 := perm(MustTerminate(_cthread_169))
; [eval] perm(MustTerminate(_cthread_169))
(declare-const _loop_original_must_terminate_15@481@01 $Perm)
(assert (= _loop_original_must_terminate_15@481@01 $Perm.No))
; [exec]
; _loop_termination_flag_15 := true
; [exec]
; _loop_check_before_15 := true
(declare-const _loop_measures_15@482@01 Seq<Measure$>)
(declare-const _cwl_169@483@01 $Perm)
(declare-const j_4@484@01 $Ref)
(declare-const _loop_check_before_15@485@01 Bool)
(set-option :timeout 0)
(push) ; 6
; Loop head block: Check well-definedness of invariant
(declare-const $t@486@01 $Snap)
(assert (= $t@486@01 ($Snap.combine ($Snap.first $t@486@01) ($Snap.second $t@486@01))))
(assert (= ($Snap.first $t@486@01) $Snap.unit))
; [eval] (forperm _r_68: Ref [_r_68.MustReleaseBounded] :: Level(_r_68) <= _residue_186)
(assert (=
  ($Snap.second $t@486@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@486@01))
    ($Snap.second ($Snap.second $t@486@01)))))
(assert (= ($Snap.first ($Snap.second $t@486@01)) $Snap.unit))
; [eval] (forperm _r_68: Ref [_r_68.MustReleaseUnbounded] :: Level(_r_68) <= _residue_186)
(assert (=
  ($Snap.second ($Snap.second $t@486@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@486@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@486@01))) $Snap.unit))
; [eval] _residue_185 <= _residue_186
(assert (<= _residue_185@448@01 _residue_186@453@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@486@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(j_4), int())
; [eval] typeof(j_4)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> j_4@484@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
  $Snap.unit))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@484@01 3432298))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@484@01 3432298))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@484@01 3432298)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@484@01 3432298)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@484@01 3432298)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 203 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
; [else-branch: 203 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 203 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298)))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))
(pop) ; 8
(push) ; 8
; [else-branch: 203 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
  $Snap.unit))
(pop) ; 6
(push) ; 6
; Loop head block: Establish invariant
; [eval] issubtype(typeof(j_4), int())
; [eval] typeof(j_4)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> j_4@479@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_4@479@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@479@01 3432298))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@479@01 3432298))
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@479@01 3432298)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@479@01 3432298)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@479@01 3432298)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 7
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 204 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@479@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
; [else-branch: 204 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@479@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 204 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@479@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298)))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))) 1))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))) 1))))
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 7
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@479@01 3432298))) 1)
    0)))
; [eval] _loop_check_before_15 ==> _loop_termination_flag_15 || (!int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | True | live]
; [else-branch: 205 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 205 | True]
; [eval] _loop_termination_flag_15 || (!int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; [eval] !_loop_check_before_15 ==> (forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_15
(push) ; 7
; [then-branch: 206 | False | dead]
; [else-branch: 206 | True | live]
(push) ; 8
; [else-branch: 206 | True]
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 7
(assert (= $t@486@01 ($Snap.combine ($Snap.first $t@486@01) ($Snap.second $t@486@01))))
(assert (= ($Snap.first $t@486@01) $Snap.unit))
(assert (=
  ($Snap.second $t@486@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@486@01))
    ($Snap.second ($Snap.second $t@486@01)))))
(assert (= ($Snap.first ($Snap.second $t@486@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@486@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@486@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@486@01))) $Snap.unit))
(assert (<= _residue_185@448@01 _residue_186@453@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@486@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> j_4@484@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
  $Snap.unit))
(assert (_checkDefined%precondition $Snap.unit j_4@484@01 3432298))
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@484@01 3432298)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)))
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))))
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1)
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@486@01))))))))
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
(push) ; 8
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [eval] !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Loop head block: Follow loop-internal edges
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 207 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
; [else-branch: 207 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 207 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [exec]
; _loop_measures_15 := Seq(Measure$create(true, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8,
;   3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)))
; [eval] Seq(Measure$create(true, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)))
; [eval] Measure$create(true, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298)))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))))
(pop) ; 9
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))
(assert (=
  (Seq_length
    (Seq_singleton (Measure$create<Measure$> true _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1))))
  1))
(declare-const _loop_measures_15@487@01 Seq<Measure$>)
(assert (=
  _loop_measures_15@487@01
  (Seq_singleton (Measure$create<Measure$> true _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298))) 1)))))
; [exec]
; _cwl_169 := y(_cthread_169, _method_measures_169, _residue_186)
; [eval] _cthread_157 != null
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1) || perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] Measure$check(_caller_measures_157, _cthread_157, 1)
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
; [then-branch: 208 | Measure$check(_, Nil, _cthread_169@434@01, 1) | live]
; [else-branch: 208 | !(Measure$check(_, Nil, _cthread_169@434@01, 1)) | live]
(push) ; 10
; [then-branch: 208 | Measure$check(_, Nil, _cthread_169@434@01, 1)]
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
(pop) ; 10
(push) ; 10
; [else-branch: 208 | !(Measure$check(_, Nil, _cthread_169@434@01, 1))]
(assert (not
  (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1)))
; [eval] perm(MustTerminate(_cthread_157)) == none && ((forperm _r_4: Ref [MustInvokeBounded(_r_4)] :: false) && ((forperm _r_4: Ref [MustInvokeUnbounded(_r_4)] :: false) && ((forperm _r_4: Ref [_r_4.MustReleaseBounded] :: false) && (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_157)) == none
; [eval] perm(MustTerminate(_cthread_157))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(push) ; 9
(assert (not (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (Measure$check $Snap.unit (as Seq_empty  Seq<Measure$>) _cthread_169@434@01 1))
(declare-const _current_wait_level_157@488@01 $Perm)
(declare-const $t@489@01 $Snap)
(assert (= $t@489@01 ($Snap.combine ($Snap.first $t@489@01) ($Snap.second $t@489@01))))
(assert (= ($Snap.first $t@489@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@489@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@489@01))
    ($Snap.second ($Snap.second $t@489@01)))))
(assert (= ($Snap.first ($Snap.second $t@489@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@489@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@489@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@489@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@489@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_186@453@01 _current_wait_level_157@488@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@489@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; j_4 := __prim__int___box__(int___add__(int___unbox__(j_4), 1))
; [eval] __prim__int___box__(int___add__(int___unbox__(j_4), 1))
; [eval] int___add__(int___unbox__(j_4), 1)
; [eval] int___unbox__(j_4)
(set-option :timeout 0)
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit j_4@484@01))
(pop) ; 9
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit j_4@484@01))
(push) ; 9
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_4@484@01) 1))
(pop) ; 9
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit j_4@484@01) 1))
(push) ; 9
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_4@484@01) 1)))
(pop) ; 9
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_4@484@01) 1)))
(declare-const j_4@490@01 $Ref)
(assert (=
  j_4@490@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit j_4@484@01) 1))))
; [exec]
; inhale _isDefined(3432298)
(declare-const $t@491@01 $Snap)
(assert (= $t@491@01 $Snap.unit))
; [eval] _isDefined(3432298)
(push) ; 9
(pop) ; 9
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end_15
; [exec]
; _loop_check_before_15 := false
; [exec]
; assert _loop_termination_flag_15 ==>
;   !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8,
;   3694446))) ||
;   Measure$check(_loop_measures_15, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8,
;   3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1))
; [eval] _loop_termination_flag_15 ==> !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) || Measure$check(_loop_measures_15, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1))
(set-option :timeout 0)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 209 | True | live]
; [else-branch: 209 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 209 | True]
; [eval] !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) || Measure$check(_loop_measures_15, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1))
; [eval] !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@490@01 3432298))
(pop) ; 11
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit j_4@490@01 3432298))
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 12
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@490@01 3432298)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@490@01 3432298)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)))
(pop) ; 11
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@490@01 3432298)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 11
; Joined path conditions
(assert (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(push) ; 11
; [then-branch: 210 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
; [else-branch: 210 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
(push) ; 12
; [then-branch: 210 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 12
(push) ; 12
; [else-branch: 210 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [eval] Measure$check(_loop_measures_15, _cthread_169, int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298)))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 13
; [eval] _isDefined(id)
(push) ; 14
(pop) ; 14
; Joined path conditions
(pop) ; 13
; Joined path conditions
(push) ; 13
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 13
; Joined path conditions
(push) ; 13
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))))
(pop) ; 13
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))))
(push) ; 13
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))
(pop) ; 13
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))
(push) ; 13
(assert (Measure$check%precondition $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)))
(pop) ; 13
; Joined path conditions
(assert (Measure$check%precondition $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)
    (Measure$check%precondition $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)))))
(assert (or
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit j_4@490@01 3432298)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit j_4@490@01 3432298)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))
  (int___lt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (=>
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (and
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
      (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)))
      (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)
      (Measure$check%precondition $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))))
  (or
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (not
      (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))))
(push) ; 9
(assert (not (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
  (Measure$check $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
  (Measure$check $Snap.unit _loop_measures_15@487@01 _cthread_169@434@01 (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))))
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(j_4), int())
; [eval] typeof(j_4)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> j_4@490@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> j_4@490@01) (as int<PyType>  PyType)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) ==> int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 9
; Joined path conditions
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 211 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
; [else-branch: 211 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 211 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1) > 0
; [eval] int___add__(int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298))), 1)
; [eval] int___sub__(int___unbox__(_checkDefined(n_8, 3694446)), int___unbox__(_checkDefined(j_4, 3432298)))
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 11
; [eval] _isDefined(id)
(push) ; 12
(pop) ; 12
; Joined path conditions
(pop) ; 11
; Joined path conditions
(push) ; 11
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 11
; Joined path conditions
(push) ; 11
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))))
(pop) ; 11
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))))
(push) ; 11
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))
(pop) ; 11
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))
(pop) ; 10
(push) ; 10
; [else-branch: 211 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@490@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (and
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
    (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)))
    (int___add__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1))))
; Joined path conditions
(assert (or
  (not
    (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(push) ; 9
(assert (not (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)
    0))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))
  (>
    (int___add__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@490@01 3432298))) 1)
    0)))
; [eval] _loop_check_before_15 ==> _loop_termination_flag_15 || (!int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))))
(push) ; 9
; [then-branch: 212 | False | dead]
; [else-branch: 212 | True | live]
(push) ; 10
; [else-branch: 212 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [eval] !_loop_check_before_15 ==> (forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_15
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 213 | True | live]
; [else-branch: 213 | False | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 213 | True]
; [eval] (forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false) && ((forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false) && ((forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false) && (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_69: Ref [MustInvokeBounded(_r_69)] :: false)
(push) ; 11
; [then-branch: 214 | False | live]
; [else-branch: 214 | True | live]
(push) ; 12
; [then-branch: 214 | False]
(assert false)
(pop) ; 12
(push) ; 12
; [else-branch: 214 | True]
; [eval] (forperm _r_69: Ref [MustInvokeUnbounded(_r_69)] :: false)
(push) ; 13
; [then-branch: 215 | False | live]
; [else-branch: 215 | True | live]
(push) ; 14
; [then-branch: 215 | False]
(assert false)
(pop) ; 14
(push) ; 14
; [else-branch: 215 | True]
; [eval] (forperm _r_69: Ref [_r_69.MustReleaseBounded] :: false)
(push) ; 15
; [then-branch: 216 | False | live]
; [else-branch: 216 | True | live]
(push) ; 16
; [then-branch: 216 | False]
(assert false)
(pop) ; 16
(push) ; 16
; [else-branch: 216 | True]
; [eval] (forperm _r_69: Ref [_r_69.MustReleaseUnbounded] :: false)
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(pop) ; 14
(pop) ; 13
; Joined path conditions
; Joined path conditions
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(pop) ; 10
(pop) ; 9
; Joined path conditions
(pop) ; 8
(push) ; 8
; [else-branch: 207 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 8
; [eval] !int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(j_4, 3432298)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(j_4, 3432298))
; [eval] _checkDefined(j_4, 3432298)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(pop) ; 8
; Joined path conditions
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(push) ; 8
(pop) ; 8
; Joined path conditions
(push) ; 8
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 217 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
; [else-branch: 217 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 217 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
; [exec]
; exhale perm(MustTerminate(_cthread_169)) > none ==>
;   acc(MustTerminate(_cthread_169), perm(MustTerminate(_cthread_169)) -
;   _loop_original_must_terminate_15)
; [eval] perm(MustTerminate(_cthread_169)) > none
; [eval] perm(MustTerminate(_cthread_169))
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 218 | True | live]
; [else-branch: 218 | False | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 218 | True]
; [eval] perm(MustTerminate(_cthread_169)) - _loop_original_must_terminate_15
; [eval] perm(MustTerminate(_cthread_169))
(push) ; 10
(assert (not (or
  (= (- $Perm.Write _loop_original_must_terminate_15@481@01) $Perm.No)
  (< $Perm.No (- $Perm.Write _loop_original_must_terminate_15@481@01)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (-
    $Perm.Write
    ($Perm.min
      $Perm.Write
      (- $Perm.Write _loop_original_must_terminate_15@481@01)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(assert (not (or
  (=
    (-
      (- $Perm.Write _loop_original_must_terminate_15@481@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_15@481@01)))
    $Perm.No)
  (<
    (-
      (- $Perm.Write _loop_original_must_terminate_15@481@01)
      ($Perm.min
        $Perm.Write
        (- $Perm.Write _loop_original_must_terminate_15@481@01)))
    $Perm.No))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [exec]
; label post_loop_15
; [exec]
; label loop_end_14
; [exec]
; _loop_check_before_14 := false
; [exec]
; assert _loop_termination_flag_14 ==>
;   !int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8,
;   3694446)))
; [eval] _loop_termination_flag_14 ==> !int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
(push) ; 10
; [then-branch: 219 | False | dead]
; [else-branch: 219 | True | live]
(push) ; 11
; [else-branch: 219 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(i_7), int())
; [eval] typeof(i_7)
; [eval] int()
(push) ; 10
(assert (not (issubtype<Bool> (typeof<PyType> i_7@471@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> i_7@471@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before_14 ==> _loop_termination_flag_14 || (!int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446))) || perm(MustTerminate(_cthread_169)) == none && ((forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))))
(push) ; 10
; [then-branch: 220 | False | dead]
; [else-branch: 220 | True | live]
(push) ; 11
; [else-branch: 220 | True]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [eval] !_loop_check_before_14 ==> (forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before_14
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 221 | True | live]
; [else-branch: 221 | False | dead]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 221 | True]
; [eval] (forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false) && ((forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false) && ((forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false) && (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_71: Ref [MustInvokeBounded(_r_71)] :: false)
(push) ; 12
; [then-branch: 222 | False | live]
; [else-branch: 222 | True | live]
(push) ; 13
; [then-branch: 222 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 222 | True]
; [eval] (forperm _r_71: Ref [MustInvokeUnbounded(_r_71)] :: false)
(push) ; 14
; [then-branch: 223 | False | live]
; [else-branch: 223 | True | live]
(push) ; 15
; [then-branch: 223 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 223 | True]
; [eval] (forperm _r_71: Ref [_r_71.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 224 | False | live]
; [else-branch: 224 | True | live]
(push) ; 17
; [then-branch: 224 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 224 | True]
; [eval] (forperm _r_71: Ref [_r_71.MustReleaseUnbounded] :: false)
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
(pop) ; 9
(pop) ; 8
(push) ; 8
; [else-branch: 217 | int___lt__(_, int___unbox__(_, _checkDefined(_, j_4@484@01, 3432298)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit j_4@484@01 3432298)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 192 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(pop) ; 5
; [eval] !int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___lt__(int___unbox__(_checkDefined(i_7, 3628905)), int___unbox__(_checkDefined(n_8, 3694446)))
; [eval] int___unbox__(_checkDefined(i_7, 3628905))
; [eval] _checkDefined(i_7, 3628905)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
; [eval] int___unbox__(_checkDefined(n_8, 3694446))
; [eval] _checkDefined(n_8, 3694446)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(pop) ; 5
; Joined path conditions
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 225 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))) | live]
; [else-branch: 225 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 225 | !(int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446))))]
(assert (not
  (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446)))))
; [exec]
; exhale perm(MustTerminate(_cthread_169)) > none ==>
;   acc(MustTerminate(_cthread_169), perm(MustTerminate(_cthread_169)) -
;   _loop_original_must_terminate_14)
; [eval] perm(MustTerminate(_cthread_169)) > none
; [eval] perm(MustTerminate(_cthread_169))
; [then-branch: 226 | False | dead]
; [else-branch: 226 | True | live]
(push) ; 6
; [else-branch: 226 | True]
; [exec]
; label post_loop_14
; [exec]
; label __end
; [eval] (forperm _r_73: Ref [MustInvokeBounded(_r_73)] :: false)
; [eval] (forperm _r_73: Ref [MustInvokeUnbounded(_r_73)] :: false)
; [eval] (forperm _r_73: Ref [_r_73.MustReleaseBounded] :: false)
; [eval] (forperm _r_73: Ref [_r_73.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 225 | int___lt__(_, int___unbox__(_, _checkDefined(_, i_7@462@01, 3628905)), int___unbox__(_, _checkDefined(_, n_8@458@01, 3694446)))]
(assert (int___lt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit i_7@462@01 3628905)) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit n_8@458@01 3694446))))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_170@492@01 $Ref)
(declare-const _caller_measures_170@493@01 Seq<Measure$>)
(declare-const _residue_187@494@01 $Perm)
(declare-const _current_wait_level_170@495@01 $Perm)
(declare-const _cthread_170@496@01 $Ref)
(declare-const _caller_measures_170@497@01 Seq<Measure$>)
(declare-const _residue_187@498@01 $Perm)
(declare-const _current_wait_level_170@499@01 $Perm)
(push) ; 1
(declare-const $t@500@01 $Snap)
(assert (= $t@500@01 ($Snap.combine ($Snap.first $t@500@01) ($Snap.second $t@500@01))))
(assert (= ($Snap.first $t@500@01) $Snap.unit))
; [eval] _cthread_170 != null
(assert (not (= _cthread_170@496@01 $Ref.null)))
(assert (=
  ($Snap.second $t@500@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@500@01))
    ($Snap.second ($Snap.second $t@500@01)))))
(assert (= ($Snap.first ($Snap.second $t@500@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_170), Thread_0())
; [eval] typeof(_cthread_170)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_170@496@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@500@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@501@01 $Snap)
(assert (= $t@501@01 ($Snap.combine ($Snap.first $t@501@01) ($Snap.second $t@501@01))))
(assert (= ($Snap.first $t@501@01) $Snap.unit))
; [eval] (forperm _r_75: Ref [_r_75.MustReleaseBounded] :: Level(_r_75) <= _current_wait_level_170)
(assert (=
  ($Snap.second $t@501@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@501@01))
    ($Snap.second ($Snap.second $t@501@01)))))
(assert (= ($Snap.first ($Snap.second $t@501@01)) $Snap.unit))
; [eval] (forperm _r_75: Ref [_r_75.MustReleaseUnbounded] :: Level(_r_75) <= _current_wait_level_170)
(assert (=
  ($Snap.second ($Snap.second $t@501@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@501@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@501@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@501@01))) $Snap.unit))
; [eval] _residue_187 <= _current_wait_level_170
(assert (<= _residue_187@498@01 _current_wait_level_170@499@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@501@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@502@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@503@01 Set<_Name>)
; [exec]
; var _cwl_170: Perm
(declare-const _cwl_170@504@01 $Perm)
; [exec]
; var _method_measures_170: Seq[Measure$]
(declare-const _method_measures_170@505@01 Seq<Measure$>)
; [exec]
; _method_measures_170 := Seq[Measure$]()
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
(declare-const module_names_0@506@01 Set<_Name>)
(assert (=
  module_names_0@506@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@507@01 $Snap)
(assert (= $t@507@01 ($Snap.combine ($Snap.first $t@507@01) ($Snap.second $t@507@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@507@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@507@01))
    ($Snap.second ($Snap.second $t@507@01)))))
(assert (= ($Snap.first ($Snap.second $t@507@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@507@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@507@01)) $Snap.unit))
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
(declare-const module_names_0@508@01 Set<_Name>)
(assert (=
  module_names_0@508@01
  (Set_union module_names_0@506@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@509@01 $Snap)
(assert (= $t@509@01 ($Snap.combine ($Snap.first $t@509@01) ($Snap.second $t@509@01))))
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
  ($Snap.second $t@509@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@509@01))
    ($Snap.second ($Snap.second $t@509@01)))))
(assert (= ($Snap.first ($Snap.second $t@509@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@509@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@509@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@509@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@509@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@509@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@509@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@509@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@509@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@509@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(128034677158721)))
; [eval] (module_names_0 union Set(_single(128034677158721)))
; [eval] Set(_single(128034677158721))
; [eval] _single(128034677158721)
(declare-const module_names_0@510@01 Set<_Name>)
(assert (=
  module_names_0@510@01
  (Set_union module_names_0@508@01 (Set_singleton (_single<_Name> 128034677158721)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8315178084276987218)))
; [eval] (module_names_0 union Set(_single(8315178084276987218)))
; [eval] Set(_single(8315178084276987218))
; [eval] _single(8315178084276987218)
(declare-const module_names_0@511@01 Set<_Name>)
(assert (=
  module_names_0@511@01
  (Set_union module_names_0@510@01 (Set_singleton (_single<_Name> 8315178084276987218)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2147776066907203333705)))
; [eval] (module_names_0 union Set(_single(2147776066907203333705)))
; [eval] Set(_single(2147776066907203333705))
; [eval] _single(2147776066907203333705)
(declare-const module_names_0@512@01 Set<_Name>)
(assert (=
  module_names_0@512@01
  (Set_union module_names_0@511@01 (Set_singleton (_single<_Name> 2147776066907203333705)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(32481125787004233)))
; [eval] (module_names_0 union Set(_single(32481125787004233)))
; [eval] Set(_single(32481125787004233))
; [eval] _single(32481125787004233)
(declare-const module_names_0@513@01 Set<_Name>)
(assert (=
  module_names_0@513@01
  (Set_union module_names_0@512@01 (Set_singleton (_single<_Name> 32481125787004233)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7738150958662902082)))
; [eval] (module_names_0 union Set(_single(7738150958662902082)))
; [eval] Set(_single(7738150958662902082))
; [eval] _single(7738150958662902082)
(declare-const module_names_0@514@01 Set<_Name>)
(assert (=
  module_names_0@514@01
  (Set_union module_names_0@513@01 (Set_singleton (_single<_Name> 7738150958662902082)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(120)))
; [eval] (module_names_0 union Set(_single(120)))
; [eval] Set(_single(120))
; [eval] _single(120)
(declare-const module_names_0@515@01 Set<_Name>)
(assert (=
  module_names_0@515@01
  (Set_union module_names_0@514@01 (Set_singleton (_single<_Name> 120)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(121)))
; [eval] (module_names_0 union Set(_single(121)))
; [eval] Set(_single(121))
; [eval] _single(121)
(declare-const module_names_0@516@01 Set<_Name>)
(assert (=
  module_names_0@516@01
  (Set_union module_names_0@515@01 (Set_singleton (_single<_Name> 121)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(122)))
; [eval] (module_names_0 union Set(_single(122)))
; [eval] Set(_single(122))
; [eval] _single(122)
(declare-const module_names_0@517@01 Set<_Name>)
(assert (=
  module_names_0@517@01
  (Set_union module_names_0@516@01 (Set_singleton (_single<_Name> 122)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(102)))
; [eval] (module_names_0 union Set(_single(102)))
; [eval] Set(_single(102))
; [eval] _single(102)
(declare-const module_names_0@518@01 Set<_Name>)
(assert (=
  module_names_0@518@01
  (Set_union module_names_0@517@01 (Set_singleton (_single<_Name> 102)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12646)))
; [eval] (module_names_0 union Set(_single(12646)))
; [eval] Set(_single(12646))
; [eval] _single(12646)
(declare-const module_names_0@519@01 Set<_Name>)
(assert (=
  module_names_0@519@01
  (Set_union module_names_0@518@01 (Set_singleton (_single<_Name> 12646)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(12902)))
; [eval] (module_names_0 union Set(_single(12902)))
; [eval] Set(_single(12902))
; [eval] _single(12902)
(declare-const module_names_0@520@01 Set<_Name>)
(assert (=
  module_names_0@520@01
  (Set_union module_names_0@519@01 (Set_singleton (_single<_Name> 12902)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13158)))
; [eval] (module_names_0 union Set(_single(13158)))
; [eval] Set(_single(13158))
; [eval] _single(13158)
(declare-const module_names_0@521@01 Set<_Name>)
(assert (=
  module_names_0@521@01
  (Set_union module_names_0@520@01 (Set_singleton (_single<_Name> 13158)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13414)))
; [eval] (module_names_0 union Set(_single(13414)))
; [eval] Set(_single(13414))
; [eval] _single(13414)
(declare-const module_names_0@522@01 Set<_Name>)
(assert (=
  module_names_0@522@01
  (Set_union module_names_0@521@01 (Set_singleton (_single<_Name> 13414)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13670)))
; [eval] (module_names_0 union Set(_single(13670)))
; [eval] Set(_single(13670))
; [eval] _single(13670)
(declare-const module_names_0@523@01 Set<_Name>)
(assert (=
  module_names_0@523@01
  (Set_union module_names_0@522@01 (Set_singleton (_single<_Name> 13670)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13926)))
; [eval] (module_names_0 union Set(_single(13926)))
; [eval] Set(_single(13926))
; [eval] _single(13926)
(declare-const module_names_0@524@01 Set<_Name>)
(assert (=
  module_names_0@524@01
  (Set_union module_names_0@523@01 (Set_singleton (_single<_Name> 13926)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14182)))
; [eval] (module_names_0 union Set(_single(14182)))
; [eval] Set(_single(14182))
; [eval] _single(14182)
(declare-const module_names_0@525@01 Set<_Name>)
(assert (=
  module_names_0@525@01
  (Set_union module_names_0@524@01 (Set_singleton (_single<_Name> 14182)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14438)))
; [eval] (module_names_0 union Set(_single(14438)))
; [eval] Set(_single(14438))
; [eval] _single(14438)
(declare-const module_names_0@526@01 Set<_Name>)
(assert (=
  module_names_0@526@01
  (Set_union module_names_0@525@01 (Set_singleton (_single<_Name> 14438)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(14694)))
; [eval] (module_names_0 union Set(_single(14694)))
; [eval] Set(_single(14694))
; [eval] _single(14694)
(declare-const module_names_0@527@01 Set<_Name>)
(assert (=
  module_names_0@527@01
  (Set_union module_names_0@526@01 (Set_singleton (_single<_Name> 14694)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3158374)))
; [eval] (module_names_0 union Set(_single(3158374)))
; [eval] Set(_single(3158374))
; [eval] _single(3158374)
(declare-const module_names_0@528@01 Set<_Name>)
(assert (=
  module_names_0@528@01
  (Set_union module_names_0@527@01 (Set_singleton (_single<_Name> 3158374)))))
; [exec]
; label __end
; [eval] (forperm _r_76: Ref [MustInvokeBounded(_r_76)] :: false)
; [eval] (forperm _r_76: Ref [MustInvokeUnbounded(_r_76)] :: false)
; [eval] (forperm _r_76: Ref [_r_76.MustReleaseBounded] :: false)
; [eval] (forperm _r_76: Ref [_r_76.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
