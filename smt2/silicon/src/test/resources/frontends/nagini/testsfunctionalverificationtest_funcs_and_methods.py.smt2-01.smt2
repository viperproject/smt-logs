(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:48:14
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
(declare-fun str___val__ ($Snap $Ref) Int)
(declare-fun str___val__%limited ($Snap $Ref) Int)
(declare-fun str___val__%stateless ($Ref) Bool)
(declare-fun str___val__%precondition ($Snap $Ref) Bool)
(declare-fun str___len__ ($Snap $Ref) Int)
(declare-fun str___len__%limited ($Snap $Ref) Int)
(declare-fun str___len__%stateless ($Ref) Bool)
(declare-fun str___len__%precondition ($Snap $Ref) Bool)
(declare-fun int___add__ ($Snap Int Int) Int)
(declare-fun int___add__%limited ($Snap Int Int) Int)
(declare-fun int___add__%stateless (Int Int) Bool)
(declare-fun int___add__%precondition ($Snap Int Int) Bool)
(declare-fun int___le__ ($Snap Int Int) Bool)
(declare-fun int___le__%limited ($Snap Int Int) Bool)
(declare-fun int___le__%stateless (Int Int) Bool)
(declare-fun int___le__%precondition ($Snap Int Int) Bool)
(declare-fun int___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun int___eq__%stateless ($Ref $Ref) Bool)
(declare-fun int___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
(declare-fun _isDefined ($Snap Int) Bool)
(declare-fun _isDefined%limited ($Snap Int) Bool)
(declare-fun _isDefined%stateless (Int) Bool)
(declare-fun _isDefined%precondition ($Snap Int) Bool)
(declare-fun int___sub__ ($Snap Int Int) Int)
(declare-fun int___sub__%limited ($Snap Int Int) Int)
(declare-fun int___sub__%stateless (Int Int) Bool)
(declare-fun int___sub__%precondition ($Snap Int Int) Bool)
(declare-fun bool___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun bool___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun bool___eq__%stateless ($Ref $Ref) Bool)
(declare-fun bool___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun Level ($Snap $Ref) $Perm)
(declare-fun Level%limited ($Snap $Ref) $Perm)
(declare-fun Level%stateless ($Ref) Bool)
(declare-fun Level%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun func_wrong ($Snap $Ref $Ref) $Ref)
(declare-fun func_wrong%limited ($Snap $Ref $Ref) $Ref)
(declare-fun func_wrong%stateless ($Ref $Ref) Bool)
(declare-fun func_wrong%precondition ($Snap $Ref $Ref) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun _checkDefined ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%limited ($Snap $Ref Int) $Ref)
(declare-fun _checkDefined%stateless ($Ref Int) Bool)
(declare-fun _checkDefined%precondition ($Snap $Ref Int) Bool)
(declare-fun func_2_wrong ($Snap $Ref $Ref) $Ref)
(declare-fun func_2_wrong%limited ($Snap $Ref $Ref) $Ref)
(declare-fun func_2_wrong%stateless ($Ref $Ref) Bool)
(declare-fun func_2_wrong%precondition ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun func ($Snap $Ref $Ref) $Ref)
(declare-fun func%limited ($Snap $Ref $Ref) $Ref)
(declare-fun func%stateless ($Ref $Ref) Bool)
(declare-fun func%precondition ($Snap $Ref $Ref) Bool)
(declare-fun func_2 ($Snap $Ref $Ref) $Ref)
(declare-fun func_2%limited ($Snap $Ref $Ref) $Ref)
(declare-fun func_2%stateless ($Ref $Ref) Bool)
(declare-fun func_2%precondition ($Snap $Ref $Ref) Bool)
(declare-fun func1_correct ($Snap $Ref) $Ref)
(declare-fun func1_correct%limited ($Snap $Ref) $Ref)
(declare-fun func1_correct%stateless ($Ref) Bool)
(declare-fun func1_correct%precondition ($Snap $Ref) Bool)
(declare-fun func3 ($Snap $Ref $Ref $Ref) $Ref)
(declare-fun func3%limited ($Snap $Ref $Ref $Ref) $Ref)
(declare-fun func3%stateless ($Ref $Ref $Ref) Bool)
(declare-fun func3%precondition ($Snap $Ref $Ref $Ref) Bool)
(declare-fun func1 ($Snap $Ref) $Ref)
(declare-fun func1%limited ($Snap $Ref) $Ref)
(declare-fun func1%stateless ($Ref) Bool)
(declare-fun func1%precondition ($Snap $Ref) Bool)
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
(declare-fun letvar@91@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@92@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@93@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@94@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@95@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@96@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@97@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@98@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@99@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@101@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@102@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@103@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@104@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@105@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@106@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@107@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@108@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@109@00 ($Snap $Ref $Ref) $Ref)
(declare-fun letvar@110@00 ($Snap $Ref $Ref) $Ref)
(assert (forall ((s@$ $Snap) (box@0@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@0@00) (bool___unbox__ s@$ box@0@00))
  :pattern ((bool___unbox__ s@$ box@0@00))
  :qid |quant-u-3035|)))
(assert (forall ((s@$ $Snap) (box@0@00 $Ref)) (!
  (bool___unbox__%stateless box@0@00)
  :pattern ((bool___unbox__%limited s@$ box@0@00))
  :qid |quant-u-3036|)))
(assert (forall ((s@$ $Snap) (box@0@00 $Ref)) (!
  (let ((result@1@00 (bool___unbox__%limited s@$ box@0@00))) (=>
    (bool___unbox__%precondition s@$ box@0@00)
    (= (__prim__bool___box__%limited $Snap.unit result@1@00) box@0@00)))
  :pattern ((bool___unbox__%limited s@$ box@0@00))
  :qid |quant-u-3087|)))
(assert (forall ((s@$ $Snap) (box@0@00 $Ref)) (!
  (let ((result@1@00 (bool___unbox__%limited s@$ box@0@00))) (=>
    (bool___unbox__%precondition s@$ box@0@00)
    (__prim__bool___box__%precondition $Snap.unit result@1@00)))
  :pattern ((bool___unbox__%limited s@$ box@0@00))
  :qid |quant-u-3088|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@2@00)
    (__prim__bool___box__ s@$ prim@2@00))
  :pattern ((__prim__bool___box__ s@$ prim@2@00))
  :qid |quant-u-3037|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (__prim__bool___box__%stateless prim@2@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3038|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (and
      (= (typeof<PyType> result@3@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@3@00) prim@2@00)
      (= (int___unbox__%limited $Snap.unit result@3@00) (ite prim@2@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3089|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3090|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (bool___unbox__%precondition $Snap.unit result@3@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3091|)))
(assert (forall ((s@$ $Snap) (prim@2@00 Bool)) (!
  (let ((result@3@00 (__prim__bool___box__%limited s@$ prim@2@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@2@00)
    (int___unbox__%precondition $Snap.unit result@3@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@2@00))
  :qid |quant-u-3092|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@4@00) (int___unbox__ s@$ box@4@00))
  :pattern ((int___unbox__ s@$ box@4@00))
  :qid |quant-u-3039|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (int___unbox__%stateless box@4@00)
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3040|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (int___unbox__%limited s@$ box@4@00))) (=>
    (int___unbox__%precondition s@$ box@4@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@5@00) box@4@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@5@00 0)))
          box@4@00)))))
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3093|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (int___unbox__%limited s@$ box@4@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@4@00)
      (not (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@5@00)))
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3094|)))
(assert (forall ((s@$ $Snap) (box@4@00 $Ref)) (!
  (let ((result@5@00 (int___unbox__%limited s@$ box@4@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@4@00)
      (issubtype<Bool> (typeof<PyType> box@4@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@5@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@4@00))
  :qid |quant-u-3095|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@6@00)
    (__prim__int___box__ s@$ prim@6@00))
  :pattern ((__prim__int___box__ s@$ prim@6@00))
  :qid |quant-u-3041|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Int)) (!
  (__prim__int___box__%stateless prim@6@00)
  :pattern ((__prim__int___box__%limited s@$ prim@6@00))
  :qid |quant-u-3042|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Int)) (!
  (let ((result@7@00 (__prim__int___box__%limited s@$ prim@6@00))) (=>
    (__prim__int___box__%precondition s@$ prim@6@00)
    (and
      (= (typeof<PyType> result@7@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@7@00) prim@6@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@6@00))
  :qid |quant-u-3096|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Int)) (!
  (let ((result@7@00 (__prim__int___box__%limited s@$ prim@6@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@6@00))
  :qid |quant-u-3097|)))
(assert (forall ((s@$ $Snap) (prim@6@00 Int)) (!
  (let ((result@7@00 (__prim__int___box__%limited s@$ prim@6@00))) (=>
    (__prim__int___box__%precondition s@$ prim@6@00)
    (int___unbox__%precondition $Snap.unit result@7@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@6@00))
  :qid |quant-u-3098|)))
(assert (forall ((s@$ $Snap) (self@8@00 $Ref)) (!
  (= (str___val__%limited s@$ self@8@00) (str___val__ s@$ self@8@00))
  :pattern ((str___val__ s@$ self@8@00))
  :qid |quant-u-3043|)))
(assert (forall ((s@$ $Snap) (self@8@00 $Ref)) (!
  (str___val__%stateless self@8@00)
  :pattern ((str___val__%limited s@$ self@8@00))
  :qid |quant-u-3044|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (= (str___len__%limited s@$ self@10@00) (str___len__ s@$ self@10@00))
  :pattern ((str___len__ s@$ self@10@00))
  :qid |quant-u-3045|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (str___len__%stateless self@10@00)
  :pattern ((str___len__%limited s@$ self@10@00))
  :qid |quant-u-3046|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (let ((result@11@00 (str___len__%limited s@$ self@10@00))) (=>
    (str___len__%precondition s@$ self@10@00)
    (>= result@11@00 0)))
  :pattern ((str___len__%limited s@$ self@10@00))
  :qid |quant-u-3099|)))
(assert (forall ((s@$ $Snap) (self@10@00 $Ref)) (!
  (let ((result@11@00 (str___len__%limited s@$ self@10@00))) true)
  :pattern ((str___len__%limited s@$ self@10@00))
  :qid |quant-u-3100|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (=
    (int___add__%limited s@$ self@12@00 other@13@00)
    (int___add__ s@$ self@12@00 other@13@00))
  :pattern ((int___add__ s@$ self@12@00 other@13@00))
  :qid |quant-u-3047|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (int___add__%stateless self@12@00 other@13@00)
  :pattern ((int___add__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-3048|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (=>
    (int___add__%precondition s@$ self@12@00 other@13@00)
    (= (int___add__ s@$ self@12@00 other@13@00) (+ self@12@00 other@13@00)))
  :pattern ((int___add__ s@$ self@12@00 other@13@00))
  :qid |quant-u-3101|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  true
  :pattern ((int___add__ s@$ self@12@00 other@13@00))
  :qid |quant-u-3102|)))
(assert (forall ((s@$ $Snap) (self@15@00 Int) (other@16@00 Int)) (!
  (=
    (int___le__%limited s@$ self@15@00 other@16@00)
    (int___le__ s@$ self@15@00 other@16@00))
  :pattern ((int___le__ s@$ self@15@00 other@16@00))
  :qid |quant-u-3049|)))
(assert (forall ((s@$ $Snap) (self@15@00 Int) (other@16@00 Int)) (!
  (int___le__%stateless self@15@00 other@16@00)
  :pattern ((int___le__%limited s@$ self@15@00 other@16@00))
  :qid |quant-u-3050|)))
(assert (forall ((s@$ $Snap) (self@15@00 Int) (other@16@00 Int)) (!
  (=>
    (int___le__%precondition s@$ self@15@00 other@16@00)
    (= (int___le__ s@$ self@15@00 other@16@00) (<= self@15@00 other@16@00)))
  :pattern ((int___le__ s@$ self@15@00 other@16@00))
  :qid |quant-u-3103|)))
(assert (forall ((s@$ $Snap) (self@15@00 Int) (other@16@00 Int)) (!
  true
  :pattern ((int___le__ s@$ self@15@00 other@16@00))
  :qid |quant-u-3104|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=
    (int___eq__%limited s@$ self@18@00 other@19@00)
    (int___eq__ s@$ self@18@00 other@19@00))
  :pattern ((int___eq__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3051|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (int___eq__%stateless self@18@00 other@19@00)
  :pattern ((int___eq__%limited s@$ self@18@00 other@19@00))
  :qid |quant-u-3052|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@18@00 other@19@00)
    (=
      (int___eq__ s@$ self@18@00 other@19@00)
      (=
        (int___unbox__ $Snap.unit self@18@00)
        (int___unbox__ $Snap.unit other@19@00))))
  :pattern ((int___eq__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3105|)))
(assert (forall ((s@$ $Snap) (self@18@00 $Ref) (other@19@00 $Ref)) (!
  (=>
    (int___eq__%precondition s@$ self@18@00 other@19@00)
    (and
      (int___unbox__%precondition $Snap.unit self@18@00)
      (int___unbox__%precondition $Snap.unit other@19@00)))
  :pattern ((int___eq__ s@$ self@18@00 other@19@00))
  :qid |quant-u-3106|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@21@00 other@22@00)
    (int___gt__ s@$ self@21@00 other@22@00))
  :pattern ((int___gt__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3053|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (int___gt__%stateless self@21@00 other@22@00)
  :pattern ((int___gt__%limited s@$ self@21@00 other@22@00))
  :qid |quant-u-3054|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@21@00 other@22@00)
    (= (int___gt__ s@$ self@21@00 other@22@00) (> self@21@00 other@22@00)))
  :pattern ((int___gt__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3107|)))
(assert (forall ((s@$ $Snap) (self@21@00 Int) (other@22@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@21@00 other@22@00))
  :qid |quant-u-3108|)))
(assert (forall ((s@$ $Snap) (id@24@00 Int)) (!
  (= (_isDefined%limited s@$ id@24@00) (_isDefined s@$ id@24@00))
  :pattern ((_isDefined s@$ id@24@00))
  :qid |quant-u-3055|)))
(assert (forall ((s@$ $Snap) (id@24@00 Int)) (!
  (_isDefined%stateless id@24@00)
  :pattern ((_isDefined%limited s@$ id@24@00))
  :qid |quant-u-3056|)))
(assert (forall ((s@$ $Snap) (self@26@00 Int) (other@27@00 Int)) (!
  (=
    (int___sub__%limited s@$ self@26@00 other@27@00)
    (int___sub__ s@$ self@26@00 other@27@00))
  :pattern ((int___sub__ s@$ self@26@00 other@27@00))
  :qid |quant-u-3057|)))
(assert (forall ((s@$ $Snap) (self@26@00 Int) (other@27@00 Int)) (!
  (int___sub__%stateless self@26@00 other@27@00)
  :pattern ((int___sub__%limited s@$ self@26@00 other@27@00))
  :qid |quant-u-3058|)))
(assert (forall ((s@$ $Snap) (self@26@00 Int) (other@27@00 Int)) (!
  (=>
    (int___sub__%precondition s@$ self@26@00 other@27@00)
    (= (int___sub__ s@$ self@26@00 other@27@00) (- self@26@00 other@27@00)))
  :pattern ((int___sub__ s@$ self@26@00 other@27@00))
  :qid |quant-u-3109|)))
(assert (forall ((s@$ $Snap) (self@26@00 Int) (other@27@00 Int)) (!
  true
  :pattern ((int___sub__ s@$ self@26@00 other@27@00))
  :qid |quant-u-3110|)))
(assert (forall ((s@$ $Snap) (self@29@00 $Ref) (other@30@00 $Ref)) (!
  (=
    (bool___eq__%limited s@$ self@29@00 other@30@00)
    (bool___eq__ s@$ self@29@00 other@30@00))
  :pattern ((bool___eq__ s@$ self@29@00 other@30@00))
  :qid |quant-u-3059|)))
(assert (forall ((s@$ $Snap) (self@29@00 $Ref) (other@30@00 $Ref)) (!
  (bool___eq__%stateless self@29@00 other@30@00)
  :pattern ((bool___eq__%limited s@$ self@29@00 other@30@00))
  :qid |quant-u-3060|)))
(assert (forall ((s@$ $Snap) (self@29@00 $Ref) (other@30@00 $Ref)) (!
  (=>
    (bool___eq__%precondition s@$ self@29@00 other@30@00)
    (=
      (bool___eq__ s@$ self@29@00 other@30@00)
      (=
        (bool___unbox__ $Snap.unit self@29@00)
        (bool___unbox__ $Snap.unit other@30@00))))
  :pattern ((bool___eq__ s@$ self@29@00 other@30@00))
  :qid |quant-u-3111|)))
(assert (forall ((s@$ $Snap) (self@29@00 $Ref) (other@30@00 $Ref)) (!
  (=>
    (bool___eq__%precondition s@$ self@29@00 other@30@00)
    (and
      (bool___unbox__%precondition $Snap.unit self@29@00)
      (bool___unbox__%precondition $Snap.unit other@30@00)))
  :pattern ((bool___eq__ s@$ self@29@00 other@30@00))
  :qid |quant-u-3112|)))
(assert (forall ((s@$ $Snap) (r@32@00 $Ref)) (!
  (= (Level%limited s@$ r@32@00) (Level s@$ r@32@00))
  :pattern ((Level s@$ r@32@00))
  :qid |quant-u-3061|)))
(assert (forall ((s@$ $Snap) (r@32@00 $Ref)) (!
  (Level%stateless r@32@00)
  :pattern ((Level%limited s@$ r@32@00))
  :qid |quant-u-3062|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (=
    (str___create__%limited s@$ len@34@00 value@35@00)
    (str___create__ s@$ len@34@00 value@35@00))
  :pattern ((str___create__ s@$ len@34@00 value@35@00))
  :qid |quant-u-3063|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (str___create__%stateless len@34@00 value@35@00)
  :pattern ((str___create__%limited s@$ len@34@00 value@35@00))
  :qid |quant-u-3064|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (let ((result@36@00 (str___create__%limited s@$ len@34@00 value@35@00))) (=>
    (str___create__%precondition s@$ len@34@00 value@35@00)
    (and
      (= (str___len__ $Snap.unit result@36@00) len@34@00)
      (= (str___val__ $Snap.unit result@36@00) value@35@00)
      (= (typeof<PyType> result@36@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@34@00 value@35@00))
  :qid |quant-u-3113|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (let ((result@36@00 (str___create__%limited s@$ len@34@00 value@35@00))) (=>
    (str___create__%precondition s@$ len@34@00 value@35@00)
    (str___len__%precondition $Snap.unit result@36@00)))
  :pattern ((str___create__%limited s@$ len@34@00 value@35@00))
  :qid |quant-u-3114|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (let ((result@36@00 (str___create__%limited s@$ len@34@00 value@35@00))) (=>
    (str___create__%precondition s@$ len@34@00 value@35@00)
    (str___val__%precondition $Snap.unit result@36@00)))
  :pattern ((str___create__%limited s@$ len@34@00 value@35@00))
  :qid |quant-u-3115|)))
(assert (forall ((s@$ $Snap) (len@34@00 Int) (value@35@00 Int)) (!
  (let ((result@36@00 (str___create__%limited s@$ len@34@00 value@35@00))) true)
  :pattern ((str___create__%limited s@$ len@34@00 value@35@00))
  :qid |quant-u-3116|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (=
    (func_wrong%limited s@$ b_2@37@00 c_0@38@00)
    (func_wrong s@$ b_2@37@00 c_0@38@00))
  :pattern ((func_wrong s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3065|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (func_wrong%stateless b_2@37@00 c_0@38@00)
  :pattern ((func_wrong%limited s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3066|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (let ((result@39@00 (func_wrong%limited s@$ b_2@37@00 c_0@38@00))) (=>
    (func_wrong%precondition s@$ b_2@37@00 c_0@38@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@39@00) (as int<PyType>  PyType))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@39@00 b_2@37@00))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 2))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@39@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 6)))))))
  :pattern ((func_wrong%limited s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3117|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (let ((result@39@00 (func_wrong%limited s@$ b_2@37@00 c_0@38@00))) true)
  :pattern ((func_wrong%limited s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3118|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (let ((result@39@00 (func_wrong%limited s@$ b_2@37@00 c_0@38@00))) (=>
    (func_wrong%precondition s@$ b_2@37@00 c_0@38@00)
    (and
      (and
        (int___unbox__%precondition $Snap.unit b_2@37@00)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@39@00 b_2@37@00)))))
  :pattern ((func_wrong%limited s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3119|)))
(assert (forall ((s@$ $Snap) (b_2@37@00 $Ref) (c_0@38@00 $Ref)) (!
  (let ((result@39@00 (func_wrong%limited s@$ b_2@37@00 c_0@38@00))) (=>
    (func_wrong%precondition s@$ b_2@37@00 c_0@38@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_2@37@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2)
          (and
            (and
              (int___unbox__%precondition $Snap.unit b_2@37@00)
              (int___unbox__%precondition $Snap.unit c_0@38@00)
              (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)))
            (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 2))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 2))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_2@37@00)
                (int___unbox__%precondition $Snap.unit c_0@38@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 6))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 6)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@39@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_2@37@00) (int___unbox__ $Snap.unit c_0@38@00)) 6))))))))
  :pattern ((func_wrong%limited s@$ b_2@37@00 c_0@38@00))
  :qid |quant-u-3120|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3067|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3068|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@41@00 id@42@00)
    (_checkDefined s@$ val@41@00 id@42@00))
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-3069|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (_checkDefined%stateless val@41@00 id@42@00)
  :pattern ((_checkDefined%limited s@$ val@41@00 id@42@00))
  :qid |quant-u-3070|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@41@00 id@42@00)
    (= (_checkDefined s@$ val@41@00 id@42@00) val@41@00))
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-3121|)))
(assert (forall ((s@$ $Snap) (val@41@00 $Ref) (id@42@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@41@00 id@42@00))
  :qid |quant-u-3122|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (=
    (func_2_wrong%limited s@$ b_4@44@00 c_2@45@00)
    (func_2_wrong s@$ b_4@44@00 c_2@45@00))
  :pattern ((func_2_wrong s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3071|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (func_2_wrong%stateless b_4@44@00 c_2@45@00)
  :pattern ((func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3072|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (let ((result@46@00 (func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))) (=>
    (func_2_wrong%precondition s@$ b_4@44@00 c_2@45@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@46@00) (as int<PyType>  PyType))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@46@00 b_4@44@00))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 2))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@46@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 6)))))))
  :pattern ((func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3123|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (let ((result@46@00 (func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))) true)
  :pattern ((func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3124|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (let ((result@46@00 (func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))) (=>
    (func_2_wrong%precondition s@$ b_4@44@00 c_2@45@00)
    (and
      (and
        (int___unbox__%precondition $Snap.unit b_4@44@00)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@46@00 b_4@44@00)))))
  :pattern ((func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3125|)))
(assert (forall ((s@$ $Snap) (b_4@44@00 $Ref) (c_2@45@00 $Ref)) (!
  (let ((result@46@00 (func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))) (=>
    (func_2_wrong%precondition s@$ b_4@44@00 c_2@45@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_4@44@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2)
          (and
            (and
              (int___unbox__%precondition $Snap.unit b_4@44@00)
              (int___unbox__%precondition $Snap.unit c_2@45@00)
              (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)))
            (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 2))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 2))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_4@44@00)
                (int___unbox__%precondition $Snap.unit c_2@45@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 6))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 6)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@46@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_4@44@00) (int___unbox__ $Snap.unit c_2@45@00)) 6))))))))
  :pattern ((func_2_wrong%limited s@$ b_4@44@00 c_2@45@00))
  :qid |quant-u-3126|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@47@00 other@48@00)
    (str___eq__ s@$ self@47@00 other@48@00))
  :pattern ((str___eq__ s@$ self@47@00 other@48@00))
  :qid |quant-u-3073|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (str___eq__%stateless self@47@00 other@48@00)
  :pattern ((str___eq__%limited s@$ self@47@00 other@48@00))
  :qid |quant-u-3074|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (let ((result@49@00 (str___eq__%limited s@$ self@47@00 other@48@00))) (=>
    (str___eq__%precondition s@$ self@47@00 other@48@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@47@00)
          (str___val__ $Snap.unit other@48@00))
        result@49@00)
      (=>
        result@49@00
        (=
          (str___len__ $Snap.unit self@47@00)
          (str___len__ $Snap.unit other@48@00))))))
  :pattern ((str___eq__%limited s@$ self@47@00 other@48@00))
  :qid |quant-u-3127|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (let ((result@49@00 (str___eq__%limited s@$ self@47@00 other@48@00))) (=>
    (str___eq__%precondition s@$ self@47@00 other@48@00)
    (and
      (str___val__%precondition $Snap.unit self@47@00)
      (str___val__%precondition $Snap.unit other@48@00))))
  :pattern ((str___eq__%limited s@$ self@47@00 other@48@00))
  :qid |quant-u-3128|)))
(assert (forall ((s@$ $Snap) (self@47@00 $Ref) (other@48@00 $Ref)) (!
  (let ((result@49@00 (str___eq__%limited s@$ self@47@00 other@48@00))) (=>
    (and (str___eq__%precondition s@$ self@47@00 other@48@00) result@49@00)
    (and
      (str___len__%precondition $Snap.unit self@47@00)
      (str___len__%precondition $Snap.unit other@48@00))))
  :pattern ((str___eq__%limited s@$ self@47@00 other@48@00))
  :qid |quant-u-3129|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (= (func%limited s@$ b_1@50@00 c@51@00) (func s@$ b_1@50@00 c@51@00))
  :pattern ((func s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3075|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (func%stateless b_1@50@00 c@51@00)
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3076|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (let ((result@52@00 (func%limited s@$ b_1@50@00 c@51@00))) (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@52@00) (as int<PyType>  PyType))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@52@00 b_1@50@00))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (and
            (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 2)
            (int___le__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4)))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@52@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@52@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 6)))))))
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3130|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (let ((result@52@00 (func%limited s@$ b_1@50@00 c@51@00))) true)
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3131|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (let ((result@52@00 (func%limited s@$ b_1@50@00 c@51@00))) (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (and
      (and
        (int___unbox__%precondition $Snap.unit b_1@50@00)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@52@00 b_1@50@00)))))
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3132|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (let ((result@52@00 (func%limited s@$ b_1@50@00 c@51@00))) (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_1@50@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_1@50@00)
                (int___unbox__%precondition $Snap.unit c@51@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
              (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 2))
            (=>
              (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 2)
              (and
                (and
                  (int___unbox__%precondition $Snap.unit b_1@50@00)
                  (int___unbox__%precondition $Snap.unit c@51@00)
                  (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
                (int___le__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (and
            (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 2)
            (int___le__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4)))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_1@50@00)
                (int___unbox__%precondition $Snap.unit c@51@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@52@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))))))))
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3133|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (let ((result@52@00 (func%limited s@$ b_1@50@00 c@51@00))) (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_1@50@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (and
            (and
              (int___unbox__%precondition $Snap.unit b_1@50@00)
              (int___unbox__%precondition $Snap.unit c@51@00)
              (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
            (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 4))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_1@50@00)
                (int___unbox__%precondition $Snap.unit c@51@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 6))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 6)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@52@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)) 6))))))))
  :pattern ((func%limited s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3134|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (=
      (func s@$ b_1@50@00 c@51@00)
      (let ((cond_2 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)))) (ite
        (bool___unbox__ $Snap.unit cond_2)
        b_1@50@00
        (let ((a_6 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00))))) (let ((cond_0_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2)))) (let ((a_7 (ite
          (bool___unbox__ $Snap.unit cond_0_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2))
          a_6))) (let ((a_8 (ite
          (bool___unbox__ $Snap.unit cond_0_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_7) 2))
          a_7))) (let ((tmp_1 (__prim__int___box__ $Snap.unit 8))) (let ((tmp_2 (__prim__int___box__ $Snap.unit (-
          (int___unbox__ $Snap.unit tmp_1)
          6)))) (let ((cond_1_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_8) 8)))) (let ((a_9 (ite
          (bool___unbox__ $Snap.unit cond_1_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_8) (int___unbox__ $Snap.unit tmp_2)))
          a_8))) a_9))))))))))))
  :pattern ((func s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3135|)))
(assert (forall ((s@$ $Snap) (b_1@50@00 $Ref) (c@51@00 $Ref)) (!
  (=>
    (func%precondition s@$ b_1@50@00 c@51@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_1@50@00)
          (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2))
        (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)))
      (let ((cond_2 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) 2)))) (and
        (bool___unbox__%precondition $Snap.unit cond_2)
        (ite
          (bool___unbox__ $Snap.unit cond_2)
          true
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_1@50@00)
                (int___unbox__%precondition $Snap.unit c@51@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00)))
              (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00))))
            (let ((a_6 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_1@50@00) (int___unbox__ $Snap.unit c@51@00))))) (and
              (and
                (and
                  (int___unbox__%precondition $Snap.unit a_6)
                  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit a_6) 2))
                (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2)))
              (let ((cond_0_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2)))) (and
                (and
                  (bool___unbox__%precondition $Snap.unit cond_0_0)
                  (ite
                    (bool___unbox__ $Snap.unit cond_0_0)
                    (and
                      (and
                        (int___unbox__%precondition $Snap.unit a_6)
                        (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_6) 2))
                      (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2)))
                    true))
                (let ((a_7 (ite
                  (bool___unbox__ $Snap.unit cond_0_0)
                  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_6) 2))
                  a_6))) (and
                  (and
                    (bool___unbox__%precondition $Snap.unit cond_0_0)
                    (ite
                      (bool___unbox__ $Snap.unit cond_0_0)
                      (and
                        (and
                          (int___unbox__%precondition $Snap.unit a_7)
                          (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_7) 2))
                        (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_7) 2)))
                      true))
                  (let ((a_8 (ite
                    (bool___unbox__ $Snap.unit cond_0_0)
                    (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_7) 2))
                    a_7))) (and
                    (__prim__int___box__%precondition $Snap.unit 8)
                    (let ((tmp_1 (__prim__int___box__ $Snap.unit 8))) (and
                      (and
                        (int___unbox__%precondition $Snap.unit tmp_1)
                        (__prim__int___box__%precondition $Snap.unit (-
                          (int___unbox__ $Snap.unit tmp_1)
                          6)))
                      (let ((tmp_2 (__prim__int___box__ $Snap.unit (-
                        (int___unbox__ $Snap.unit tmp_1)
                        6)))) (and
                        (and
                          (and
                            (int___unbox__%precondition $Snap.unit a_8)
                            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit a_8) 8))
                          (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_8) 8)))
                        (let ((cond_1_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_8) 8)))) (and
                          (and
                            (bool___unbox__%precondition $Snap.unit cond_1_0)
                            (ite
                              (bool___unbox__ $Snap.unit cond_1_0)
                              (and
                                (and
                                  (int___unbox__%precondition $Snap.unit a_8)
                                  (int___unbox__%precondition $Snap.unit tmp_2)
                                  (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_8) (int___unbox__ $Snap.unit tmp_2)))
                                (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_8) (int___unbox__ $Snap.unit tmp_2))))
                              true))
                          (let ((a_9 (ite
                            (bool___unbox__ $Snap.unit cond_1_0)
                            (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_8) (int___unbox__ $Snap.unit tmp_2)))
                            a_8))) true)))))))))))))))))))))
  :pattern ((func s@$ b_1@50@00 c@51@00))
  :qid |quant-u-3136|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (= (func_2%limited s@$ b_3@53@00 c_1@54@00) (func_2 s@$ b_3@53@00 c_1@54@00))
  :pattern ((func_2 s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3077|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (func_2%stateless b_3@53@00 c_1@54@00)
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3078|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (let ((result@55@00 (func_2%limited s@$ b_3@53@00 c_1@54@00))) (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@55@00) (as int<PyType>  PyType))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@55@00 b_3@53@00))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (and
            (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 2)
            (int___le__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4)))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@55@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@55@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 6)))))))
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3137|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (let ((result@55@00 (func_2%limited s@$ b_3@53@00 c_1@54@00))) true)
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3138|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (let ((result@55@00 (func_2%limited s@$ b_3@53@00 c_1@54@00))) (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (and
      (and
        (int___unbox__%precondition $Snap.unit b_3@53@00)
        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2))
      (=>
        (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@55@00 b_3@53@00)))))
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3139|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (let ((result@55@00 (func_2%limited s@$ b_3@53@00 c_1@54@00))) (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_3@53@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_3@53@00)
                (int___unbox__%precondition $Snap.unit c_1@54@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
              (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 2))
            (=>
              (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 2)
              (and
                (and
                  (int___unbox__%precondition $Snap.unit b_3@53@00)
                  (int___unbox__%precondition $Snap.unit c_1@54@00)
                  (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
                (int___le__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (and
            (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 2)
            (int___le__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4)))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_3@53@00)
                (int___unbox__%precondition $Snap.unit c_1@54@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@55@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))))))))
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3140|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (let ((result@55@00 (func_2%limited s@$ b_3@53@00 c_1@54@00))) (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (and
      (and
        (and
          (int___unbox__%precondition $Snap.unit b_3@53@00)
          (int___le__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2))
        (=>
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (and
            (and
              (int___unbox__%precondition $Snap.unit b_3@53@00)
              (int___unbox__%precondition $Snap.unit c_1@54@00)
              (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
            (int___gt__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))))
      (=>
        (and
          (int___le__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)
          (int___gt__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 4))
        (and
          (and
            (and
              (and
                (int___unbox__%precondition $Snap.unit b_3@53@00)
                (int___unbox__%precondition $Snap.unit c_1@54@00)
                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
              (int___add__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 6))
            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 6)))
          (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@55@00 (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 6))))))))
  :pattern ((func_2%limited s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3141|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (=
      (func_2 s@$ b_3@53@00 c_1@54@00)
      (let ((a_14 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 13)))) (let ((cond_6_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)))) (ite
        (bool___unbox__ $Snap.unit cond_6_0)
        b_3@53@00
        (let ((a_15 (ite
          (not (bool___unbox__ $Snap.unit cond_6_0))
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_14) 13))
          a_14))) (let ((tmp_3 (__prim__int___box__ $Snap.unit 1))) (let ((tmp_4 (__prim__int___box__ $Snap.unit (*
          (int___unbox__ $Snap.unit tmp_3)
          2)))) (let ((cond_7_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2)))) (let ((a_16 (ite
          (bool___unbox__ $Snap.unit cond_7_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2))
          a_15))) (let ((a_17 (ite
          (bool___unbox__ $Snap.unit cond_7_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_16) (int___unbox__ $Snap.unit tmp_4)))
          a_16))) (let ((cond_8_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_17) 8)))) (let ((a_18 (ite
          (bool___unbox__ $Snap.unit cond_8_0)
          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_17) 2))
          a_17))) a_18)))))))))))))
  :pattern ((func_2 s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3142|)))
(assert (forall ((s@$ $Snap) (b_3@53@00 $Ref) (c_1@54@00 $Ref)) (!
  (=>
    (func_2%precondition s@$ b_3@53@00 c_1@54@00)
    (and
      (and
        (and
          (and
            (int___unbox__%precondition $Snap.unit b_3@53@00)
            (int___unbox__%precondition $Snap.unit c_1@54@00)
            (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)))
          (int___sub__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 13))
        (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 13)))
      (let ((a_14 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) (int___unbox__ $Snap.unit c_1@54@00)) 13)))) (and
        (and
          (and
            (int___unbox__%precondition $Snap.unit b_3@53@00)
            (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2))
          (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)))
        (let ((cond_6_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit b_3@53@00) 2)))) (and
          (bool___unbox__%precondition $Snap.unit cond_6_0)
          (ite
            (bool___unbox__ $Snap.unit cond_6_0)
            true
            (and
              (and
                (bool___unbox__%precondition $Snap.unit cond_6_0)
                (ite
                  (not (bool___unbox__ $Snap.unit cond_6_0))
                  (and
                    (and
                      (int___unbox__%precondition $Snap.unit a_14)
                      (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_14) 13))
                    (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_14) 13)))
                  true))
              (let ((a_15 (ite
                (not (bool___unbox__ $Snap.unit cond_6_0))
                (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_14) 13))
                a_14))) (and
                (__prim__int___box__%precondition $Snap.unit 1)
                (let ((tmp_3 (__prim__int___box__ $Snap.unit 1))) (and
                  (and
                    (int___unbox__%precondition $Snap.unit tmp_3)
                    (__prim__int___box__%precondition $Snap.unit (*
                      (int___unbox__ $Snap.unit tmp_3)
                      2)))
                  (let ((tmp_4 (__prim__int___box__ $Snap.unit (*
                    (int___unbox__ $Snap.unit tmp_3)
                    2)))) (and
                    (and
                      (and
                        (int___unbox__%precondition $Snap.unit a_15)
                        (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit a_15) 2))
                      (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2)))
                    (let ((cond_7_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2)))) (and
                      (and
                        (bool___unbox__%precondition $Snap.unit cond_7_0)
                        (ite
                          (bool___unbox__ $Snap.unit cond_7_0)
                          (and
                            (and
                              (int___unbox__%precondition $Snap.unit a_15)
                              (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_15) 2))
                            (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2)))
                          true))
                      (let ((a_16 (ite
                        (bool___unbox__ $Snap.unit cond_7_0)
                        (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_15) 2))
                        a_15))) (and
                        (and
                          (bool___unbox__%precondition $Snap.unit cond_7_0)
                          (ite
                            (bool___unbox__ $Snap.unit cond_7_0)
                            (and
                              (and
                                (int___unbox__%precondition $Snap.unit a_16)
                                (int___unbox__%precondition $Snap.unit tmp_4)
                                (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_16) (int___unbox__ $Snap.unit tmp_4)))
                              (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_16) (int___unbox__ $Snap.unit tmp_4))))
                            true))
                        (let ((a_17 (ite
                          (bool___unbox__ $Snap.unit cond_7_0)
                          (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_16) (int___unbox__ $Snap.unit tmp_4)))
                          a_16))) (and
                          (and
                            (and
                              (int___unbox__%precondition $Snap.unit a_17)
                              (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit a_17) 8))
                            (__prim__bool___box__%precondition $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_17) 8)))
                          (let ((cond_8_0 (__prim__bool___box__ $Snap.unit (int___gt__ $Snap.unit (int___unbox__ $Snap.unit a_17) 8)))) (and
                            (and
                              (bool___unbox__%precondition $Snap.unit cond_8_0)
                              (ite
                                (bool___unbox__ $Snap.unit cond_8_0)
                                (and
                                  (and
                                    (int___unbox__%precondition $Snap.unit a_17)
                                    (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit a_17) 2))
                                  (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_17) 2)))
                                true))
                            (let ((a_18 (ite
                              (bool___unbox__ $Snap.unit cond_8_0)
                              (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit a_17) 2))
                              a_17))) true)))))))))))))))))))))))
  :pattern ((func_2 s@$ b_3@53@00 c_1@54@00))
  :qid |quant-u-3143|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (= (func1_correct%limited s@$ b_0@56@00) (func1_correct s@$ b_0@56@00))
  :pattern ((func1_correct s@$ b_0@56@00))
  :qid |quant-u-3079|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (func1_correct%stateless b_0@56@00)
  :pattern ((func1_correct%limited s@$ b_0@56@00))
  :qid |quant-u-3080|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (let ((result@57@00 (func1_correct%limited s@$ b_0@56@00))) (=>
    (func1_correct%precondition s@$ b_0@56@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@57@00) (as int<PyType>  PyType))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@57@00 (__prim__int___box__ $Snap.unit 32)))))
  :pattern ((func1_correct%limited s@$ b_0@56@00))
  :qid |quant-u-3144|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (let ((result@57@00 (func1_correct%limited s@$ b_0@56@00))) true)
  :pattern ((func1_correct%limited s@$ b_0@56@00))
  :qid |quant-u-3145|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (let ((result@57@00 (func1_correct%limited s@$ b_0@56@00))) (=>
    (func1_correct%precondition s@$ b_0@56@00)
    (and
      (__prim__int___box__%precondition $Snap.unit 32)
      (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@57@00 (__prim__int___box__ $Snap.unit 32)))))
  :pattern ((func1_correct%limited s@$ b_0@56@00))
  :qid |quant-u-3146|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (=>
    (func1_correct%precondition s@$ b_0@56@00)
    (= (func1_correct s@$ b_0@56@00) (__prim__int___box__ $Snap.unit 32)))
  :pattern ((func1_correct s@$ b_0@56@00))
  :qid |quant-u-3147|)))
(assert (forall ((s@$ $Snap) (b_0@56@00 $Ref)) (!
  (=>
    (func1_correct%precondition s@$ b_0@56@00)
    (__prim__int___box__%precondition $Snap.unit 32))
  :pattern ((func1_correct s@$ b_0@56@00))
  :qid |quant-u-3148|)))
(assert (forall ((s@$ $Snap) (x_0@58@00 $Ref) (y@59@00 $Ref) (z@60@00 $Ref)) (!
  (=
    (func3%limited s@$ x_0@58@00 y@59@00 z@60@00)
    (func3 s@$ x_0@58@00 y@59@00 z@60@00))
  :pattern ((func3 s@$ x_0@58@00 y@59@00 z@60@00))
  :qid |quant-u-3081|)))
(assert (forall ((s@$ $Snap) (x_0@58@00 $Ref) (y@59@00 $Ref) (z@60@00 $Ref)) (!
  (func3%stateless x_0@58@00 y@59@00 z@60@00)
  :pattern ((func3%limited s@$ x_0@58@00 y@59@00 z@60@00))
  :qid |quant-u-3082|)))
(assert (forall ((s@$ $Snap) (x_0@58@00 $Ref) (y@59@00 $Ref) (z@60@00 $Ref)) (!
  (let ((result@61@00 (func3%limited s@$ x_0@58@00 y@59@00 z@60@00))) (=>
    (func3%precondition s@$ x_0@58@00 y@59@00 z@60@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@61@00) (as bool<PyType>  PyType))
      (bool___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@61@00 (__prim__bool___box__ $Snap.unit (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) x_0@58@00 y@59@00)))))))
  :pattern ((func3%limited s@$ x_0@58@00 y@59@00 z@60@00))
  :qid |quant-u-3149|)))
(assert (forall ((s@$ $Snap) (x_0@58@00 $Ref) (y@59@00 $Ref) (z@60@00 $Ref)) (!
  (let ((result@61@00 (func3%limited s@$ x_0@58@00 y@59@00 z@60@00))) true)
  :pattern ((func3%limited s@$ x_0@58@00 y@59@00 z@60@00))
  :qid |quant-u-3150|)))
(assert (forall ((s@$ $Snap) (x_0@58@00 $Ref) (y@59@00 $Ref) (z@60@00 $Ref)) (!
  (let ((result@61@00 (func3%limited s@$ x_0@58@00 y@59@00 z@60@00))) (=>
    (func3%precondition s@$ x_0@58@00 y@59@00 z@60@00)
    (and
      (and
        (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) x_0@58@00 y@59@00)
        (__prim__bool___box__%precondition $Snap.unit (not
          (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) x_0@58@00 y@59@00))))
      (bool___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@61@00 (__prim__bool___box__ $Snap.unit (not
        (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) x_0@58@00 y@59@00)))))))
  :pattern ((func3%limited s@$ x_0@58@00 y@59@00 z@60@00))
  :qid |quant-u-3151|)))
(assert (forall ((s@$ $Snap) (b@62@00 $Ref)) (!
  (= (func1%limited s@$ b@62@00) (func1 s@$ b@62@00))
  :pattern ((func1 s@$ b@62@00))
  :qid |quant-u-3083|)))
(assert (forall ((s@$ $Snap) (b@62@00 $Ref)) (!
  (func1%stateless b@62@00)
  :pattern ((func1%limited s@$ b@62@00))
  :qid |quant-u-3084|)))
(assert (forall ((s@$ $Snap) (b@62@00 $Ref)) (!
  (let ((result@63@00 (func1%limited s@$ b@62@00))) (=>
    (func1%precondition s@$ b@62@00)
    (and
      (issubtype<Bool> (typeof<PyType> result@63@00) (as int<PyType>  PyType))
      (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) result@63@00 (__prim__int___box__ $Snap.unit 32)))))
  :pattern ((func1%limited s@$ b@62@00))
  :qid |quant-u-3152|)))
(assert (forall ((s@$ $Snap) (b@62@00 $Ref)) (!
  (let ((result@63@00 (func1%limited s@$ b@62@00))) true)
  :pattern ((func1%limited s@$ b@62@00))
  :qid |quant-u-3153|)))
(assert (forall ((s@$ $Snap) (b@62@00 $Ref)) (!
  (let ((result@63@00 (func1%limited s@$ b@62@00))) (=>
    (func1%precondition s@$ b@62@00)
    (and
      (__prim__int___box__%precondition $Snap.unit 32)
      (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) result@63@00 (__prim__int___box__ $Snap.unit 32)))))
  :pattern ((func1%limited s@$ b@62@00))
  :qid |quant-u-3154|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3085|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3086|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- method1 ----------
(declare-const _cthread_163@0@01 $Ref)
(declare-const _caller_measures_163@1@01 Seq<Measure$>)
(declare-const _residue_163@2@01 $Perm)
(declare-const b_5@3@01 $Ref)
(declare-const _current_wait_level_163@4@01 $Perm)
(declare-const _res@5@01 $Ref)
(declare-const _cthread_163@6@01 $Ref)
(declare-const _caller_measures_163@7@01 Seq<Measure$>)
(declare-const _residue_163@8@01 $Perm)
(declare-const b_5@9@01 $Ref)
(declare-const _current_wait_level_163@10@01 $Perm)
(declare-const _res@11@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@6@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] issubtype(typeof(b_5), int())
; [eval] typeof(b_5)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> b_5@9@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] int___eq__(b_5, __prim__int___box__(15))
; [eval] __prim__int___box__(15)
(push) ; 2
(assert (__prim__int___box__%precondition $Snap.unit 15))
(pop) ; 2
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 15))
(push) ; 2
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) b_5@9@01 (__prim__int___box__ $Snap.unit 15)))
(pop) ; 2
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) b_5@9@01 (__prim__int___box__ $Snap.unit 15))))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) b_5@9@01 (__prim__int___box__ $Snap.unit 15)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
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
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@13@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@01))
    ($Snap.second ($Snap.second $t@13@01)))))
(assert (= ($Snap.first ($Snap.second $t@13@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@13@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@13@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_163@8@01 _current_wait_level_163@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@13@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> _res@11@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  $Snap.unit))
; [eval] int___eq__(_res, __prim__int___box__(32))
; [eval] __prim__int___box__(32)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 32))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 32))
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@11@01 (__prim__int___box__ $Snap.unit 32)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@11@01 (__prim__int___box__ $Snap.unit 32))))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@11@01 (__prim__int___box__ $Snap.unit 32)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@14@01 $Ref)
; [exec]
; var a_4: Ref
(declare-const a_4@15@01 $Ref)
; [exec]
; var b_6: Ref
(declare-const b_6@16@01 $Ref)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@17@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@18@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; b_6 := b_5
; [exec]
; a_4 := __prim__int___box__(16)
; [eval] __prim__int___box__(16)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 16))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 16))
(declare-const a_4@19@01 $Ref)
(assert (= a_4@19@01 (__prim__int___box__ $Snap.unit 16)))
; [exec]
; inhale _isDefined(3432289)
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 $Snap.unit))
; [eval] _isDefined(3432289)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 3432289))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 3432289))
(assert (_isDefined $Snap.unit 3432289))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := __prim__int___box__(int___add__(int___unbox__(b_6), int___unbox__(_checkDefined(a_4,
;   3432289))))
; [eval] __prim__int___box__(int___add__(int___unbox__(b_6), int___unbox__(_checkDefined(a_4, 3432289))))
; [eval] int___add__(int___unbox__(b_6), int___unbox__(_checkDefined(a_4, 3432289)))
; [eval] int___unbox__(b_6)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit b_5@9@01))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit b_5@9@01))
; [eval] int___unbox__(_checkDefined(a_4, 3432289))
; [eval] _checkDefined(a_4, 3432289)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_4@19@01 3432289))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit a_4@19@01 3432289))
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_4@19@01 3432289)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_4@19@01 3432289)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit a_4@19@01 3432289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289))))
(push) ; 3
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_5@9@01) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289))))
(pop) ; 3
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit b_5@9@01) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289))))
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_5@9@01) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289)))))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_5@9@01) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289)))))
(declare-const _res@21@01 $Ref)
(assert (=
  _res@21@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit b_5@9@01) (int___unbox__ $Snap.unit (_checkDefined $Snap.unit a_4@19@01 3432289))))))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> _res@21@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@21@01) (as int<PyType>  PyType)))
; [eval] int___eq__(_res, __prim__int___box__(32))
; [eval] __prim__int___box__(32)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 32))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 32))
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32)))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 32)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32))))
(push) ; 3
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32))))
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
; [eval] int___eq__(_res, __prim__int___box__(32))
; [eval] __prim__int___box__(32)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32))))
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
; [eval] int___eq__(_res, __prim__int___box__(32))
; [eval] __prim__int___box__(32)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32))))
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
; [eval] int___eq__(_res, __prim__int___box__(32))
; [eval] __prim__int___box__(32)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@21@01 (__prim__int___box__ $Snap.unit 32))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- func2 ----------
(declare-const _cthread_164@22@01 $Ref)
(declare-const _caller_measures_164@23@01 Seq<Measure$>)
(declare-const _residue_164@24@01 $Perm)
(declare-const arg@25@01 $Ref)
(declare-const _current_wait_level_164@26@01 $Perm)
(declare-const _res@27@01 $Ref)
(declare-const _cthread_164@28@01 $Ref)
(declare-const _caller_measures_164@29@01 Seq<Measure$>)
(declare-const _residue_164@30@01 $Perm)
(declare-const arg@31@01 $Ref)
(declare-const _current_wait_level_164@32@01 $Perm)
(declare-const _res@33@01 $Ref)
(push) ; 1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] _cthread_164 != null
(assert (not (= _cthread_164@28@01 $Ref.null)))
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(assert (= ($Snap.first ($Snap.second $t@34@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_164), Thread_0())
; [eval] typeof(_cthread_164)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_164@28@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@34@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@34@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@34@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@34@01))) $Snap.unit))
; [eval] issubtype(typeof(arg), int())
; [eval] typeof(arg)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> arg@31@01) (as int<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@34@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseBounded] :: Level(_r_4) <= _current_wait_level_164)
(assert (=
  ($Snap.second $t@35@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@35@01))
    ($Snap.second ($Snap.second $t@35@01)))))
(assert (= ($Snap.first ($Snap.second $t@35@01)) $Snap.unit))
; [eval] (forperm _r_4: Ref [_r_4.MustReleaseUnbounded] :: Level(_r_4) <= _current_wait_level_164)
(assert (=
  ($Snap.second ($Snap.second $t@35@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@35@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
; [eval] _residue_164 <= _current_wait_level_164
(assert (<= _residue_164@30@01 _current_wait_level_164@32@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@35@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@35@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@35@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> _res@33@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01)))))
  $Snap.unit))
; [eval] int___eq__(_res, __prim__int___box__(int___sub__(48, 6)))
; [eval] __prim__int___box__(int___sub__(48, 6))
; [eval] int___sub__(48, 6)
(push) ; 3
(assert (int___sub__%precondition $Snap.unit 48 6))
(pop) ; 3
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit 48 6))
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(push) ; 3
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@33@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@33@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6)))))
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@33@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@35@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@36@01 $Ref)
; [exec]
; var arg2: Ref
(declare-const arg2@37@01 $Ref)
; [exec]
; var local_var12: Ref
(declare-const local_var12@38@01 $Ref)
; [exec]
; var local_var: Ref
(declare-const local_var@39@01 $Ref)
; [exec]
; var arg_13: Ref
(declare-const arg_13@40@01 $Ref)
; [exec]
; var _loop_measures: Seq[Measure$]
(declare-const _loop_measures@41@01 Seq<Measure$>)
; [exec]
; var _loop_check_before: Bool
(declare-const _loop_check_before@42@01 Bool)
; [exec]
; var _loop_termination_flag: Bool
(declare-const _loop_termination_flag@43@01 Bool)
; [exec]
; var _loop_original_must_terminate: Perm
(declare-const _loop_original_must_terminate@44@01 $Perm)
; [exec]
; var _residue_165: Perm
(declare-const _residue_165@45@01 $Perm)
; [exec]
; var _cwl_164: Perm
(declare-const _cwl_164@46@01 $Perm)
; [exec]
; var _method_measures_164: Seq[Measure$]
(declare-const _method_measures_164@47@01 Seq<Measure$>)
; [exec]
; _method_measures_164 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; arg_13 := arg
; [exec]
; arg2 := arg_13
; [exec]
; inhale _isDefined(845640289)
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 $Snap.unit))
; [eval] _isDefined(845640289)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 845640289))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 845640289))
(assert (_isDefined $Snap.unit 845640289))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; local_var12 := __prim__bool___box__(true)
; [eval] __prim__bool___box__(true)
(set-option :timeout 0)
(push) ; 3
(assert (__prim__bool___box__%precondition $Snap.unit true))
(pop) ; 3
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit true))
(declare-const local_var12@49@01 $Ref)
(assert (= local_var12@49@01 (__prim__bool___box__ $Snap.unit true)))
; [exec]
; inhale _isDefined(60679796890122062265544556)
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 $Snap.unit))
; [eval] _isDefined(60679796890122062265544556)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 60679796890122062265544556))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 60679796890122062265544556))
(assert (_isDefined $Snap.unit 60679796890122062265544556))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _loop_original_must_terminate := perm(MustTerminate(_cthread_164))
; [eval] perm(MustTerminate(_cthread_164))
(declare-const _loop_original_must_terminate@51@01 $Perm)
(assert (= _loop_original_must_terminate@51@01 $Perm.No))
; [exec]
; _loop_termination_flag := false
; [exec]
; _loop_check_before := true
(declare-const _loop_measures@52@01 Seq<Measure$>)
(declare-const local_var12@53@01 $Ref)
(declare-const arg2@54@01 $Ref)
(declare-const _loop_check_before@55@01 Bool)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _residue_165)
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _residue_165)
(assert (=
  ($Snap.second ($Snap.second $t@56@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@56@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@56@01))) $Snap.unit))
; [eval] _residue_164 <= _residue_165
(assert (<= _residue_164@30@01 _residue_165@45@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@56@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(local_var12), bool())
; [eval] typeof(local_var12)
; [eval] bool()
(assert (issubtype<Bool> (typeof<PyType> local_var12@53@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(arg2), int())
; [eval] typeof(arg2)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> arg2@54@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  $Snap.unit))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
; [eval] issubtype(typeof(local_var12), bool())
; [eval] typeof(local_var12)
; [eval] bool()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> local_var12@49@01) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> local_var12@49@01) (as bool<PyType>  PyType)))
; [eval] issubtype(typeof(arg2), int())
; [eval] typeof(arg2)
; [eval] int()
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 0 | True]
; [eval] _loop_termination_flag || (!int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 7
; [then-branch: 1 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 1 | True]
; [eval] !int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___unbox__(_checkDefined(arg2, 845640289))
; [eval] _checkDefined(arg2, 845640289)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg@31@01 845640289))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg@31@01 845640289))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg@31@01 845640289)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg@31@01 845640289)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg@31@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289))))
(push) ; 8
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0))
(pop) ; 8
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0))
(push) ; 8
; [then-branch: 2 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg@31@01, 845640289)), 0)) | live]
; [else-branch: 2 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg@31@01, 845640289)), 0) | live]
(push) ; 9
; [then-branch: 2 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg@31@01, 845640289)), 0))]
(assert (not
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 2 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg@31@01, 845640289)), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0))
; [eval] perm(MustTerminate(_cthread_164)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false))))
; [eval] perm(MustTerminate(_cthread_164)) == none
; [eval] perm(MustTerminate(_cthread_164))
(push) ; 10
; [then-branch: 3 | False | live]
; [else-branch: 3 | True | live]
(push) ; 11
; [then-branch: 3 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 3 | True]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 12
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 13
; [then-branch: 4 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 4 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 14
; [then-branch: 5 | False | live]
; [else-branch: 5 | True | live]
(push) ; 15
; [then-branch: 5 | False]
(assert false)
(pop) ; 15
(push) ; 15
; [else-branch: 5 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 16
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 17
; [then-branch: 6 | False]
(assert false)
(pop) ; 17
(push) ; 17
; [else-branch: 6 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
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
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)
  (not
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit arg@31@01 845640289)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg@31@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289))
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (_checkDefined%precondition $Snap.unit arg@31@01 845640289)
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg@31@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289))
  (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)
  (or
    (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)
    (not
      (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg@31@01 845640289)) 0)))))
; [eval] !_loop_check_before ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] !_loop_check_before
(push) ; 4
; [then-branch: 7 | False | dead]
; [else-branch: 7 | True | live]
(push) ; 5
; [else-branch: 7 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(assert (= ($Snap.first ($Snap.second $t@56@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@56@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@56@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@56@01))) $Snap.unit))
(assert (<= _residue_164@30@01 _residue_165@45@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@56@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> local_var12@53@01) (as bool<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  $Snap.unit))
(assert (issubtype<Bool> (typeof<PyType> arg2@54@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@56@01))))))))
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
; [eval] int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___unbox__(_checkDefined(arg2, 845640289))
; [eval] _checkDefined(arg2, 845640289)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289))))
(push) ; 6
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 6
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 5
(push) ; 5
; [eval] !int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___unbox__(_checkDefined(arg2, 845640289))
; [eval] _checkDefined(arg2, 845640289)
(push) ; 6
; [eval] _isDefined(id)
(push) ; 7
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)))
(pop) ; 6
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289))))
(push) ; 6
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 6
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___unbox__(_checkDefined(arg2, 845640289))
; [eval] _checkDefined(arg2, 845640289)
(push) ; 5
; [eval] _isDefined(id)
(push) ; 6
(pop) ; 6
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(pop) ; 5
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit arg2@54@01 845640289))
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)))
(pop) ; 5
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit arg2@54@01 845640289)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289))))
(push) ; 5
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 5
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0) | live]
; [else-branch: 8 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
; [exec]
; _loop_measures := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; local_var12 := __prim__bool___box__(false)
; [eval] __prim__bool___box__(false)
(push) ; 6
(assert (__prim__bool___box__%precondition $Snap.unit false))
(pop) ; 6
; Joined path conditions
(assert (__prim__bool___box__%precondition $Snap.unit false))
(declare-const local_var12@57@01 $Ref)
(assert (= local_var12@57@01 (__prim__bool___box__ $Snap.unit false)))
; [exec]
; inhale _isDefined(60679796890122062265544556)
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 $Snap.unit))
; [eval] _isDefined(60679796890122062265544556)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; arg2 := __prim__int___box__(int___sub__(int___unbox__(arg2), 5))
; [eval] __prim__int___box__(int___sub__(int___unbox__(arg2), 5))
; [eval] int___sub__(int___unbox__(arg2), 5)
; [eval] int___unbox__(arg2)
(set-option :timeout 0)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit arg2@54@01))
(pop) ; 6
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit arg2@54@01))
(push) ; 6
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit arg2@54@01) 5))
(pop) ; 6
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit (int___unbox__ $Snap.unit arg2@54@01) 5))
(push) ; 6
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit arg2@54@01) 5)))
(pop) ; 6
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit arg2@54@01) 5)))
(declare-const arg2@59@01 $Ref)
(assert (=
  arg2@59@01
  (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit (int___unbox__ $Snap.unit arg2@54@01) 5))))
; [exec]
; inhale _isDefined(845640289)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] _isDefined(845640289)
(push) ; 6
(pop) ; 6
; Joined path conditions
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label loop_end
; [exec]
; _loop_check_before := false
; [exec]
; assert _loop_termination_flag ==>
;   !int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] _loop_termination_flag ==> !int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
(set-option :timeout 0)
(push) ; 6
; [then-branch: 9 | False | dead]
; [else-branch: 9 | True | live]
(push) ; 7
; [else-branch: 9 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Loop head block: Re-establish invariant
; [eval] issubtype(typeof(local_var12), bool())
; [eval] typeof(local_var12)
; [eval] bool()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> local_var12@57@01) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> local_var12@57@01) (as bool<PyType>  PyType)))
; [eval] issubtype(typeof(arg2), int())
; [eval] typeof(arg2)
; [eval] int()
(push) ; 6
(assert (not (issubtype<Bool> (typeof<PyType> arg2@59@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> arg2@59@01) (as int<PyType>  PyType)))
; [eval] _loop_check_before ==> _loop_termination_flag || (!int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0) || perm(MustTerminate(_cthread_164)) == none && ((forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))))
(push) ; 6
; [then-branch: 10 | False | dead]
; [else-branch: 10 | True | live]
(push) ; 7
; [else-branch: 10 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] !_loop_check_before ==> (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
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
; [then-branch: 11 | True | live]
; [else-branch: 11 | False | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 11 | True]
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false) && ((forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false) && ((forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false) && (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
(push) ; 8
; [then-branch: 12 | False | live]
; [else-branch: 12 | True | live]
(push) ; 9
; [then-branch: 12 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 12 | True]
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
(push) ; 10
; [then-branch: 13 | False | live]
; [else-branch: 13 | True | live]
(push) ; 11
; [then-branch: 13 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 13 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
(push) ; 12
; [then-branch: 14 | False | live]
; [else-branch: 14 | True | live]
(push) ; 13
; [then-branch: 14 | False]
(assert false)
(pop) ; 13
(push) ; 13
; [else-branch: 14 | True]
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
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
; [else-branch: 8 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0))]
(assert (not
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0)))
(pop) ; 5
; [eval] !int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___gt__(int___unbox__(_checkDefined(arg2, 845640289)), 0)
; [eval] int___unbox__(_checkDefined(arg2, 845640289))
; [eval] _checkDefined(arg2, 845640289)
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
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0)) | live]
; [else-branch: 15 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 15 | !(int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0))]
(assert (not
  (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0)))
; [exec]
; exhale perm(MustTerminate(_cthread_164)) > none ==>
;   acc(MustTerminate(_cthread_164), perm(MustTerminate(_cthread_164)) -
;   _loop_original_must_terminate)
; [eval] perm(MustTerminate(_cthread_164)) > none
; [eval] perm(MustTerminate(_cthread_164))
; [then-branch: 16 | False | dead]
; [else-branch: 16 | True | live]
(push) ; 6
; [else-branch: 16 | True]
; [exec]
; label post_loop
; [exec]
; _res := null
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556)) && bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] _checkDefined(local_var12, 60679796890122062265544556)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit local_var12@53@01 60679796890122062265544556))
(pop) ; 7
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit local_var12@53@01 60679796890122062265544556))
(push) ; 7
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)) (as bool<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)) (as bool<PyType>  PyType)))
(assert (bool___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))
(pop) ; 7
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)) (as bool<PyType>  PyType))
  (bool___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(push) ; 7
; [then-branch: 17 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))) | live]
; [else-branch: 17 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)) | live]
(push) ; 8
; [then-branch: 17 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)))]
(assert (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))]
(assert (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] _checkDefined(local_var12, 60679796890122062265544556)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))
  (not
    (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))))
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)) | live]
; [else-branch: 18 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 18 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))]
(assert (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))
; [exec]
; local_var := func1_correct(__prim__int___box__(15))
; [eval] func1_correct(__prim__int___box__(15))
; [eval] __prim__int___box__(15)
(push) ; 8
(assert (__prim__int___box__%precondition $Snap.unit 15))
(pop) ; 8
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 15))
(push) ; 8
; [eval] issubtype(typeof(b_0), int())
; [eval] typeof(b_0)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType)))
; [eval] int___eq__(b_0, __prim__int___box__(15))
; [eval] __prim__int___box__(15)
(push) ; 9
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15)))
(pop) ; 9
; Joined path conditions
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15)))
(push) ; 9
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15)))
(assert (func1_correct%precondition ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15))
  (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15) (__prim__int___box__ $Snap.unit 15))
  (func1_correct%precondition ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15))))
(declare-const local_var@61@01 $Ref)
(assert (=
  local_var@61@01
  (func1_correct ($Snap.combine $Snap.unit $Snap.unit) (__prim__int___box__ $Snap.unit 15))))
; [exec]
; inhale _isDefined(2109951729990914764652)
(declare-const $t@62@01 $Snap)
(assert (= $t@62@01 $Snap.unit))
; [eval] _isDefined(2109951729990914764652)
(push) ; 8
(assert (_isDefined%precondition $Snap.unit 2109951729990914764652))
(pop) ; 8
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 2109951729990914764652))
(assert (_isDefined $Snap.unit 2109951729990914764652))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _res := __prim__int___box__(int___add__(int___unbox__(_checkDefined(local_var,
;   2109951729990914764652)), 10))
; [eval] __prim__int___box__(int___add__(int___unbox__(_checkDefined(local_var, 2109951729990914764652)), 10))
; [eval] int___add__(int___unbox__(_checkDefined(local_var, 2109951729990914764652)), 10)
; [eval] int___unbox__(_checkDefined(local_var, 2109951729990914764652))
; [eval] _checkDefined(local_var, 2109951729990914764652)
(set-option :timeout 0)
(push) ; 8
; [eval] _isDefined(id)
(push) ; 9
(pop) ; 9
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit local_var@61@01 2109951729990914764652))
(pop) ; 8
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit local_var@61@01 2109951729990914764652))
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) (as int<PyType>  PyType)))
(assert (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) (as int<PyType>  PyType))
  (int___unbox__%precondition $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652))))
(push) ; 8
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) 10))
(pop) ; 8
; Joined path conditions
(assert (int___add__%precondition $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) 10))
(push) ; 8
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) 10)))
(pop) ; 8
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) 10)))
(declare-const _res@63@01 $Ref)
(assert (=
  _res@63@01
  (__prim__int___box__ $Snap.unit (int___add__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var@61@01 2109951729990914764652)) 10))))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> _res@63@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@63@01) (as int<PyType>  PyType)))
; [eval] int___eq__(_res, __prim__int___box__(int___sub__(48, 6)))
; [eval] __prim__int___box__(int___sub__(48, 6))
; [eval] int___sub__(48, 6)
(push) ; 8
(assert (int___sub__%precondition $Snap.unit 48 6))
(pop) ; 8
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit 48 6))
(push) ; 8
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(pop) ; 8
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(push) ; 8
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@63@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@63@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6)))))
(push) ; 8
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@63@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@63@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
; [eval] (forperm _r_5: Ref [MustInvokeBounded(_r_5)] :: false)
; [eval] (forperm _r_5: Ref [MustInvokeUnbounded(_r_5)] :: false)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: false)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: false)
(pop) ; 7
(push) ; 7
; [else-branch: 18 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)))]
(assert (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(pop) ; 7
; [eval] !(bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556)) && bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556)))
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556)) && bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] _checkDefined(local_var12, 60679796890122062265544556)
(push) ; 7
; [eval] _isDefined(id)
(push) ; 8
(pop) ; 8
; Joined path conditions
(pop) ; 7
; Joined path conditions
(push) ; 7
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 7
; Joined path conditions
(push) ; 7
; [then-branch: 19 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))) | live]
; [else-branch: 19 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)) | live]
(push) ; 8
; [then-branch: 19 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)))]
(assert (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(pop) ; 8
(push) ; 8
; [else-branch: 19 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))]
(assert (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))
; [eval] bool___unbox__(_checkDefined(local_var12, 60679796890122062265544556))
; [eval] _checkDefined(local_var12, 60679796890122062265544556)
(push) ; 9
; [eval] _isDefined(id)
(push) ; 10
(pop) ; 10
; Joined path conditions
(pop) ; 9
; Joined path conditions
(push) ; 9
; [eval] issubtype(typeof(box), bool())
; [eval] typeof(box)
; [eval] bool()
(pop) ; 9
; Joined path conditions
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
(set-option :timeout 10)
(assert (not (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))) | live]
; [else-branch: 20 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 20 | !(bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556)))]
(assert (not
  (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556))))
; [exec]
; _res := __prim__int___box__(42)
; [eval] __prim__int___box__(42)
(push) ; 8
(assert (__prim__int___box__%precondition $Snap.unit 42))
(pop) ; 8
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 42))
(declare-const _res@64@01 $Ref)
(assert (= _res@64@01 (__prim__int___box__ $Snap.unit 42)))
; [exec]
; label __end
; [eval] issubtype(typeof(_res), int())
; [eval] typeof(_res)
; [eval] int()
(push) ; 8
(assert (not (issubtype<Bool> (typeof<PyType> _res@64@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> _res@64@01) (as int<PyType>  PyType)))
; [eval] int___eq__(_res, __prim__int___box__(int___sub__(48, 6)))
; [eval] __prim__int___box__(int___sub__(48, 6))
; [eval] int___sub__(48, 6)
(push) ; 8
(assert (int___sub__%precondition $Snap.unit 48 6))
(pop) ; 8
; Joined path conditions
(assert (int___sub__%precondition $Snap.unit 48 6))
(push) ; 8
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(pop) ; 8
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit (int___sub__ $Snap.unit 48 6)))
(push) ; 8
; [eval] issubtype(typeof(self), int())
; [eval] typeof(self)
; [eval] int()
; [eval] issubtype(typeof(other), int())
; [eval] typeof(other)
; [eval] int()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType)))
(assert (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@64@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
(pop) ; 8
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))) (as int<PyType>  PyType))
  (int___eq__%precondition ($Snap.combine $Snap.unit $Snap.unit) _res@64@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6)))))
(push) ; 8
(assert (not (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@64@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (int___eq__ ($Snap.combine $Snap.unit $Snap.unit) _res@64@01 (__prim__int___box__ $Snap.unit (int___sub__ $Snap.unit 48 6))))
; [eval] (forperm _r_5: Ref [MustInvokeBounded(_r_5)] :: false)
; [eval] (forperm _r_5: Ref [MustInvokeUnbounded(_r_5)] :: false)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: false)
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: false)
(pop) ; 7
(push) ; 7
; [else-branch: 20 | bool___unbox__(_, _checkDefined(_, local_var12@53@01, 60679796890122062265544556))]
(assert (bool___unbox__ $Snap.unit (_checkDefined $Snap.unit local_var12@53@01 60679796890122062265544556)))
(pop) ; 7
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 15 | int___gt__(_, int___unbox__(_, _checkDefined(_, arg2@54@01, 845640289)), 0)]
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit (_checkDefined $Snap.unit arg2@54@01 845640289)) 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_165@65@01 $Ref)
(declare-const _caller_measures_165@66@01 Seq<Measure$>)
(declare-const _residue_166@67@01 $Perm)
(declare-const _current_wait_level_165@68@01 $Perm)
(declare-const _cthread_165@69@01 $Ref)
(declare-const _caller_measures_165@70@01 Seq<Measure$>)
(declare-const _residue_166@71@01 $Perm)
(declare-const _current_wait_level_165@72@01 $Perm)
(push) ; 1
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] _cthread_165 != null
(assert (not (= _cthread_165@69@01 $Ref.null)))
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_165@69@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@73@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(assert (= ($Snap.first $t@74@01) $Snap.unit))
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseBounded] :: Level(_r_7) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(assert (= ($Snap.first ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: Level(_r_7) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@74@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@74@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@74@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
; [eval] _residue_166 <= _current_wait_level_165
(assert (<= _residue_166@71@01 _current_wait_level_165@72@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@74@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@75@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@76@01 Set<_Name>)
; [exec]
; var _cwl_165: Perm
(declare-const _cwl_165@77@01 $Perm)
; [exec]
; var _method_measures_165: Seq[Measure$]
(declare-const _method_measures_165@78@01 Seq<Measure$>)
; [exec]
; _method_measures_165 := Seq[Measure$]()
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
(declare-const module_names_0@79@01 Set<_Name>)
(assert (=
  module_names_0@79@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 ($Snap.combine ($Snap.first $t@80@01) ($Snap.second $t@80@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@80@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@80@01))
    ($Snap.second ($Snap.second $t@80@01)))))
(assert (= ($Snap.first ($Snap.second $t@80@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@80@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@80@01)) $Snap.unit))
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
(declare-const module_names_0@81@01 Set<_Name>)
(assert (=
  module_names_0@81@01
  (Set_union module_names_0@79@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 ($Snap.combine ($Snap.first $t@82@01) ($Snap.second $t@82@01))))
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
  ($Snap.second $t@82@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@82@01))
    ($Snap.second ($Snap.second $t@82@01)))))
(assert (= ($Snap.first ($Snap.second $t@82@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@82@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@82@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@82@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@82@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@82@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@82@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@82@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@82@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@82@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(212121580902)))
; [eval] (module_names_0 union Set(_single(212121580902)))
; [eval] Set(_single(212121580902))
; [eval] _single(212121580902)
(declare-const module_names_0@83@01 Set<_Name>)
(assert (=
  module_names_0@83@01
  (Set_union module_names_0@81@01 (Set_singleton (_single<_Name> 212121580902)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(9221228509595491635370570708326)))
; [eval] (module_names_0 union Set(_single(9221228509595491635370570708326)))
; [eval] Set(_single(9221228509595491635370570708326))
; [eval] _single(9221228509595491635370570708326)
(declare-const module_names_0@84@01 Set<_Name>)
(assert (=
  module_names_0@84@01
  (Set_union module_names_0@83@01 (Set_singleton (_single<_Name> 9221228509595491635370570708326)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(13902703515428205)))
; [eval] (module_names_0 union Set(_single(13902703515428205)))
; [eval] Set(_single(13902703515428205))
; [eval] _single(13902703515428205)
(declare-const module_names_0@85@01 Set<_Name>)
(assert (=
  module_names_0@85@01
  (Set_union module_names_0@84@01 (Set_singleton (_single<_Name> 13902703515428205)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(220711515494)))
; [eval] (module_names_0 union Set(_single(220711515494)))
; [eval] Set(_single(220711515494))
; [eval] _single(220711515494)
(declare-const module_names_0@86@01 Set<_Name>)
(assert (=
  module_names_0@86@01
  (Set_union module_names_0@85@01 (Set_singleton (_single<_Name> 220711515494)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(216416548198)))
; [eval] (module_names_0 union Set(_single(216416548198)))
; [eval] Set(_single(216416548198))
; [eval] _single(216416548198)
(declare-const module_names_0@87@01 Set<_Name>)
(assert (=
  module_names_0@87@01
  (Set_union module_names_0@86@01 (Set_singleton (_single<_Name> 216416548198)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1668183398)))
; [eval] (module_names_0 union Set(_single(1668183398)))
; [eval] Set(_single(1668183398))
; [eval] _single(1668183398)
(declare-const module_names_0@88@01 Set<_Name>)
(assert (=
  module_names_0@88@01
  (Set_union module_names_0@87@01 (Set_singleton (_single<_Name> 1668183398)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(488440920196018636485990)))
; [eval] (module_names_0 union Set(_single(488440920196018636485990)))
; [eval] Set(_single(488440920196018636485990))
; [eval] _single(488440920196018636485990)
(declare-const module_names_0@89@01 Set<_Name>)
(assert (=
  module_names_0@89@01
  (Set_union module_names_0@88@01 (Set_singleton (_single<_Name> 488440920196018636485990)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(55385271465318)))
; [eval] (module_names_0 union Set(_single(55385271465318)))
; [eval] Set(_single(55385271465318))
; [eval] _single(55385271465318)
(declare-const module_names_0@90@01 Set<_Name>)
(assert (=
  module_names_0@90@01
  (Set_union module_names_0@89@01 (Set_singleton (_single<_Name> 55385271465318)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(32010464145966223419950134630)))
; [eval] (module_names_0 union Set(_single(32010464145966223419950134630)))
; [eval] Set(_single(32010464145966223419950134630))
; [eval] _single(32010464145966223419950134630)
(declare-const module_names_0@91@01 Set<_Name>)
(assert (=
  module_names_0@91@01
  (Set_union module_names_0@90@01 (Set_singleton (_single<_Name> 32010464145966223419950134630)))))
; [exec]
; label __end
; [eval] (forperm _r_8: Ref [MustInvokeBounded(_r_8)] :: false)
; [eval] (forperm _r_8: Ref [MustInvokeUnbounded(_r_8)] :: false)
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: false)
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
