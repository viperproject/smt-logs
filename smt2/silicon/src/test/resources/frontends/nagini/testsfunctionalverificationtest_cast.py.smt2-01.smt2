(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:48:03
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
(declare-const C<PyType> PyType)
(declare-const D<PyType> PyType)
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
(declare-fun object___cast__ ($Snap PyType $Ref) $Ref)
(declare-fun object___cast__%limited ($Snap PyType $Ref) $Ref)
(declare-fun object___cast__%stateless (PyType $Ref) Bool)
(declare-fun object___cast__%precondition ($Snap PyType $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun list___getitem__ ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%limited ($Snap $Ref $Ref) $Ref)
(declare-fun list___getitem__%stateless ($Ref $Ref) Bool)
(declare-fun list___getitem__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
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
(assert (distinct bool<PyType> float<PyType> bytes<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> C<PyType> PMultiset_basic<PyType> PSet_basic<PyType> PSeq_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> Iterator_basic<PyType> D<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as C<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as C<PyType>  PyType)) (as C<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as D<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as D<PyType>  PyType)) (as D<PyType>  PyType))))
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
(declare-fun $k@43@00 () $Perm)
(declare-fun $k@47@00 () $Perm)
(declare-fun $k@48@00 () $Perm)
(declare-fun $k@51@00 () $Perm)
(declare-fun letvar@49@00 ($Snap $Ref $Ref) Int)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-2627|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-2628|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-2629|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2630|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2661|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2662|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@4@00)
    (__prim__bool___box__ s@$ prim@4@00))
  :pattern ((__prim__bool___box__ s@$ prim@4@00))
  :qid |quant-u-2631|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (__prim__bool___box__%stateless prim@4@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-2632|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (and
      (= (typeof<PyType> result@5@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@5@00) prim@4@00)
      (= (int___unbox__%limited $Snap.unit result@5@00) (ite prim@4@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-2663|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-2664|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (bool___unbox__%precondition $Snap.unit result@5@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-2665|)))
(assert (forall ((s@$ $Snap) (prim@4@00 Bool)) (!
  (let ((result@5@00 (__prim__bool___box__%limited s@$ prim@4@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@4@00)
    (int___unbox__%precondition $Snap.unit result@5@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@4@00))
  :qid |quant-u-2666|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@6@00) (bool___unbox__ s@$ box@6@00))
  :pattern ((bool___unbox__ s@$ box@6@00))
  :qid |quant-u-2633|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (bool___unbox__%stateless box@6@00)
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-2634|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (= (__prim__bool___box__%limited $Snap.unit result@7@00) box@6@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-2667|)))
(assert (forall ((s@$ $Snap) (box@6@00 $Ref)) (!
  (let ((result@7@00 (bool___unbox__%limited s@$ box@6@00))) (=>
    (bool___unbox__%precondition s@$ box@6@00)
    (__prim__bool___box__%precondition $Snap.unit result@7@00)))
  :pattern ((bool___unbox__%limited s@$ box@6@00))
  :qid |quant-u-2668|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@8@00) (int___unbox__ s@$ box@8@00))
  :pattern ((int___unbox__ s@$ box@8@00))
  :qid |quant-u-2635|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (int___unbox__%stateless box@8@00)
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-2636|)))
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
  :qid |quant-u-2669|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (not (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@9@00)))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-2670|)))
(assert (forall ((s@$ $Snap) (box@8@00 $Ref)) (!
  (let ((result@9@00 (int___unbox__%limited s@$ box@8@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@8@00)
      (issubtype<Bool> (typeof<PyType> box@8@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@9@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@8@00))
  :qid |quant-u-2671|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@10@00)
    (__prim__int___box__ s@$ prim@10@00))
  :pattern ((__prim__int___box__ s@$ prim@10@00))
  :qid |quant-u-2637|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (__prim__int___box__%stateless prim@10@00)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-2638|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (and
      (= (typeof<PyType> result@11@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@11@00) prim@10@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-2672|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-2673|)))
(assert (forall ((s@$ $Snap) (prim@10@00 Int)) (!
  (let ((result@11@00 (__prim__int___box__%limited s@$ prim@10@00))) (=>
    (__prim__int___box__%precondition s@$ prim@10@00)
    (int___unbox__%precondition $Snap.unit result@11@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@10@00))
  :qid |quant-u-2674|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  (= (list___len__%limited s@$ self@12@00) (list___len__ s@$ self@12@00))
  :pattern ((list___len__ s@$ self@12@00))
  :qid |quant-u-2639|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  (list___len__%stateless self@12@00)
  :pattern ((list___len__%limited s@$ self@12@00))
  :qid |quant-u-2640|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@43@00)
    (=>
      (list___len__%precondition s@$ self@12@00)
      (=
        (list___len__ s@$ self@12@00)
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.second s@$))))))
  :pattern ((list___len__ s@$ self@12@00))
  :qid |quant-u-2675|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref)) (!
  true
  :pattern ((list___len__ s@$ self@12@00))
  :qid |quant-u-2676|)))
(assert (forall ((s@$ $Snap) (id@14@00 Int)) (!
  (= (_isDefined%limited s@$ id@14@00) (_isDefined s@$ id@14@00))
  :pattern ((_isDefined s@$ id@14@00))
  :qid |quant-u-2641|)))
(assert (forall ((s@$ $Snap) (id@14@00 Int)) (!
  (_isDefined%stateless id@14@00)
  :pattern ((_isDefined%limited s@$ id@14@00))
  :qid |quant-u-2642|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (= (Level%limited s@$ r@16@00) (Level s@$ r@16@00))
  :pattern ((Level s@$ r@16@00))
  :qid |quant-u-2643|)))
(assert (forall ((s@$ $Snap) (r@16@00 $Ref)) (!
  (Level%stateless r@16@00)
  :pattern ((Level%limited s@$ r@16@00))
  :qid |quant-u-2644|)))
(assert (forall ((s@$ $Snap) (typ@18@00 PyType) (obj@19@00 $Ref)) (!
  (=
    (object___cast__%limited s@$ typ@18@00 obj@19@00)
    (object___cast__ s@$ typ@18@00 obj@19@00))
  :pattern ((object___cast__ s@$ typ@18@00 obj@19@00))
  :qid |quant-u-2645|)))
(assert (forall ((s@$ $Snap) (typ@18@00 PyType) (obj@19@00 $Ref)) (!
  (object___cast__%stateless typ@18@00 obj@19@00)
  :pattern ((object___cast__%limited s@$ typ@18@00 obj@19@00))
  :qid |quant-u-2646|)))
(assert (forall ((s@$ $Snap) (typ@18@00 PyType) (obj@19@00 $Ref)) (!
  (let ((result@20@00 (object___cast__%limited s@$ typ@18@00 obj@19@00))) (=>
    (object___cast__%precondition s@$ typ@18@00 obj@19@00)
    (and
      (= result@20@00 obj@19@00)
      (issubtype<Bool> (typeof<PyType> obj@19@00) typ@18@00))))
  :pattern ((object___cast__%limited s@$ typ@18@00 obj@19@00))
  :qid |quant-u-2677|)))
(assert (forall ((s@$ $Snap) (typ@18@00 PyType) (obj@19@00 $Ref)) (!
  (let ((result@20@00 (object___cast__%limited s@$ typ@18@00 obj@19@00))) true)
  :pattern ((object___cast__%limited s@$ typ@18@00 obj@19@00))
  :qid |quant-u-2678|)))
(assert (forall ((s@$ $Snap) (typ@18@00 PyType) (obj@19@00 $Ref)) (!
  (let ((result@20@00 (object___cast__%limited s@$ typ@18@00 obj@19@00))) true)
  :pattern ((object___cast__%limited s@$ typ@18@00 obj@19@00))
  :qid |quant-u-2679|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (=
    (str___create__%limited s@$ len@21@00 value@22@00)
    (str___create__ s@$ len@21@00 value@22@00))
  :pattern ((str___create__ s@$ len@21@00 value@22@00))
  :qid |quant-u-2647|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (str___create__%stateless len@21@00 value@22@00)
  :pattern ((str___create__%limited s@$ len@21@00 value@22@00))
  :qid |quant-u-2648|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (let ((result@23@00 (str___create__%limited s@$ len@21@00 value@22@00))) (=>
    (str___create__%precondition s@$ len@21@00 value@22@00)
    (and
      (= (str___len__ $Snap.unit result@23@00) len@21@00)
      (= (str___val__ $Snap.unit result@23@00) value@22@00)
      (= (typeof<PyType> result@23@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@21@00 value@22@00))
  :qid |quant-u-2680|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (let ((result@23@00 (str___create__%limited s@$ len@21@00 value@22@00))) (=>
    (str___create__%precondition s@$ len@21@00 value@22@00)
    (str___len__%precondition $Snap.unit result@23@00)))
  :pattern ((str___create__%limited s@$ len@21@00 value@22@00))
  :qid |quant-u-2681|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (let ((result@23@00 (str___create__%limited s@$ len@21@00 value@22@00))) (=>
    (str___create__%precondition s@$ len@21@00 value@22@00)
    (str___val__%precondition $Snap.unit result@23@00)))
  :pattern ((str___create__%limited s@$ len@21@00 value@22@00))
  :qid |quant-u-2682|)))
(assert (forall ((s@$ $Snap) (len@21@00 Int) (value@22@00 Int)) (!
  (let ((result@23@00 (str___create__%limited s@$ len@21@00 value@22@00))) true)
  :pattern ((str___create__%limited s@$ len@21@00 value@22@00))
  :qid |quant-u-2683|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref) (other@25@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@24@00 other@25@00)
    (str___eq__ s@$ self@24@00 other@25@00))
  :pattern ((str___eq__ s@$ self@24@00 other@25@00))
  :qid |quant-u-2649|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref) (other@25@00 $Ref)) (!
  (str___eq__%stateless self@24@00 other@25@00)
  :pattern ((str___eq__%limited s@$ self@24@00 other@25@00))
  :qid |quant-u-2650|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref) (other@25@00 $Ref)) (!
  (let ((result@26@00 (str___eq__%limited s@$ self@24@00 other@25@00))) (=>
    (str___eq__%precondition s@$ self@24@00 other@25@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@24@00)
          (str___val__ $Snap.unit other@25@00))
        result@26@00)
      (=>
        result@26@00
        (=
          (str___len__ $Snap.unit self@24@00)
          (str___len__ $Snap.unit other@25@00))))))
  :pattern ((str___eq__%limited s@$ self@24@00 other@25@00))
  :qid |quant-u-2684|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref) (other@25@00 $Ref)) (!
  (let ((result@26@00 (str___eq__%limited s@$ self@24@00 other@25@00))) (=>
    (str___eq__%precondition s@$ self@24@00 other@25@00)
    (and
      (str___val__%precondition $Snap.unit self@24@00)
      (str___val__%precondition $Snap.unit other@25@00))))
  :pattern ((str___eq__%limited s@$ self@24@00 other@25@00))
  :qid |quant-u-2685|)))
(assert (forall ((s@$ $Snap) (self@24@00 $Ref) (other@25@00 $Ref)) (!
  (let ((result@26@00 (str___eq__%limited s@$ self@24@00 other@25@00))) (=>
    (and (str___eq__%precondition s@$ self@24@00 other@25@00) result@26@00)
    (and
      (str___len__%precondition $Snap.unit self@24@00)
      (str___len__%precondition $Snap.unit other@25@00))))
  :pattern ((str___eq__%limited s@$ self@24@00 other@25@00))
  :qid |quant-u-2686|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (key@28@00 $Ref)) (!
  (=
    (list___getitem__%limited s@$ self@27@00 key@28@00)
    (list___getitem__ s@$ self@27@00 key@28@00))
  :pattern ((list___getitem__ s@$ self@27@00 key@28@00))
  :qid |quant-u-2651|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (key@28@00 $Ref)) (!
  (list___getitem__%stateless self@27@00 key@28@00)
  :pattern ((list___getitem__%limited s@$ self@27@00 key@28@00))
  :qid |quant-u-2652|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (key@28@00 $Ref)) (!
  (let ((result@29@00 (list___getitem__%limited s@$ self@27@00 key@28@00))) (and
    ($Perm.isReadVar $k@47@00)
    ($Perm.isReadVar $k@48@00)
    ($Perm.isReadVar $k@51@00)
    (=>
      (list___getitem__%precondition s@$ self@27@00 key@28@00)
      (and
        (=
          result@29@00
          (ite
            (>= (int___unbox__ $Snap.unit key@28@00) 0)
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (int___unbox__ $Snap.unit key@28@00))
            (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.second ($Snap.second s@$))))
              (+
                (list___len__ ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second s@$)))) self@27@00)
                (int___unbox__ $Snap.unit key@28@00)))))
        (issubtype<Bool> (typeof<PyType> result@29@00) (list_arg<PyType> (typeof<PyType> self@27@00) 0))))))
  :pattern ((list___getitem__%limited s@$ self@27@00 key@28@00))
  :qid |quant-u-2687|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (key@28@00 $Ref)) (!
  (let ((result@29@00 (list___getitem__%limited s@$ self@27@00 key@28@00))) (=>
    (list___getitem__%precondition s@$ self@27@00 key@28@00)
    (and
      (int___unbox__%precondition $Snap.unit key@28@00)
      (ite
        (>= (int___unbox__ $Snap.unit key@28@00) 0)
        (int___unbox__%precondition $Snap.unit key@28@00)
        (and
          (list___len__%precondition ($Snap.combine
            $Snap.unit
            ($Snap.first ($Snap.second ($Snap.second s@$)))) self@27@00)
          (int___unbox__%precondition $Snap.unit key@28@00))))))
  :pattern ((list___getitem__%limited s@$ self@27@00 key@28@00))
  :qid |quant-u-2688|)))
(assert (forall ((s@$ $Snap) (self@27@00 $Ref) (key@28@00 $Ref)) (!
  (let ((result@29@00 (list___getitem__%limited s@$ self@27@00 key@28@00))) true)
  :pattern ((list___getitem__%limited s@$ self@27@00 key@28@00))
  :qid |quant-u-2689|)))
(assert (forall ((s@$ $Snap) (self@30@00 Int) (other@31@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@30@00 other@31@00)
    (int___gt__ s@$ self@30@00 other@31@00))
  :pattern ((int___gt__ s@$ self@30@00 other@31@00))
  :qid |quant-u-2653|)))
(assert (forall ((s@$ $Snap) (self@30@00 Int) (other@31@00 Int)) (!
  (int___gt__%stateless self@30@00 other@31@00)
  :pattern ((int___gt__%limited s@$ self@30@00 other@31@00))
  :qid |quant-u-2654|)))
(assert (forall ((s@$ $Snap) (self@30@00 Int) (other@31@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@30@00 other@31@00)
    (= (int___gt__ s@$ self@30@00 other@31@00) (> self@30@00 other@31@00)))
  :pattern ((int___gt__ s@$ self@30@00 other@31@00))
  :qid |quant-u-2690|)))
(assert (forall ((s@$ $Snap) (self@30@00 Int) (other@31@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@30@00 other@31@00))
  :qid |quant-u-2691|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-2655|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-2656|)))
(assert (forall ((s@$ $Snap) (val@34@00 $Ref) (id@35@00 Int)) (!
  (=
    (_checkDefined%limited s@$ val@34@00 id@35@00)
    (_checkDefined s@$ val@34@00 id@35@00))
  :pattern ((_checkDefined s@$ val@34@00 id@35@00))
  :qid |quant-u-2657|)))
(assert (forall ((s@$ $Snap) (val@34@00 $Ref) (id@35@00 Int)) (!
  (_checkDefined%stateless val@34@00 id@35@00)
  :pattern ((_checkDefined%limited s@$ val@34@00 id@35@00))
  :qid |quant-u-2658|)))
(assert (forall ((s@$ $Snap) (val@34@00 $Ref) (id@35@00 Int)) (!
  (=>
    (_checkDefined%precondition s@$ val@34@00 id@35@00)
    (= (_checkDefined s@$ val@34@00 id@35@00) val@34@00))
  :pattern ((_checkDefined s@$ val@34@00 id@35@00))
  :qid |quant-u-2692|)))
(assert (forall ((s@$ $Snap) (val@34@00 $Ref) (id@35@00 Int)) (!
  true
  :pattern ((_checkDefined s@$ val@34@00 id@35@00))
  :qid |quant-u-2693|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-2659|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-2660|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m_0 ----------
(declare-const _cthread_157@0@01 $Ref)
(declare-const _caller_measures_157@1@01 Seq<Measure$>)
(declare-const _residue_157@2@01 $Perm)
(declare-const l@3@01 $Ref)
(declare-const _current_wait_level_157@4@01 $Perm)
(declare-const _cthread_157@5@01 $Ref)
(declare-const _caller_measures_157@6@01 Seq<Measure$>)
(declare-const _residue_157@7@01 $Perm)
(declare-const l@8@01 $Ref)
(declare-const _current_wait_level_157@9@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@5@01 $Ref.null)))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@5@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
; [eval] issubtype(typeof(l), list(object()))
; [eval] typeof(l)
; [eval] list(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l@8@01) (list<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (not (= l@8@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
; [eval] int___gt__(list___len__(l), 1)
; [eval] list___len__(l)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> l@8@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l@8@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> l@8@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l@8@01) 0))))
(declare-const $k@11@01 $Perm)
(assert ($Perm.isReadVar $k@11@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@11@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@11@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> l@8@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l@8@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01)))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01) 1))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01) 1))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@7@01 _current_wait_level_157@9@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@13@01 $Ref)
; [exec]
; var l_3: Ref
(declare-const l_3@14@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@15@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@16@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; l_3 := l
; [exec]
; _cwl_157 := C_f(_cthread_157, _method_measures_157, _residue_157, object___cast__(C(),
;   list___getitem__(l_3, __prim__int___box__(0))), __prim__int___box__(15))
; [eval] object___cast__(C(), list___getitem__(l_3, __prim__int___box__(0)))
; [eval] C()
; [eval] list___getitem__(l_3, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@17@01 $Perm)
(assert ($Perm.isReadVar $k@17@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@18@01 $Perm)
(assert ($Perm.isReadVar $k@18@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@18@01))
(declare-const letvar@19@01 Int)
(assert (=
  (as letvar@19@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 0 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 0 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 4
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 5
; [then-branch: 1 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 2 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 2 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 4
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
      $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@17@01))
(assert ($Perm.isReadVar $k@18@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@19@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))) l@8@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
        $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0))))
(push) ; 3
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
      $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
      $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
      $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
      $Snap.unit))) l@8@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m_2 ----------
(declare-const _cthread_158@20@01 $Ref)
(declare-const _caller_measures_158@21@01 Seq<Measure$>)
(declare-const _residue_158@22@01 $Perm)
(declare-const l_0@23@01 $Ref)
(declare-const _current_wait_level_158@24@01 $Perm)
(declare-const _cthread_158@25@01 $Ref)
(declare-const _caller_measures_158@26@01 Seq<Measure$>)
(declare-const _residue_158@27@01 $Perm)
(declare-const l_0@28@01 $Ref)
(declare-const _current_wait_level_158@29@01 $Perm)
(push) ; 1
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (= ($Snap.first $t@30@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@25@01 $Ref.null)))
(assert (=
  ($Snap.second $t@30@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@30@01))
    ($Snap.second ($Snap.second $t@30@01)))))
(assert (= ($Snap.first ($Snap.second $t@30@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@25@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@30@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@30@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@30@01))) $Snap.unit))
; [eval] issubtype(typeof(l_0), list(object()))
; [eval] typeof(l_0)
; [eval] list(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l_0@28@01) (list<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@30@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))))
(assert (not (= l_0@28@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))
  $Snap.unit))
; [eval] int___gt__(list___len__(l_0), 1)
; [eval] list___len__(l_0)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> l_0@28@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_0@28@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> l_0@28@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_0@28@01) 0))))
(declare-const $k@31@01 $Perm)
(assert ($Perm.isReadVar $k@31@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@31@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@31@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> l_0@28@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_0@28@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01) 1))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01) 1))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(list___getitem__(l_0, __prim__int___box__(0))), C())
; [eval] typeof(list___getitem__(l_0, __prim__int___box__(0)))
; [eval] list___getitem__(l_0, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 2
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 2
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@32@01 $Perm)
(assert ($Perm.isReadVar $k@32@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@32@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@33@01 $Perm)
(assert ($Perm.isReadVar $k@33@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@33@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@33@01))
(declare-const letvar@34@01 Int)
(assert (=
  (as letvar@34@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 3 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 3 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 3
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 4
; [then-branch: 4 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 5 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 5 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 3
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@32@01))
(assert ($Perm.isReadVar $k@33@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@34@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
        $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@30@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (= ($Snap.first $t@35@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@35@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@35@01))
    ($Snap.second ($Snap.second $t@35@01)))))
(assert (= ($Snap.first ($Snap.second $t@35@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@35@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@35@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@27@01 _current_wait_level_158@29@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@36@01 $Ref)
; [exec]
; var l_4: Ref
(declare-const l_4@37@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@38@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@39@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; l_4 := l_0
; [exec]
; _cwl_158 := C_f(_cthread_158, _method_measures_158, _residue_158, object___cast__(C(),
;   list___getitem__(l_4, __prim__int___box__(0))), __prim__int___box__(15))
; [eval] object___cast__(C(), list___getitem__(l_4, __prim__int___box__(0)))
; [eval] C()
; [eval] list___getitem__(l_4, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@40@01 $Perm)
(assert ($Perm.isReadVar $k@40@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@40@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@41@01 $Perm)
(assert ($Perm.isReadVar $k@41@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@41@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@41@01))
(declare-const letvar@42@01 Int)
(assert (=
  (as letvar@42@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 6 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 6 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(push) ; 5
; [else-branch: 6 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 5
; [then-branch: 7 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 8 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 8 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@40@01))
(assert ($Perm.isReadVar $k@41@01))
(assert (=
  (as letvar@42@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))) l_0@28@01)))
(push) ; 3
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(assert (object___cast__%precondition $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0))))
(pop) ; 3
; Joined path conditions
(assert (object___cast__%precondition $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] __prim__int___box__(15)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 15))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 15))
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), C())
; [eval] typeof(self)
; [eval] C()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (object___cast__ $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0)))) (as C<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (object___cast__ $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
      $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0)))) (as C<PyType>  PyType)))
; [eval] issubtype(typeof(a), int())
; [eval] typeof(a)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType)))
; [eval] self != null
(push) ; 3
(assert (not (not
  (=
    (object___cast__ $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
          $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0)))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    (object___cast__ $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@30@01))))
          $Snap.unit))) l_0@28@01 (__prim__int___box__ $Snap.unit 0)))
    $Ref.null)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_13: Ref [MustInvokeBounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [MustInvokeUnbounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseBounded] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@43@01 $Perm)
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 ($Snap.combine ($Snap.first $t@44@01) ($Snap.second $t@44@01))))
(assert (= ($Snap.first $t@44@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@44@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@44@01))
    ($Snap.second ($Snap.second $t@44@01)))))
(assert (= ($Snap.first ($Snap.second $t@44@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@44@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@44@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@44@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@44@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_158@27@01 _current_wait_level_156@43@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@44@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; label __end
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- m_3 ----------
(declare-const _cthread_159@45@01 $Ref)
(declare-const _caller_measures_159@46@01 Seq<Measure$>)
(declare-const _residue_159@47@01 $Perm)
(declare-const l_1@48@01 $Ref)
(declare-const _current_wait_level_159@49@01 $Perm)
(declare-const _cthread_159@50@01 $Ref)
(declare-const _caller_measures_159@51@01 Seq<Measure$>)
(declare-const _residue_159@52@01 $Perm)
(declare-const l_1@53@01 $Ref)
(declare-const _current_wait_level_159@54@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 ($Snap.combine ($Snap.first $t@55@01) ($Snap.second $t@55@01))))
(assert (= ($Snap.first $t@55@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@50@01 $Ref.null)))
(assert (=
  ($Snap.second $t@55@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@55@01))
    ($Snap.second ($Snap.second $t@55@01)))))
(assert (= ($Snap.first ($Snap.second $t@55@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@50@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@55@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@55@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@55@01))) $Snap.unit))
; [eval] issubtype(typeof(l_1), list(object()))
; [eval] typeof(l_1)
; [eval] list(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l_1@53@01) (list<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@55@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))))
(assert (not (= l_1@53@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))
  $Snap.unit))
; [eval] int___gt__(list___len__(l_1), 1)
; [eval] list___len__(l_1)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> l_1@53@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_1@53@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> l_1@53@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_1@53@01) 0))))
(declare-const $k@56@01 $Perm)
(assert ($Perm.isReadVar $k@56@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@56@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@56@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> l_1@53@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_1@53@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01) 1))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01) 1))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(list___getitem__(l_1, __prim__int___box__(0))), C())
; [eval] typeof(list___getitem__(l_1, __prim__int___box__(0)))
; [eval] list___getitem__(l_1, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 2
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 2
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@57@01 $Perm)
(assert ($Perm.isReadVar $k@57@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@57@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@58@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@58@01))
(declare-const letvar@59@01 Int)
(assert (=
  (as letvar@59@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 9 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 9 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 3
; [then-branch: 10 | False | live]
; [else-branch: 10 | True | live]
(push) ; 4
; [then-branch: 10 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 10 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 11 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 11 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 3
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
      $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@57@01))
(assert ($Perm.isReadVar $k@58@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@59@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
        $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
      $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@55@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 ($Snap.combine ($Snap.first $t@60@01) ($Snap.second $t@60@01))))
(assert (= ($Snap.first $t@60@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@60@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@60@01))
    ($Snap.second ($Snap.second $t@60@01)))))
(assert (= ($Snap.first ($Snap.second $t@60@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@60@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@60@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@60@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@60@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@52@01 _current_wait_level_159@54@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@60@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@61@01 $Ref)
; [exec]
; var c: Ref
(declare-const c@62@01 $Ref)
; [exec]
; var l_5: Ref
(declare-const l_5@63@01 $Ref)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@64@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@65@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; l_5 := l_1
; [exec]
; c := object___cast__(C(), list___getitem__(l_5, __prim__int___box__(0)))
; [eval] object___cast__(C(), list___getitem__(l_5, __prim__int___box__(0)))
; [eval] C()
; [eval] list___getitem__(l_5, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@66@01 $Perm)
(assert ($Perm.isReadVar $k@66@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@66@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@67@01 $Perm)
(assert ($Perm.isReadVar $k@67@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@67@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@67@01))
(declare-const letvar@68@01 Int)
(assert (=
  (as letvar@68@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 12 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 12 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(push) ; 5
; [else-branch: 12 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 13 | False | live]
; [else-branch: 13 | True | live]
(push) ; 5
; [then-branch: 13 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 13 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 14 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 14 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@66@01))
(assert ($Perm.isReadVar $k@67@01))
(assert (=
  (as letvar@68@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))) l_1@53@01)))
(push) ; 3
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(assert (object___cast__%precondition $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
      $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0))))
(pop) ; 3
; Joined path conditions
(assert (object___cast__%precondition $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
      $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0))))
(declare-const c@69@01 $Ref)
(assert (=
  c@69@01
  (object___cast__ $Snap.unit (as C<PyType>  PyType) (list___getitem__ ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@55@01))))
        $Snap.unit))) l_1@53@01 (__prim__int___box__ $Snap.unit 0)))))
; [exec]
; inhale _isDefined(99)
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] _isDefined(99)
(push) ; 3
(assert (_isDefined%precondition $Snap.unit 99))
(pop) ; 3
; Joined path conditions
(assert (_isDefined%precondition $Snap.unit 99))
(assert (_isDefined $Snap.unit 99))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_159 := C_f(_cthread_159, _method_measures_159, _residue_159, _checkDefined(c,
;   99), __prim__int___box__(15))
; [eval] _checkDefined(c, 99)
(set-option :timeout 0)
(push) ; 3
; [eval] _isDefined(id)
(push) ; 4
(pop) ; 4
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c@69@01 99))
(pop) ; 3
; Joined path conditions
(assert (_checkDefined%precondition $Snap.unit c@69@01 99))
; [eval] __prim__int___box__(15)
(push) ; 3
(assert (__prim__int___box__%precondition $Snap.unit 15))
(pop) ; 3
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 15))
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] issubtype(typeof(self), C())
; [eval] typeof(self)
; [eval] C()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@69@01 99)) (as C<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (_checkDefined $Snap.unit c@69@01 99)) (as C<PyType>  PyType)))
; [eval] issubtype(typeof(a), int())
; [eval] typeof(a)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 15)) (as int<PyType>  PyType)))
; [eval] self != null
(push) ; 3
(assert (not (not (= (_checkDefined $Snap.unit c@69@01 99) $Ref.null))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (_checkDefined $Snap.unit c@69@01 99) $Ref.null)))
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_13: Ref [MustInvokeBounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [MustInvokeUnbounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseBounded] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@71@01 $Perm)
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(assert (= ($Snap.first $t@72@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@72@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@72@01))
    ($Snap.second ($Snap.second $t@72@01)))))
(assert (= ($Snap.first ($Snap.second $t@72@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@72@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@72@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@72@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_159@52@01 _current_wait_level_156@71@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@72@01))) $Snap.unit))
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
; ---------- m_4 ----------
(declare-const _cthread_160@73@01 $Ref)
(declare-const _caller_measures_160@74@01 Seq<Measure$>)
(declare-const _residue_160@75@01 $Perm)
(declare-const l_2@76@01 $Ref)
(declare-const _current_wait_level_160@77@01 $Perm)
(declare-const _cthread_160@78@01 $Ref)
(declare-const _caller_measures_160@79@01 Seq<Measure$>)
(declare-const _residue_160@80@01 $Perm)
(declare-const l_2@81@01 $Ref)
(declare-const _current_wait_level_160@82@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@83@01 $Snap)
(assert (= $t@83@01 ($Snap.combine ($Snap.first $t@83@01) ($Snap.second $t@83@01))))
(assert (= ($Snap.first $t@83@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@78@01 $Ref.null)))
(assert (=
  ($Snap.second $t@83@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@83@01))
    ($Snap.second ($Snap.second $t@83@01)))))
(assert (= ($Snap.first ($Snap.second $t@83@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@78@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@83@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@83@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@83@01))) $Snap.unit))
; [eval] issubtype(typeof(l_2), list(object()))
; [eval] typeof(l_2)
; [eval] list(object())
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> l_2@81@01) (list<PyType> (as object<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@83@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))))
(assert (not (= l_2@81@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))
  $Snap.unit))
; [eval] int___gt__(list___len__(l_2), 1)
; [eval] list___len__(l_2)
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> l_2@81@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_2@81@01) 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> l_2@81@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_2@81@01) 0))))
(declare-const $k@84@01 $Perm)
(assert ($Perm.isReadVar $k@84@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@84@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (list___len__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@84@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> l_2@81@01) (list<PyType> (list_arg<PyType> (typeof<PyType> l_2@81@01) 0)))
  (list___len__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))
(set-option :timeout 0)
(push) ; 2
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01) 1))
(pop) ; 2
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01) 1))
(assert (int___gt__ $Snap.unit (list___len__ ($Snap.combine
  $Snap.unit
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(list___getitem__(l_2, __prim__int___box__(0))), C())
; [eval] typeof(list___getitem__(l_2, __prim__int___box__(0)))
; [eval] list___getitem__(l_2, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 2
(assert (__prim__int___box__%precondition $Snap.unit 0))
(pop) ; 2
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 0))
(push) ; 2
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType)))
(declare-const $k@85@01 $Perm)
(assert ($Perm.isReadVar $k@85@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@85@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@86@01 $Perm)
(assert ($Perm.isReadVar $k@86@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@86@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@86@01))
(declare-const letvar@87@01 Int)
(assert (=
  (as letvar@87@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0)))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 15 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 15 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(push) ; 3
; [then-branch: 16 | False | live]
; [else-branch: 16 | True | live]
(push) ; 4
; [then-branch: 16 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 16 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 5
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 5
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 17 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 17 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 7
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
(push) ; 3
(assert (not (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (<
    (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01))))
(assert (list___getitem__%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0)))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@85@01))
(assert ($Perm.isReadVar $k@86@01))
(assert (and
  (issubtype<Bool> (typeof<PyType> (__prim__int___box__ $Snap.unit 0)) (as int<PyType>  PyType))
  (=
    (as letvar@87@01  Int)
    (list___len__ ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01))
  (int___unbox__%precondition $Snap.unit (__prim__int___box__ $Snap.unit 0))
  (not (< (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))
  (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
  (=>
    (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0)
    (<
      (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0))
      (list___len__ ($Snap.combine
        $Snap.unit
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))
  (list___getitem__%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
        $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))))
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))) (as C<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@83@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 ($Snap.combine ($Snap.first $t@88@01) ($Snap.second $t@88@01))))
(assert (= ($Snap.first $t@88@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@88@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@88@01))
    ($Snap.second ($Snap.second $t@88@01)))))
(assert (= ($Snap.first ($Snap.second $t@88@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@88@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@88@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@88@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@88@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@80@01 _current_wait_level_160@82@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@88@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@89@01 $Ref)
; [exec]
; var c_0: Ref
(declare-const c_0@90@01 $Ref)
; [exec]
; var l_6: Ref
(declare-const l_6@91@01 $Ref)
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@92@01 $Perm)
; [exec]
; var _method_measures_160: Seq[Measure$]
(declare-const _method_measures_160@93@01 Seq<Measure$>)
; [exec]
; _method_measures_160 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _err := null
; [exec]
; l_6 := l_2
; [exec]
; c_0 := object___cast__(D(), list___getitem__(l_6, __prim__int___box__(0)))
; [eval] object___cast__(D(), list___getitem__(l_6, __prim__int___box__(0)))
; [eval] D()
; [eval] list___getitem__(l_6, __prim__int___box__(0))
; [eval] __prim__int___box__(0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
; [eval] issubtype(typeof(key), int())
; [eval] typeof(key)
; [eval] int()
(declare-const $k@94@01 $Perm)
(assert ($Perm.isReadVar $k@94@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@94@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (let ln == (list___len__(self)) in (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln))
; [eval] list___len__(self)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(self), list(list_arg(typeof(self), 0)))
; [eval] typeof(self)
; [eval] list(list_arg(typeof(self), 0))
; [eval] list_arg(typeof(self), 0)
; [eval] typeof(self)
(declare-const $k@95@01 $Perm)
(assert ($Perm.isReadVar $k@95@01))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@95@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@95@01))
(declare-const letvar@96@01 Int)
(assert (=
  (as letvar@96@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))
; [eval] (int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln) && (int___unbox__(key) >= 0 ==> int___unbox__(key) < ln)
; [eval] int___unbox__(key) < 0 ==> int___unbox__(key) >= -ln
; [eval] int___unbox__(key) < 0
; [eval] int___unbox__(key)
(set-option :timeout 0)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 18 | int___unbox__(_, __prim__int___box__(_, 0)) < 0 | dead]
; [else-branch: 18 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0) | live]
(push) ; 5
; [else-branch: 18 | !(int___unbox__(_, __prim__int___box__(_, 0)) < 0)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 19 | False | live]
; [else-branch: 19 | True | live]
(push) ; 5
; [then-branch: 19 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | True]
; [eval] int___unbox__(key) >= 0 ==> int___unbox__(key) < ln
; [eval] int___unbox__(key) >= 0
; [eval] int___unbox__(key)
(push) ; 6
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 6
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (>= (int___unbox__ $Snap.unit (__prim__int___box__ $Snap.unit 0)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0 | live]
; [else-branch: 20 | !(int___unbox__(_, __prim__int___box__(_, 0)) >= 0) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 20 | int___unbox__(_, __prim__int___box__(_, 0)) >= 0]
; [eval] int___unbox__(key) < ln
; [eval] int___unbox__(key)
(push) ; 8
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 8
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(pop) ; 3
; Joined path conditions
(assert ($Perm.isReadVar $k@94@01))
(assert ($Perm.isReadVar $k@95@01))
(assert (=
  (as letvar@96@01  Int)
  (list___len__ ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))) l_2@81@01)))
(push) ; 3
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))) (as D<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))) (as D<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))) (as D<PyType>  PyType))))
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
; [eval] issubtype(typeof(obj), typ)
; [eval] typeof(obj)
(set-option :timeout 0)
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> (list___getitem__ ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@83@01))))
      $Snap.unit))) l_2@81@01 (__prim__int___box__ $Snap.unit 0))) (as D<PyType>  PyType))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- C_f ----------
(declare-const _cthread_156@97@01 $Ref)
(declare-const _caller_measures_156@98@01 Seq<Measure$>)
(declare-const _residue_156@99@01 $Perm)
(declare-const self@100@01 $Ref)
(declare-const a@101@01 $Ref)
(declare-const _current_wait_level_156@102@01 $Perm)
(declare-const _cthread_156@103@01 $Ref)
(declare-const _caller_measures_156@104@01 Seq<Measure$>)
(declare-const _residue_156@105@01 $Perm)
(declare-const self@106@01 $Ref)
(declare-const a@107@01 $Ref)
(declare-const _current_wait_level_156@108@01 $Perm)
(push) ; 1
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 ($Snap.combine ($Snap.first $t@109@01) ($Snap.second $t@109@01))))
(assert (= ($Snap.first $t@109@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@103@01 $Ref.null)))
(assert (=
  ($Snap.second $t@109@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@109@01))
    ($Snap.second ($Snap.second $t@109@01)))))
(assert (= ($Snap.first ($Snap.second $t@109@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@103@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@109@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@109@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@109@01))) $Snap.unit))
; [eval] issubtype(typeof(self), C())
; [eval] typeof(self)
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> self@106@01) (as C<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@109@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01))))
  $Snap.unit))
; [eval] issubtype(typeof(a), int())
; [eval] typeof(a)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> a@107@01) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
  $Snap.unit))
; [eval] self != null
(assert (not (= self@106@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@110@01 $Snap)
(assert (= $t@110@01 ($Snap.combine ($Snap.first $t@110@01) ($Snap.second $t@110@01))))
(assert (= ($Snap.first $t@110@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@110@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@110@01))
    ($Snap.second ($Snap.second $t@110@01)))))
(assert (= ($Snap.first ($Snap.second $t@110@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@110@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@110@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@110@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@110@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@105@01 _current_wait_level_156@108@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@110@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@111@01 $Ref)
; [exec]
; var self_0: Ref
(declare-const self_0@112@01 $Ref)
; [exec]
; var a_0: Ref
(declare-const a_0@113@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@114@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@115@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == C()
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 $Snap.unit))
; [eval] typeof(self) == C()
; [eval] typeof(self)
; [eval] C()
(assert (= (typeof<PyType> self@106@01) (as C<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_0 := self
; [exec]
; a_0 := a
; [exec]
; label __end
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_161@117@01 $Ref)
(declare-const _caller_measures_161@118@01 Seq<Measure$>)
(declare-const _residue_161@119@01 $Perm)
(declare-const _current_wait_level_161@120@01 $Perm)
(declare-const _cthread_161@121@01 $Ref)
(declare-const _caller_measures_161@122@01 Seq<Measure$>)
(declare-const _residue_161@123@01 $Perm)
(declare-const _current_wait_level_161@124@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 ($Snap.combine ($Snap.first $t@125@01) ($Snap.second $t@125@01))))
(assert (= ($Snap.first $t@125@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@121@01 $Ref.null)))
(assert (=
  ($Snap.second $t@125@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@125@01))
    ($Snap.second ($Snap.second $t@125@01)))))
(assert (= ($Snap.first ($Snap.second $t@125@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@121@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@125@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 ($Snap.combine ($Snap.first $t@126@01) ($Snap.second $t@126@01))))
(assert (= ($Snap.first $t@126@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@126@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@126@01))
    ($Snap.second ($Snap.second $t@126@01)))))
(assert (= ($Snap.first ($Snap.second $t@126@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@126@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@126@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@126@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@123@01 _current_wait_level_161@124@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@126@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@127@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@128@01 Set<_Name>)
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@129@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@130@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
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
(declare-const module_names_0@131@01 Set<_Name>)
(assert (=
  module_names_0@131@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@132@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@132@01))
    ($Snap.second ($Snap.second $t@132@01)))))
(assert (= ($Snap.first ($Snap.second $t@132@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@132@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@132@01)) $Snap.unit))
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
(declare-const module_names_0@133@01 Set<_Name>)
(assert (=
  module_names_0@133@01
  (Set_union module_names_0@131@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
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
  ($Snap.second $t@134@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@134@01))
    ($Snap.second ($Snap.second $t@134@01)))))
(assert (= ($Snap.first ($Snap.second $t@134@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@134@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@134@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@134@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@134@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@134@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@134@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@134@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@134@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1953718627)))
; [eval] (module_names_0 union Set(_single(1953718627)))
; [eval] Set(_single(1953718627))
; [eval] _single(1953718627)
(declare-const module_names_0@135@01 Set<_Name>)
(assert (=
  module_names_0@135@01
  (Set_union module_names_0@133@01 (Set_singleton (_single<_Name> 1953718627)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1953720652)))
; [eval] (module_names_0 union Set(_single(1953720652)))
; [eval] Set(_single(1953720652))
; [eval] _single(1953720652)
(declare-const module_names_0@136@01 Set<_Name>)
(assert (=
  module_names_0@136@01
  (Set_union module_names_0@135@01 (Set_singleton (_single<_Name> 1953720652)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(102)))
; [eval] (module_names_0 union Set(_single(102)))
; [eval] Set(_single(102))
; [eval] _single(102)
(declare-const module_names_0@137@01 Set<_Name>)
(assert (=
  module_names_0@137@01
  (Set_union module_names_0@136@01 (Set_singleton (_single<_Name> 102)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(67)))
; [eval] (module_names_0 union Set(_single(67)))
; [eval] Set(_single(67))
; [eval] _single(67)
(declare-const module_names_0@138@01 Set<_Name>)
(assert (=
  module_names_0@138@01
  (Set_union module_names_0@137@01 (Set_singleton (_single<_Name> 67)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(68)))
; [eval] (module_names_0 union Set(_single(68)))
; [eval] Set(_single(68))
; [eval] _single(68)
(declare-const module_names_0@139@01 Set<_Name>)
(assert (=
  module_names_0@139@01
  (Set_union module_names_0@138@01 (Set_singleton (_single<_Name> 68)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(109)))
; [eval] (module_names_0 union Set(_single(109)))
; [eval] Set(_single(109))
; [eval] _single(109)
(declare-const module_names_0@140@01 Set<_Name>)
(assert (=
  module_names_0@140@01
  (Set_union module_names_0@139@01 (Set_singleton (_single<_Name> 109)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3301229)))
; [eval] (module_names_0 union Set(_single(3301229)))
; [eval] Set(_single(3301229))
; [eval] _single(3301229)
(declare-const module_names_0@141@01 Set<_Name>)
(assert (=
  module_names_0@141@01
  (Set_union module_names_0@140@01 (Set_singleton (_single<_Name> 3301229)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3366765)))
; [eval] (module_names_0 union Set(_single(3366765)))
; [eval] Set(_single(3366765))
; [eval] _single(3366765)
(declare-const module_names_0@142@01 Set<_Name>)
(assert (=
  module_names_0@142@01
  (Set_union module_names_0@141@01 (Set_singleton (_single<_Name> 3366765)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(3432301)))
; [eval] (module_names_0 union Set(_single(3432301)))
; [eval] Set(_single(3432301))
; [eval] _single(3432301)
(declare-const module_names_0@143@01 Set<_Name>)
(assert (=
  module_names_0@143@01
  (Set_union module_names_0@142@01 (Set_singleton (_single<_Name> 3432301)))))
; [exec]
; label __end
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
