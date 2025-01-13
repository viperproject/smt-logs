(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:33:33
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
(declare-const A<PyType> PyType)
(declare-const B<PyType> PyType)
(declare-const C<PyType> PyType)
(declare-const D<PyType> PyType)
(declare-const E<PyType> PyType)
(declare-const F<PyType> PyType)
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
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun int___gt__ ($Snap Int Int) Bool)
(declare-fun int___gt__%limited ($Snap Int Int) Bool)
(declare-fun int___gt__%stateless (Int Int) Bool)
(declare-fun int___gt__%precondition ($Snap Int Int) Bool)
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
(assert (distinct bool<PyType> float<PyType> bytes<PyType> F<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> C<PyType> PMultiset_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> E<PyType> slice<PyType> B<PyType> PSet_basic<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> Iterator_basic<PyType> D<PyType> tuple_basic<PyType> str<PyType> PSeq_basic<PyType> A<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as A<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as A<PyType>  PyType)) (as A<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as B<PyType>  PyType) (as A<PyType>  PyType))
  (= (get_basic<PyType> (as B<PyType>  PyType)) (as B<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as C<PyType>  PyType) (as A<PyType>  PyType))
  (= (get_basic<PyType> (as C<PyType>  PyType)) (as C<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as D<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as D<PyType>  PyType)) (as D<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as E<PyType>  PyType) (as D<PyType>  PyType))
  (= (get_basic<PyType> (as E<PyType>  PyType)) (as E<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as F<PyType>  PyType) (as D<PyType>  PyType))
  (= (get_basic<PyType> (as F<PyType>  PyType)) (as F<PyType>  PyType))))
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
  :qid |quant-u-2505|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-2506|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-2507|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2508|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2529|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-2530|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (= (Level%limited s@$ r@4@00) (Level s@$ r@4@00))
  :pattern ((Level s@$ r@4@00))
  :qid |quant-u-2509|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (Level%stateless r@4@00)
  :pattern ((Level%limited s@$ r@4@00))
  :qid |quant-u-2510|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (=
    (str___create__%limited s@$ len@6@00 value@7@00)
    (str___create__ s@$ len@6@00 value@7@00))
  :pattern ((str___create__ s@$ len@6@00 value@7@00))
  :qid |quant-u-2511|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (str___create__%stateless len@6@00 value@7@00)
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2512|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (and
      (= (str___len__ $Snap.unit result@8@00) len@6@00)
      (= (str___val__ $Snap.unit result@8@00) value@7@00)
      (= (typeof<PyType> result@8@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2531|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (str___len__%precondition $Snap.unit result@8@00)))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2532|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) (=>
    (str___create__%precondition s@$ len@6@00 value@7@00)
    (str___val__%precondition $Snap.unit result@8@00)))
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2533|)))
(assert (forall ((s@$ $Snap) (len@6@00 Int) (value@7@00 Int)) (!
  (let ((result@8@00 (str___create__%limited s@$ len@6@00 value@7@00))) true)
  :pattern ((str___create__%limited s@$ len@6@00 value@7@00))
  :qid |quant-u-2534|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref) (other@10@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@9@00 other@10@00)
    (str___eq__ s@$ self@9@00 other@10@00))
  :pattern ((str___eq__ s@$ self@9@00 other@10@00))
  :qid |quant-u-2513|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref) (other@10@00 $Ref)) (!
  (str___eq__%stateless self@9@00 other@10@00)
  :pattern ((str___eq__%limited s@$ self@9@00 other@10@00))
  :qid |quant-u-2514|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref) (other@10@00 $Ref)) (!
  (let ((result@11@00 (str___eq__%limited s@$ self@9@00 other@10@00))) (=>
    (str___eq__%precondition s@$ self@9@00 other@10@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@9@00)
          (str___val__ $Snap.unit other@10@00))
        result@11@00)
      (=>
        result@11@00
        (=
          (str___len__ $Snap.unit self@9@00)
          (str___len__ $Snap.unit other@10@00))))))
  :pattern ((str___eq__%limited s@$ self@9@00 other@10@00))
  :qid |quant-u-2535|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref) (other@10@00 $Ref)) (!
  (let ((result@11@00 (str___eq__%limited s@$ self@9@00 other@10@00))) (=>
    (str___eq__%precondition s@$ self@9@00 other@10@00)
    (and
      (str___val__%precondition $Snap.unit self@9@00)
      (str___val__%precondition $Snap.unit other@10@00))))
  :pattern ((str___eq__%limited s@$ self@9@00 other@10@00))
  :qid |quant-u-2536|)))
(assert (forall ((s@$ $Snap) (self@9@00 $Ref) (other@10@00 $Ref)) (!
  (let ((result@11@00 (str___eq__%limited s@$ self@9@00 other@10@00))) (=>
    (and (str___eq__%precondition s@$ self@9@00 other@10@00) result@11@00)
    (and
      (str___len__%precondition $Snap.unit self@9@00)
      (str___len__%precondition $Snap.unit other@10@00))))
  :pattern ((str___eq__%limited s@$ self@9@00 other@10@00))
  :qid |quant-u-2537|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (=
    (int___gt__%limited s@$ self@12@00 other@13@00)
    (int___gt__ s@$ self@12@00 other@13@00))
  :pattern ((int___gt__ s@$ self@12@00 other@13@00))
  :qid |quant-u-2515|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (int___gt__%stateless self@12@00 other@13@00)
  :pattern ((int___gt__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-2516|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  (=>
    (int___gt__%precondition s@$ self@12@00 other@13@00)
    (= (int___gt__ s@$ self@12@00 other@13@00) (> self@12@00 other@13@00)))
  :pattern ((int___gt__ s@$ self@12@00 other@13@00))
  :qid |quant-u-2538|)))
(assert (forall ((s@$ $Snap) (self@12@00 Int) (other@13@00 Int)) (!
  true
  :pattern ((int___gt__ s@$ self@12@00 other@13@00))
  :qid |quant-u-2539|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-2517|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-2518|)))
(assert (forall ((s@$ $Snap) (box@16@00 $Ref)) (!
  (= (bool___unbox__%limited s@$ box@16@00) (bool___unbox__ s@$ box@16@00))
  :pattern ((bool___unbox__ s@$ box@16@00))
  :qid |quant-u-2519|)))
(assert (forall ((s@$ $Snap) (box@16@00 $Ref)) (!
  (bool___unbox__%stateless box@16@00)
  :pattern ((bool___unbox__%limited s@$ box@16@00))
  :qid |quant-u-2520|)))
(assert (forall ((s@$ $Snap) (box@16@00 $Ref)) (!
  (let ((result@17@00 (bool___unbox__%limited s@$ box@16@00))) (=>
    (bool___unbox__%precondition s@$ box@16@00)
    (= (__prim__bool___box__%limited $Snap.unit result@17@00) box@16@00)))
  :pattern ((bool___unbox__%limited s@$ box@16@00))
  :qid |quant-u-2540|)))
(assert (forall ((s@$ $Snap) (box@16@00 $Ref)) (!
  (let ((result@17@00 (bool___unbox__%limited s@$ box@16@00))) (=>
    (bool___unbox__%precondition s@$ box@16@00)
    (__prim__bool___box__%precondition $Snap.unit result@17@00)))
  :pattern ((bool___unbox__%limited s@$ box@16@00))
  :qid |quant-u-2541|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (=
    (__prim__bool___box__%limited s@$ prim@18@00)
    (__prim__bool___box__ s@$ prim@18@00))
  :pattern ((__prim__bool___box__ s@$ prim@18@00))
  :qid |quant-u-2521|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (__prim__bool___box__%stateless prim@18@00)
  :pattern ((__prim__bool___box__%limited s@$ prim@18@00))
  :qid |quant-u-2522|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (let ((result@19@00 (__prim__bool___box__%limited s@$ prim@18@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@18@00)
    (and
      (= (typeof<PyType> result@19@00) (as bool<PyType>  PyType))
      (= (bool___unbox__%limited $Snap.unit result@19@00) prim@18@00)
      (= (int___unbox__%limited $Snap.unit result@19@00) (ite prim@18@00 1 0)))))
  :pattern ((__prim__bool___box__%limited s@$ prim@18@00))
  :qid |quant-u-2542|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (let ((result@19@00 (__prim__bool___box__%limited s@$ prim@18@00))) true)
  :pattern ((__prim__bool___box__%limited s@$ prim@18@00))
  :qid |quant-u-2543|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (let ((result@19@00 (__prim__bool___box__%limited s@$ prim@18@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@18@00)
    (bool___unbox__%precondition $Snap.unit result@19@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@18@00))
  :qid |quant-u-2544|)))
(assert (forall ((s@$ $Snap) (prim@18@00 Bool)) (!
  (let ((result@19@00 (__prim__bool___box__%limited s@$ prim@18@00))) (=>
    (__prim__bool___box__%precondition s@$ prim@18@00)
    (int___unbox__%precondition $Snap.unit result@19@00)))
  :pattern ((__prim__bool___box__%limited s@$ prim@18@00))
  :qid |quant-u-2545|)))
(assert (forall ((s@$ $Snap) (box@20@00 $Ref)) (!
  (= (int___unbox__%limited s@$ box@20@00) (int___unbox__ s@$ box@20@00))
  :pattern ((int___unbox__ s@$ box@20@00))
  :qid |quant-u-2523|)))
(assert (forall ((s@$ $Snap) (box@20@00 $Ref)) (!
  (int___unbox__%stateless box@20@00)
  :pattern ((int___unbox__%limited s@$ box@20@00))
  :qid |quant-u-2524|)))
(assert (forall ((s@$ $Snap) (box@20@00 $Ref)) (!
  (let ((result@21@00 (int___unbox__%limited s@$ box@20@00))) (=>
    (int___unbox__%precondition s@$ box@20@00)
    (and
      (=>
        (not
          (issubtype<Bool> (typeof<PyType> box@20@00) (as bool<PyType>  PyType)))
        (= (__prim__int___box__%limited $Snap.unit result@21@00) box@20@00))
      (=>
        (issubtype<Bool> (typeof<PyType> box@20@00) (as bool<PyType>  PyType))
        (=
          (__prim__bool___box__%limited $Snap.unit (not (= result@21@00 0)))
          box@20@00)))))
  :pattern ((int___unbox__%limited s@$ box@20@00))
  :qid |quant-u-2546|)))
(assert (forall ((s@$ $Snap) (box@20@00 $Ref)) (!
  (let ((result@21@00 (int___unbox__%limited s@$ box@20@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@20@00)
      (not
        (issubtype<Bool> (typeof<PyType> box@20@00) (as bool<PyType>  PyType))))
    (__prim__int___box__%precondition $Snap.unit result@21@00)))
  :pattern ((int___unbox__%limited s@$ box@20@00))
  :qid |quant-u-2547|)))
(assert (forall ((s@$ $Snap) (box@20@00 $Ref)) (!
  (let ((result@21@00 (int___unbox__%limited s@$ box@20@00))) (=>
    (and
      (int___unbox__%precondition s@$ box@20@00)
      (issubtype<Bool> (typeof<PyType> box@20@00) (as bool<PyType>  PyType)))
    (__prim__bool___box__%precondition $Snap.unit (not (= result@21@00 0)))))
  :pattern ((int___unbox__%limited s@$ box@20@00))
  :qid |quant-u-2548|)))
(assert (forall ((s@$ $Snap) (prim@22@00 Int)) (!
  (=
    (__prim__int___box__%limited s@$ prim@22@00)
    (__prim__int___box__ s@$ prim@22@00))
  :pattern ((__prim__int___box__ s@$ prim@22@00))
  :qid |quant-u-2525|)))
(assert (forall ((s@$ $Snap) (prim@22@00 Int)) (!
  (__prim__int___box__%stateless prim@22@00)
  :pattern ((__prim__int___box__%limited s@$ prim@22@00))
  :qid |quant-u-2526|)))
(assert (forall ((s@$ $Snap) (prim@22@00 Int)) (!
  (let ((result@23@00 (__prim__int___box__%limited s@$ prim@22@00))) (=>
    (__prim__int___box__%precondition s@$ prim@22@00)
    (and
      (= (typeof<PyType> result@23@00) (as int<PyType>  PyType))
      (= (int___unbox__%limited $Snap.unit result@23@00) prim@22@00))))
  :pattern ((__prim__int___box__%limited s@$ prim@22@00))
  :qid |quant-u-2549|)))
(assert (forall ((s@$ $Snap) (prim@22@00 Int)) (!
  (let ((result@23@00 (__prim__int___box__%limited s@$ prim@22@00))) true)
  :pattern ((__prim__int___box__%limited s@$ prim@22@00))
  :qid |quant-u-2550|)))
(assert (forall ((s@$ $Snap) (prim@22@00 Int)) (!
  (let ((result@23@00 (__prim__int___box__%limited s@$ prim@22@00))) (=>
    (__prim__int___box__%precondition s@$ prim@22@00)
    (int___unbox__%precondition $Snap.unit result@23@00)))
  :pattern ((__prim__int___box__%limited s@$ prim@22@00))
  :qid |quant-u-2551|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-2527|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-2528|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- A___init__ ----------
(declare-const _cthread_156@0@01 $Ref)
(declare-const _caller_measures_156@1@01 Seq<Measure$>)
(declare-const _residue_156@2@01 $Perm)
(declare-const self@3@01 $Ref)
(declare-const _current_wait_level_156@4@01 $Perm)
(declare-const _cthread_156@5@01 $Ref)
(declare-const _caller_measures_156@6@01 Seq<Measure$>)
(declare-const _residue_156@7@01 $Perm)
(declare-const self@8@01 $Ref)
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
; [eval] self != null
(assert (not (= self@8@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(assert (issubtype<Bool> (typeof<PyType> self@8@01) (as A<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
  $Snap.unit))
; [eval] self != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
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
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))) 13))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@11@01)))))) 13))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@11@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@12@01 $Ref)
; [exec]
; var self_3: Ref
(declare-const self_3@13@01 $Ref)
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@14@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@15@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self) == A()
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 $Snap.unit))
; [eval] typeof(self) == A()
; [eval] typeof(self)
; [eval] A()
(assert (= (typeof<PyType> self@8@01) (as A<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_3 := self
; [eval] perm(_MaySet(self_3, 465491615553)) > none
; [eval] perm(_MaySet(self_3, 465491615553))
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
; exhale acc(_MaySet(self_3, 465491615553), write)
; [exec]
; inhale acc(self_3.A_val, write)
(declare-const $t@17@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_3.A_val := __prim__int___box__(16)
; [eval] __prim__int___box__(16)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 16))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 16))
(declare-const A_val@18@01 $Ref)
(assert (= A_val@18@01 (__prim__int___box__ $Snap.unit 16)))
; [exec]
; label __end
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> A_val@18@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_val@18@01) (as int<PyType>  PyType)))
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit A_val@18@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit A_val@18@01))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@18@01) 13))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@18@01) 13))
(push) ; 4
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@18@01) 13)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@18@01) 13))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !(perm(_MaySet(self_3, 465491615553)) > none)
; [eval] perm(_MaySet(self_3, 465491615553)) > none
; [eval] perm(_MaySet(self_3, 465491615553))
; [then-branch: 1 | False | dead]
; [else-branch: 1 | True | live]
(push) ; 3
; [else-branch: 1 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- A_construct ----------
(declare-const _cthread_157@19@01 $Ref)
(declare-const _caller_measures_157@20@01 Seq<Measure$>)
(declare-const _residue_157@21@01 $Perm)
(declare-const cls@22@01 PyType)
(declare-const _current_wait_level_157@23@01 $Perm)
(declare-const _res@24@01 $Ref)
(declare-const _cthread_157@25@01 $Ref)
(declare-const _caller_measures_157@26@01 Seq<Measure$>)
(declare-const _residue_157@27@01 $Perm)
(declare-const cls@28@01 PyType)
(declare-const _current_wait_level_157@29@01 $Perm)
(declare-const _res@30@01 $Ref)
(push) ; 1
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(assert (= ($Snap.first $t@31@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@25@01 $Ref.null)))
(assert (=
  ($Snap.second $t@31@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@31@01))
    ($Snap.second ($Snap.second $t@31@01)))))
(assert (= ($Snap.first ($Snap.second $t@31@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@25@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@31@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@31@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@31@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@31@01))) $Snap.unit))
; [eval] issubtype(cls, A())
; [eval] A()
(assert (issubtype<Bool> cls@28@01 (as A<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@31@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 ($Snap.combine ($Snap.first $t@32@01) ($Snap.second $t@32@01))))
(assert (= ($Snap.first $t@32@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@32@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@32@01))
    ($Snap.second ($Snap.second $t@32@01)))))
(assert (= ($Snap.first ($Snap.second $t@32@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@32@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@32@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@32@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@27@01 _current_wait_level_157@29@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@32@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), A())
; [eval] typeof(_res)
; [eval] A()
(assert (issubtype<Bool> (typeof<PyType> _res@30@01) (as A<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@30@01) cls@28@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@32@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@33@01 $Ref)
; [exec]
; var cls_3: PyType
(declare-const cls_3@34@01 PyType)
; [exec]
; var A_res: Ref
(declare-const A_res@35@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@36@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@37@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; cls_3 := cls
; [exec]
; A_res := new()
(declare-const A_res@38@01 $Ref)
(assert (not (= A_res@38@01 $Ref.null)))
(assert (not (= A_res@38@01 A_res@35@01)))
(assert (not (= A_res@38@01 _cthread_157@25@01)))
; [exec]
; inhale typeof(A_res) == cls_3
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] typeof(A_res) == cls_3
; [eval] typeof(A_res)
(assert (= (typeof<PyType> A_res@38@01) cls@28@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_MaySet(A_res, 465491615553), write)
(declare-const $t@40@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_157 := A___init__(_cthread_157, _method_measures_157, _residue_157, A_res)
; [eval] _cthread_156 != null
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
; [eval] self != null
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> A_res@38@01) (as A<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_res@38@01) (as A<PyType>  PyType)))
; [eval] self != null
; [eval] perm(MustTerminate(_cthread_156)) == none
; [eval] perm(MustTerminate(_cthread_156))
; [eval] (forperm _r_1: Ref [MustInvokeBounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [MustInvokeUnbounded(_r_1)] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseBounded] :: false)
; [eval] (forperm _r_1: Ref [_r_1.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_156@41@01 $Perm)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 ($Snap.combine ($Snap.first $t@42@01) ($Snap.second $t@42@01))))
(assert (= ($Snap.first $t@42@01) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@42@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@42@01))
    ($Snap.second ($Snap.second $t@42@01)))))
(assert (= ($Snap.first ($Snap.second $t@42@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@42@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@42@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@42@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_157@27@01 _current_wait_level_156@41@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@42@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))) 13))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@42@01)))))) 13))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@42@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _res := A_res
; [exec]
; label __end
; [eval] issubtype(typeof(_res), A())
; [eval] typeof(_res)
; [eval] A()
; [eval] typeof(_res) == cls
; [eval] typeof(_res)
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- B___init__ ----------
(declare-const _cthread_158@43@01 $Ref)
(declare-const _caller_measures_158@44@01 Seq<Measure$>)
(declare-const _residue_158@45@01 $Perm)
(declare-const self_0@46@01 $Ref)
(declare-const _current_wait_level_158@47@01 $Perm)
(declare-const _cthread_158@48@01 $Ref)
(declare-const _caller_measures_158@49@01 Seq<Measure$>)
(declare-const _residue_158@50@01 $Perm)
(declare-const self_0@51@01 $Ref)
(declare-const _current_wait_level_158@52@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (= ($Snap.first $t@53@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@48@01 $Ref.null)))
(assert (=
  ($Snap.second $t@53@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@01))
    ($Snap.second ($Snap.second $t@53@01)))))
(assert (= ($Snap.first ($Snap.second $t@53@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@48@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@53@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@53@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@53@01))) $Snap.unit))
; [eval] self_0 != null
(assert (not (= self_0@51@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@53@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@53@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0), B())
; [eval] typeof(self_0)
; [eval] B()
(assert (issubtype<Bool> (typeof<PyType> self_0@51@01) (as B<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
  $Snap.unit))
; [eval] self_0 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(assert (= ($Snap.first $t@54@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@54@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@54@01))
    ($Snap.second ($Snap.second $t@54@01)))))
(assert (= ($Snap.first ($Snap.second $t@54@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@54@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@54@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@54@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@50@01 _current_wait_level_158@52@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@54@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.A_val), int())
; [eval] typeof(self_0.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_0.A_val), 14)
; [eval] int___unbox__(self_0.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) 14))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) 14))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) 14))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@55@01 $Ref)
; [exec]
; var self_4: Ref
(declare-const self_4@56@01 $Ref)
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@57@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@58@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == B()
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 $Snap.unit))
; [eval] typeof(self_0) == B()
; [eval] typeof(self_0)
; [eval] B()
(assert (= (typeof<PyType> self_0@51@01) (as B<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_4 := self_0
; [eval] perm(_MaySet(self_4, 465491615553)) > none
; [eval] perm(_MaySet(self_4, 465491615553))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | True | live]
; [else-branch: 2 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 2 | True]
; [exec]
; exhale acc(_MaySet(self_4, 465491615553), write)
; [exec]
; inhale acc(self_4.A_val, write)
(declare-const $t@60@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_4.A_val := __prim__int___box__(16)
; [eval] __prim__int___box__(16)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 16))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 16))
(declare-const A_val@61@01 $Ref)
(assert (= A_val@61@01 (__prim__int___box__ $Snap.unit 16)))
; [exec]
; label __end
; [eval] issubtype(typeof(self_0.A_val), int())
; [eval] typeof(self_0.A_val)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> A_val@61@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_val@61@01) (as int<PyType>  PyType)))
; [eval] int___gt__(int___unbox__(self_0.A_val), 14)
; [eval] int___unbox__(self_0.A_val)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit A_val@61@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit A_val@61@01))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@61@01) 14))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@61@01) 14))
(push) ; 4
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@61@01) 14)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@61@01) 14))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !(perm(_MaySet(self_4, 465491615553)) > none)
; [eval] perm(_MaySet(self_4, 465491615553)) > none
; [eval] perm(_MaySet(self_4, 465491615553))
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 3
; [else-branch: 3 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- B___init___override_check ----------
(declare-const _cthread_156@62@01 $Ref)
(declare-const _caller_measures_156@63@01 Seq<Measure$>)
(declare-const _residue_156@64@01 $Perm)
(declare-const self@65@01 $Ref)
(declare-const _current_wait_level_156@66@01 $Perm)
(declare-const _cthread_156@67@01 $Ref)
(declare-const _caller_measures_156@68@01 Seq<Measure$>)
(declare-const _residue_156@69@01 $Perm)
(declare-const self@70@01 $Ref)
(declare-const _current_wait_level_156@71@01 $Perm)
(push) ; 1
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(assert (= ($Snap.first $t@72@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@67@01 $Ref.null)))
(assert (=
  ($Snap.second $t@72@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@72@01))
    ($Snap.second ($Snap.second $t@72@01)))))
(assert (= ($Snap.first ($Snap.second $t@72@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@67@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@72@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@72@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@72@01))) $Snap.unit))
; [eval] self != null
(assert (not (= self@70@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@72@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@72@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(assert (issubtype<Bool> (typeof<PyType> self@70@01) (as A<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
  $Snap.unit))
; [eval] self != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@72@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@73@01 $Snap)
(assert (= $t@73@01 ($Snap.combine ($Snap.first $t@73@01) ($Snap.second $t@73@01))))
(assert (= ($Snap.first $t@73@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@73@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@73@01))
    ($Snap.second ($Snap.second $t@73@01)))))
(assert (= ($Snap.first ($Snap.second $t@73@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@73@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@73@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@73@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@69@01 _current_wait_level_156@71@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@73@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))) 13))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@73@01)))))) 13))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@73@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@74@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@75@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(typeof(self), B())
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 $Snap.unit))
; [eval] issubtype(typeof(self), B())
; [eval] typeof(self)
; [eval] B()
(assert (issubtype<Bool> (typeof<PyType> self@70@01) (as B<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_156 := B___init__(_cthread_156, _method_measures_156, _residue_156, self)
; [eval] _cthread_158 != null
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
; [eval] self_0 != null
; [eval] issubtype(typeof(self_0), B())
; [eval] typeof(self_0)
; [eval] B()
; [eval] self_0 != null
; [eval] perm(MustTerminate(_cthread_158)) == none
; [eval] perm(MustTerminate(_cthread_158))
; [eval] (forperm _r_7: Ref [MustInvokeBounded(_r_7)] :: false)
; [eval] (forperm _r_7: Ref [MustInvokeUnbounded(_r_7)] :: false)
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseBounded] :: false)
; [eval] (forperm _r_7: Ref [_r_7.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_158@77@01 $Perm)
(declare-const $t@78@01 $Snap)
(assert (= $t@78@01 ($Snap.combine ($Snap.first $t@78@01) ($Snap.second $t@78@01))))
(assert (= ($Snap.first $t@78@01) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@78@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@78@01))
    ($Snap.second ($Snap.second $t@78@01)))))
(assert (= ($Snap.first ($Snap.second $t@78@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@78@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@78@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@78@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_156@69@01 _current_wait_level_158@77@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@78@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0.A_val), int())
; [eval] typeof(self_0.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_0.A_val), 14)
; [eval] int___unbox__(self_0.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 14))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 14))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 14))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@78@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 13))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 13)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@78@01)))))) 13))
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- C___init__ ----------
(declare-const _cthread_159@79@01 $Ref)
(declare-const _caller_measures_159@80@01 Seq<Measure$>)
(declare-const _residue_159@81@01 $Perm)
(declare-const self_1@82@01 $Ref)
(declare-const _current_wait_level_159@83@01 $Perm)
(declare-const _cthread_159@84@01 $Ref)
(declare-const _caller_measures_159@85@01 Seq<Measure$>)
(declare-const _residue_159@86@01 $Perm)
(declare-const self_1@87@01 $Ref)
(declare-const _current_wait_level_159@88@01 $Perm)
(push) ; 1
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (= ($Snap.first $t@89@01) $Snap.unit))
; [eval] _cthread_159 != null
(assert (not (= _cthread_159@84@01 $Ref.null)))
(assert (=
  ($Snap.second $t@89@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@89@01))
    ($Snap.second ($Snap.second $t@89@01)))))
(assert (= ($Snap.first ($Snap.second $t@89@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_159@84@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@89@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@89@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@89@01))) $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@87@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@89@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1), C())
; [eval] typeof(self_1)
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> self_1@87@01) (as C<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
  $Snap.unit))
; [eval] self_1 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@90@01 $Snap)
(assert (= $t@90@01 ($Snap.combine ($Snap.first $t@90@01) ($Snap.second $t@90@01))))
(assert (= ($Snap.first $t@90@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@90@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@90@01))
    ($Snap.second ($Snap.second $t@90@01)))))
(assert (= ($Snap.first ($Snap.second $t@90@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@90@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@90@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@90@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_159@86@01 _current_wait_level_159@88@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@90@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_val), int())
; [eval] typeof(self_1.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_1.A_val), 12)
; [eval] int___unbox__(self_1.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))) 12))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))) 12))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@90@01)))))) 12))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@90@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@91@01 $Ref)
; [exec]
; var self_5: Ref
(declare-const self_5@92@01 $Ref)
; [exec]
; var _cwl_159: Perm
(declare-const _cwl_159@93@01 $Perm)
; [exec]
; var _method_measures_159: Seq[Measure$]
(declare-const _method_measures_159@94@01 Seq<Measure$>)
; [exec]
; _method_measures_159 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_1) == C()
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 $Snap.unit))
; [eval] typeof(self_1) == C()
; [eval] typeof(self_1)
; [eval] C()
(assert (= (typeof<PyType> self_1@87@01) (as C<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_5 := self_1
; [eval] perm(_MaySet(self_5, 465491615553)) > none
; [eval] perm(_MaySet(self_5, 465491615553))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | True | live]
; [else-branch: 4 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | True]
; [exec]
; exhale acc(_MaySet(self_5, 465491615553), write)
; [exec]
; inhale acc(self_5.A_val, write)
(declare-const $t@96@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_5.A_val := __prim__int___box__(16)
; [eval] __prim__int___box__(16)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 16))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 16))
(declare-const A_val@97@01 $Ref)
(assert (= A_val@97@01 (__prim__int___box__ $Snap.unit 16)))
; [exec]
; label __end
; [eval] issubtype(typeof(self_1.A_val), int())
; [eval] typeof(self_1.A_val)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> A_val@97@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> A_val@97@01) (as int<PyType>  PyType)))
; [eval] int___gt__(int___unbox__(self_1.A_val), 12)
; [eval] int___unbox__(self_1.A_val)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit A_val@97@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit A_val@97@01))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@97@01) 12))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit A_val@97@01) 12))
(push) ; 4
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@97@01) 12)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit A_val@97@01) 12))
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !(perm(_MaySet(self_5, 465491615553)) > none)
; [eval] perm(_MaySet(self_5, 465491615553)) > none
; [eval] perm(_MaySet(self_5, 465491615553))
; [then-branch: 5 | False | dead]
; [else-branch: 5 | True | live]
(push) ; 3
; [else-branch: 5 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- C___init___override_check ----------
(declare-const _cthread_156@98@01 $Ref)
(declare-const _caller_measures_156@99@01 Seq<Measure$>)
(declare-const _residue_156@100@01 $Perm)
(declare-const self@101@01 $Ref)
(declare-const _current_wait_level_156@102@01 $Perm)
(declare-const _cthread_156@103@01 $Ref)
(declare-const _caller_measures_156@104@01 Seq<Measure$>)
(declare-const _residue_156@105@01 $Perm)
(declare-const self@106@01 $Ref)
(declare-const _current_wait_level_156@107@01 $Perm)
(push) ; 1
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 ($Snap.combine ($Snap.first $t@108@01) ($Snap.second $t@108@01))))
(assert (= ($Snap.first $t@108@01) $Snap.unit))
; [eval] _cthread_156 != null
(assert (not (= _cthread_156@103@01 $Ref.null)))
(assert (=
  ($Snap.second $t@108@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@108@01))
    ($Snap.second ($Snap.second $t@108@01)))))
(assert (= ($Snap.first ($Snap.second $t@108@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_156), Thread_0())
; [eval] typeof(_cthread_156)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_156@103@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@108@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@108@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@108@01))) $Snap.unit))
; [eval] self != null
(assert (not (= self@106@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@108@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@108@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@108@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self), A())
; [eval] typeof(self)
; [eval] A()
(assert (issubtype<Bool> (typeof<PyType> self@106@01) (as A<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))
  $Snap.unit))
; [eval] self != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@108@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 ($Snap.combine ($Snap.first $t@109@01) ($Snap.second $t@109@01))))
(assert (= ($Snap.first $t@109@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_156)
(assert (=
  ($Snap.second $t@109@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@109@01))
    ($Snap.second ($Snap.second $t@109@01)))))
(assert (= ($Snap.first ($Snap.second $t@109@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_156)
(assert (=
  ($Snap.second ($Snap.second $t@109@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@109@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@109@01))) $Snap.unit))
; [eval] _residue_156 <= _current_wait_level_156
(assert (<= _residue_156@105@01 _current_wait_level_156@107@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@109@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))) 13))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@109@01)))))) 13))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@109@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_156: Perm
(declare-const _cwl_156@110@01 $Perm)
; [exec]
; var _method_measures_156: Seq[Measure$]
(declare-const _method_measures_156@111@01 Seq<Measure$>)
; [exec]
; _method_measures_156 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(typeof(self), C())
(declare-const $t@112@01 $Snap)
(assert (= $t@112@01 $Snap.unit))
; [eval] issubtype(typeof(self), C())
; [eval] typeof(self)
; [eval] C()
(assert (issubtype<Bool> (typeof<PyType> self@106@01) (as C<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_156 := C___init__(_cthread_156, _method_measures_156, _residue_156, self)
; [eval] _cthread_159 != null
; [eval] issubtype(typeof(_cthread_159), Thread_0())
; [eval] typeof(_cthread_159)
; [eval] Thread_0()
; [eval] self_1 != null
; [eval] issubtype(typeof(self_1), C())
; [eval] typeof(self_1)
; [eval] C()
; [eval] self_1 != null
; [eval] perm(MustTerminate(_cthread_159)) == none
; [eval] perm(MustTerminate(_cthread_159))
; [eval] (forperm _r_13: Ref [MustInvokeBounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [MustInvokeUnbounded(_r_13)] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseBounded] :: false)
; [eval] (forperm _r_13: Ref [_r_13.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_159@113@01 $Perm)
(declare-const $t@114@01 $Snap)
(assert (= $t@114@01 ($Snap.combine ($Snap.first $t@114@01) ($Snap.second $t@114@01))))
(assert (= ($Snap.first $t@114@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second $t@114@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@114@01))
    ($Snap.second ($Snap.second $t@114@01)))))
(assert (= ($Snap.first ($Snap.second $t@114@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_159)
(assert (=
  ($Snap.second ($Snap.second $t@114@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@114@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@114@01))) $Snap.unit))
; [eval] _residue_159 <= _current_wait_level_159
(assert (<= _residue_156@105@01 _current_wait_level_159@113@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@114@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1.A_val), int())
; [eval] typeof(self_1.A_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_1.A_val), 12)
; [eval] int___unbox__(self_1.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 12))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 12))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 12))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@114@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] issubtype(typeof(self.A_val), int())
; [eval] typeof(self.A_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13)))
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
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13)))
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
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13)))
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
; [eval] int___gt__(int___unbox__(self.A_val), 13)
; [eval] int___unbox__(self.A_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@114@01)))))) 13)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- D___init__ ----------
(declare-const _cthread_160@115@01 $Ref)
(declare-const _caller_measures_160@116@01 Seq<Measure$>)
(declare-const _residue_160@117@01 $Perm)
(declare-const self_2@118@01 $Ref)
(declare-const _current_wait_level_160@119@01 $Perm)
(declare-const _cthread_160@120@01 $Ref)
(declare-const _caller_measures_160@121@01 Seq<Measure$>)
(declare-const _residue_160@122@01 $Perm)
(declare-const self_2@123@01 $Ref)
(declare-const _current_wait_level_160@124@01 $Perm)
(push) ; 1
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 ($Snap.combine ($Snap.first $t@125@01) ($Snap.second $t@125@01))))
(assert (= ($Snap.first $t@125@01) $Snap.unit))
; [eval] _cthread_160 != null
(assert (not (= _cthread_160@120@01 $Ref.null)))
(assert (=
  ($Snap.second $t@125@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@125@01))
    ($Snap.second ($Snap.second $t@125@01)))))
(assert (= ($Snap.first ($Snap.second $t@125@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_160@120@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@125@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@125@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@125@01))) $Snap.unit))
; [eval] self_2 != null
(assert (not (= self_2@123@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@125@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@125@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), D())
; [eval] typeof(self_2)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> self_2@123@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))
  $Snap.unit))
; [eval] self_2 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@125@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 ($Snap.combine ($Snap.first $t@126@01) ($Snap.second $t@126@01))))
(assert (= ($Snap.first $t@126@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@126@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@126@01))
    ($Snap.second ($Snap.second $t@126@01)))))
(assert (= ($Snap.first ($Snap.second $t@126@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@126@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@126@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@126@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_160@122@01 _current_wait_level_160@124@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@126@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.D_val), int())
; [eval] typeof(self_2.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_2.D_val), 9)
; [eval] int___unbox__(self_2.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))) 9))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))) 9))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@126@01)))))) 9))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@126@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@127@01 $Ref)
; [exec]
; var self_6: Ref
(declare-const self_6@128@01 $Ref)
; [exec]
; var _cwl_160: Perm
(declare-const _cwl_160@129@01 $Perm)
; [exec]
; var _method_measures_160: Seq[Measure$]
(declare-const _method_measures_160@130@01 Seq<Measure$>)
; [exec]
; _method_measures_160 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_2) == D()
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 $Snap.unit))
; [eval] typeof(self_2) == D()
; [eval] typeof(self_2)
; [eval] D()
(assert (= (typeof<PyType> self_2@123@01) (as D<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_6 := self_2
; [eval] perm(_MaySet(self_6, 465491615556)) > none
; [eval] perm(_MaySet(self_6, 465491615556))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True | live]
; [else-branch: 6 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | True]
; [exec]
; exhale acc(_MaySet(self_6, 465491615556), write)
; [exec]
; inhale acc(self_6.D_val, write)
(declare-const $t@132@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_6.D_val := __prim__int___box__(14)
; [eval] __prim__int___box__(14)
(set-option :timeout 0)
(push) ; 4
(assert (__prim__int___box__%precondition $Snap.unit 14))
(pop) ; 4
; Joined path conditions
(assert (__prim__int___box__%precondition $Snap.unit 14))
(declare-const D_val@133@01 $Ref)
(assert (= D_val@133@01 (__prim__int___box__ $Snap.unit 14)))
; [exec]
; label __end
; [eval] issubtype(typeof(self_2.D_val), int())
; [eval] typeof(self_2.D_val)
; [eval] int()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> D_val@133@01) (as int<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> D_val@133@01) (as int<PyType>  PyType)))
; [eval] int___gt__(int___unbox__(self_2.D_val), 9)
; [eval] int___unbox__(self_2.D_val)
(push) ; 4
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit D_val@133@01))
(pop) ; 4
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit D_val@133@01))
(push) ; 4
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit D_val@133@01) 9))
(pop) ; 4
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit D_val@133@01) 9))
(push) ; 4
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit D_val@133@01) 9)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit D_val@133@01) 9))
; [eval] (forperm _r_18: Ref [MustInvokeBounded(_r_18)] :: false)
; [eval] (forperm _r_18: Ref [MustInvokeUnbounded(_r_18)] :: false)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: false)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: false)
(pop) ; 3
; [eval] !(perm(_MaySet(self_6, 465491615556)) > none)
; [eval] perm(_MaySet(self_6, 465491615556)) > none
; [eval] perm(_MaySet(self_6, 465491615556))
; [then-branch: 7 | False | dead]
; [else-branch: 7 | True | live]
(push) ; 3
; [else-branch: 7 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- D_construct ----------
(declare-const _cthread_161@134@01 $Ref)
(declare-const _caller_measures_161@135@01 Seq<Measure$>)
(declare-const _residue_161@136@01 $Perm)
(declare-const cls_0@137@01 PyType)
(declare-const _current_wait_level_161@138@01 $Perm)
(declare-const _res@139@01 $Ref)
(declare-const _cthread_161@140@01 $Ref)
(declare-const _caller_measures_161@141@01 Seq<Measure$>)
(declare-const _residue_161@142@01 $Perm)
(declare-const cls_0@143@01 PyType)
(declare-const _current_wait_level_161@144@01 $Perm)
(declare-const _res@145@01 $Ref)
(push) ; 1
(declare-const $t@146@01 $Snap)
(assert (= $t@146@01 ($Snap.combine ($Snap.first $t@146@01) ($Snap.second $t@146@01))))
(assert (= ($Snap.first $t@146@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@140@01 $Ref.null)))
(assert (=
  ($Snap.second $t@146@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@146@01))
    ($Snap.second ($Snap.second $t@146@01)))))
(assert (= ($Snap.first ($Snap.second $t@146@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@140@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@146@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@146@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@146@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@146@01))) $Snap.unit))
; [eval] issubtype(cls_0, D())
; [eval] D()
(assert (issubtype<Bool> cls_0@143@01 (as D<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@146@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@147@01 $Snap)
(assert (= $t@147@01 ($Snap.combine ($Snap.first $t@147@01) ($Snap.second $t@147@01))))
(assert (= ($Snap.first $t@147@01) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseBounded] :: Level(_r_20) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@147@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@147@01))
    ($Snap.second ($Snap.second $t@147@01)))))
(assert (= ($Snap.first ($Snap.second $t@147@01)) $Snap.unit))
; [eval] (forperm _r_20: Ref [_r_20.MustReleaseUnbounded] :: Level(_r_20) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@147@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@147@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@147@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@142@01 _current_wait_level_161@144@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@147@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@147@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@147@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@145@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@145@01) cls_0@143@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))))
(assert (not (= _res@145@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))) 7))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01)))))))) 7))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@147@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@148@01 $Ref)
; [exec]
; var cls_4: PyType
(declare-const cls_4@149@01 PyType)
; [exec]
; var D_res: Ref
(declare-const D_res@150@01 $Ref)
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@151@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@152@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; cls_4 := cls_0
; [exec]
; D_res := new()
(declare-const D_res@153@01 $Ref)
(assert (not (= D_res@153@01 $Ref.null)))
(assert (not (= D_res@153@01 D_res@150@01)))
(assert (not (= D_res@153@01 _cthread_161@140@01)))
; [exec]
; inhale typeof(D_res) == cls_4
(declare-const $t@154@01 $Snap)
(assert (= $t@154@01 $Snap.unit))
; [eval] typeof(D_res) == cls_4
; [eval] typeof(D_res)
(assert (= (typeof<PyType> D_res@153@01) cls_0@143@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_MaySet(D_res, 465491615556), write)
(declare-const $t@155@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_161 := D___init__(_cthread_161, _method_measures_161, _residue_161, D_res)
; [eval] _cthread_160 != null
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
; [eval] self_2 != null
; [eval] issubtype(typeof(self_2), D())
; [eval] typeof(self_2)
; [eval] D()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> D_res@153@01) (as D<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> D_res@153@01) (as D<PyType>  PyType)))
; [eval] self_2 != null
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_160@156@01 $Perm)
(declare-const $t@157@01 $Snap)
(assert (= $t@157@01 ($Snap.combine ($Snap.first $t@157@01) ($Snap.second $t@157@01))))
(assert (= ($Snap.first $t@157@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@157@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@157@01))
    ($Snap.second ($Snap.second $t@157@01)))))
(assert (= ($Snap.first ($Snap.second $t@157@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@157@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@157@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@157@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@157@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_161@142@01 _current_wait_level_160@156@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@157@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.D_val), int())
; [eval] typeof(self_2.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_2.D_val), 9)
; [eval] int___unbox__(self_2.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 9))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 9))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 9))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@157@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _res := D_res
; [exec]
; label __end
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 7))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 7)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@157@01)))))) 7))
; [eval] (forperm _r_21: Ref [MustInvokeBounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [MustInvokeUnbounded(_r_21)] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseBounded] :: false)
; [eval] (forperm _r_21: Ref [_r_21.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- E_construct ----------
(declare-const _cthread_162@158@01 $Ref)
(declare-const _caller_measures_162@159@01 Seq<Measure$>)
(declare-const _residue_162@160@01 $Perm)
(declare-const cls_1@161@01 PyType)
(declare-const _current_wait_level_162@162@01 $Perm)
(declare-const _res@163@01 $Ref)
(declare-const _cthread_162@164@01 $Ref)
(declare-const _caller_measures_162@165@01 Seq<Measure$>)
(declare-const _residue_162@166@01 $Perm)
(declare-const cls_1@167@01 PyType)
(declare-const _current_wait_level_162@168@01 $Perm)
(declare-const _res@169@01 $Ref)
(push) ; 1
(declare-const $t@170@01 $Snap)
(assert (= $t@170@01 ($Snap.combine ($Snap.first $t@170@01) ($Snap.second $t@170@01))))
(assert (= ($Snap.first $t@170@01) $Snap.unit))
; [eval] _cthread_162 != null
(assert (not (= _cthread_162@164@01 $Ref.null)))
(assert (=
  ($Snap.second $t@170@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@170@01))
    ($Snap.second ($Snap.second $t@170@01)))))
(assert (= ($Snap.first ($Snap.second $t@170@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_162@164@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@170@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@170@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@170@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@170@01))) $Snap.unit))
; [eval] issubtype(cls_1, E())
; [eval] E()
(assert (issubtype<Bool> cls_1@167@01 (as E<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@170@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(assert (= ($Snap.first $t@171@01) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseBounded] :: Level(_r_23) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@171@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@171@01))
    ($Snap.second ($Snap.second $t@171@01)))))
(assert (= ($Snap.first ($Snap.second $t@171@01)) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseUnbounded] :: Level(_r_23) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@171@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@171@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@171@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_162@166@01 _current_wait_level_162@168@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@171@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@171@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@171@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@169@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_1
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@169@01) cls_1@167@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))))
(assert (not (= _res@169@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 8)
; [eval] int___unbox__(_res.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))) 8))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))) 8))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01)))))))) 8))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@171@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@172@01 $Ref)
; [exec]
; var cls_5: PyType
(declare-const cls_5@173@01 PyType)
; [exec]
; var E_res: Ref
(declare-const E_res@174@01 $Ref)
; [exec]
; var _cwl_162: Perm
(declare-const _cwl_162@175@01 $Perm)
; [exec]
; var _method_measures_162: Seq[Measure$]
(declare-const _method_measures_162@176@01 Seq<Measure$>)
; [exec]
; _method_measures_162 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; cls_5 := cls_1
; [exec]
; E_res := new()
(declare-const E_res@177@01 $Ref)
(assert (not (= E_res@177@01 $Ref.null)))
(assert (not (= E_res@177@01 E_res@174@01)))
(assert (not (= E_res@177@01 _cthread_162@164@01)))
; [exec]
; inhale typeof(E_res) == cls_5
(declare-const $t@178@01 $Snap)
(assert (= $t@178@01 $Snap.unit))
; [eval] typeof(E_res) == cls_5
; [eval] typeof(E_res)
(assert (= (typeof<PyType> E_res@177@01) cls_1@167@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_MaySet(E_res, 465491615556), write)
(declare-const $t@179@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_162 := D___init__(_cthread_162, _method_measures_162, _residue_162, E_res)
; [eval] _cthread_160 != null
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
; [eval] self_2 != null
; [eval] issubtype(typeof(self_2), D())
; [eval] typeof(self_2)
; [eval] D()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> E_res@177@01) (as D<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> E_res@177@01) (as D<PyType>  PyType)))
; [eval] self_2 != null
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_160@180@01 $Perm)
(declare-const $t@181@01 $Snap)
(assert (= $t@181@01 ($Snap.combine ($Snap.first $t@181@01) ($Snap.second $t@181@01))))
(assert (= ($Snap.first $t@181@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@181@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@181@01))
    ($Snap.second ($Snap.second $t@181@01)))))
(assert (= ($Snap.first ($Snap.second $t@181@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@181@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@181@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@181@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@181@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_162@166@01 _current_wait_level_160@180@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@181@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.D_val), int())
; [eval] typeof(self_2.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_2.D_val), 9)
; [eval] int___unbox__(self_2.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 9))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 9))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 9))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@181@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _res := E_res
; [exec]
; label __end
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
; [eval] typeof(_res) == cls_1
; [eval] typeof(_res)
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(_res.D_val), 8)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 8))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 8))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 8)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@181@01)))))) 8))
; [eval] (forperm _r_24: Ref [MustInvokeBounded(_r_24)] :: false)
; [eval] (forperm _r_24: Ref [MustInvokeUnbounded(_r_24)] :: false)
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseBounded] :: false)
; [eval] (forperm _r_24: Ref [_r_24.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- E_construct_override_check ----------
(declare-const _cthread_161@182@01 $Ref)
(declare-const _caller_measures_161@183@01 Seq<Measure$>)
(declare-const _residue_161@184@01 $Perm)
(declare-const cls_0@185@01 PyType)
(declare-const _current_wait_level_161@186@01 $Perm)
(declare-const _res@187@01 $Ref)
(declare-const _cthread_161@188@01 $Ref)
(declare-const _caller_measures_161@189@01 Seq<Measure$>)
(declare-const _residue_161@190@01 $Perm)
(declare-const cls_0@191@01 PyType)
(declare-const _current_wait_level_161@192@01 $Perm)
(declare-const _res@193@01 $Ref)
(push) ; 1
(declare-const $t@194@01 $Snap)
(assert (= $t@194@01 ($Snap.combine ($Snap.first $t@194@01) ($Snap.second $t@194@01))))
(assert (= ($Snap.first $t@194@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@188@01 $Ref.null)))
(assert (=
  ($Snap.second $t@194@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@194@01))
    ($Snap.second ($Snap.second $t@194@01)))))
(assert (= ($Snap.first ($Snap.second $t@194@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@188@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@194@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@194@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@194@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@194@01))) $Snap.unit))
; [eval] issubtype(cls_0, D())
; [eval] D()
(assert (issubtype<Bool> cls_0@191@01 (as D<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@194@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@195@01 $Snap)
(assert (= $t@195@01 ($Snap.combine ($Snap.first $t@195@01) ($Snap.second $t@195@01))))
(assert (= ($Snap.first $t@195@01) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseBounded] :: Level(_r_26) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@195@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@195@01))
    ($Snap.second ($Snap.second $t@195@01)))))
(assert (= ($Snap.first ($Snap.second $t@195@01)) $Snap.unit))
; [eval] (forperm _r_26: Ref [_r_26.MustReleaseUnbounded] :: Level(_r_26) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@195@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@195@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@195@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@190@01 _current_wait_level_161@192@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@195@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@193@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@193@01) cls_0@191@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
(assert (not (= _res@193@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))) 7))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01)))))))) 7))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@195@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@196@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@197@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(cls_0, E())
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 $Snap.unit))
; [eval] issubtype(cls_0, E())
; [eval] E()
(assert (issubtype<Bool> cls_0@191@01 (as E<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_161, _res := E_construct(_cthread_161, _method_measures_161, _residue_161,
;   cls_0)
; [eval] _cthread_162 != null
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
; [eval] issubtype(cls_1, E())
; [eval] E()
; [eval] perm(MustTerminate(_cthread_162)) == none
; [eval] perm(MustTerminate(_cthread_162))
; [eval] (forperm _r_25: Ref [MustInvokeBounded(_r_25)] :: false)
; [eval] (forperm _r_25: Ref [MustInvokeUnbounded(_r_25)] :: false)
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseBounded] :: false)
; [eval] (forperm _r_25: Ref [_r_25.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_162@199@01 $Perm)
(declare-const _res@200@01 $Ref)
(declare-const $t@201@01 $Snap)
(assert (= $t@201@01 ($Snap.combine ($Snap.first $t@201@01) ($Snap.second $t@201@01))))
(assert (= ($Snap.first $t@201@01) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseBounded] :: Level(_r_23) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@201@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@201@01))
    ($Snap.second ($Snap.second $t@201@01)))))
(assert (= ($Snap.first ($Snap.second $t@201@01)) $Snap.unit))
; [eval] (forperm _r_23: Ref [_r_23.MustReleaseUnbounded] :: Level(_r_23) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@201@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@201@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@201@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_161@190@01 _current_wait_level_162@199@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@201@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@200@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_1
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@200@01) cls_0@191@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))))
(assert (not (= _res@200@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 8)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 8))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 8))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 8))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 7))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 7)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@201@01)))))))) 7))
; [eval] (forperm _r_27: Ref [MustInvokeBounded(_r_27)] :: false)
; [eval] (forperm _r_27: Ref [MustInvokeUnbounded(_r_27)] :: false)
; [eval] (forperm _r_27: Ref [_r_27.MustReleaseBounded] :: false)
; [eval] (forperm _r_27: Ref [_r_27.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- F_construct ----------
(declare-const _cthread_163@202@01 $Ref)
(declare-const _caller_measures_163@203@01 Seq<Measure$>)
(declare-const _residue_163@204@01 $Perm)
(declare-const cls_2@205@01 PyType)
(declare-const _current_wait_level_163@206@01 $Perm)
(declare-const _res@207@01 $Ref)
(declare-const _cthread_163@208@01 $Ref)
(declare-const _caller_measures_163@209@01 Seq<Measure$>)
(declare-const _residue_163@210@01 $Perm)
(declare-const cls_2@211@01 PyType)
(declare-const _current_wait_level_163@212@01 $Perm)
(declare-const _res@213@01 $Ref)
(push) ; 1
(declare-const $t@214@01 $Snap)
(assert (= $t@214@01 ($Snap.combine ($Snap.first $t@214@01) ($Snap.second $t@214@01))))
(assert (= ($Snap.first $t@214@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@208@01 $Ref.null)))
(assert (=
  ($Snap.second $t@214@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@214@01))
    ($Snap.second ($Snap.second $t@214@01)))))
(assert (= ($Snap.first ($Snap.second $t@214@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@208@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@214@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@214@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@214@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@214@01))) $Snap.unit))
; [eval] issubtype(cls_2, F())
; [eval] F()
(assert (issubtype<Bool> cls_2@211@01 (as F<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@214@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@215@01 $Snap)
(assert (= $t@215@01 ($Snap.combine ($Snap.first $t@215@01) ($Snap.second $t@215@01))))
(assert (= ($Snap.first $t@215@01) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseBounded] :: Level(_r_29) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@215@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@215@01))
    ($Snap.second ($Snap.second $t@215@01)))))
(assert (= ($Snap.first ($Snap.second $t@215@01)) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: Level(_r_29) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@215@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@215@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@215@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_163@210@01 _current_wait_level_163@212@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@215@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@213@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_2
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@213@01) cls_2@211@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
(assert (not (= _res@213@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 6)
; [eval] int___unbox__(_res.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))) 6))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))) 6))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01)))))))) 6))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@215@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@216@01 $Ref)
; [exec]
; var cls_6: PyType
(declare-const cls_6@217@01 PyType)
; [exec]
; var F_res: Ref
(declare-const F_res@218@01 $Ref)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@219@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@220@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; _res := null
; [exec]
; _err := null
; [exec]
; cls_6 := cls_2
; [exec]
; F_res := new()
(declare-const F_res@221@01 $Ref)
(assert (not (= F_res@221@01 $Ref.null)))
(assert (not (= F_res@221@01 F_res@218@01)))
(assert (not (= F_res@221@01 _cthread_163@208@01)))
; [exec]
; inhale typeof(F_res) == cls_6
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; [eval] typeof(F_res) == cls_6
; [eval] typeof(F_res)
(assert (= (typeof<PyType> F_res@221@01) cls_2@211@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(_MaySet(F_res, 465491615556), write)
(declare-const $t@223@01 $Snap)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; _cwl_163 := D___init__(_cthread_163, _method_measures_163, _residue_163, F_res)
; [eval] _cthread_160 != null
; [eval] issubtype(typeof(_cthread_160), Thread_0())
; [eval] typeof(_cthread_160)
; [eval] Thread_0()
; [eval] self_2 != null
; [eval] issubtype(typeof(self_2), D())
; [eval] typeof(self_2)
; [eval] D()
(set-option :timeout 0)
(push) ; 3
(assert (not (issubtype<Bool> (typeof<PyType> F_res@221@01) (as D<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> F_res@221@01) (as D<PyType>  PyType)))
; [eval] self_2 != null
; [eval] perm(MustTerminate(_cthread_160)) == none
; [eval] perm(MustTerminate(_cthread_160))
; [eval] (forperm _r_19: Ref [MustInvokeBounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [MustInvokeUnbounded(_r_19)] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseBounded] :: false)
; [eval] (forperm _r_19: Ref [_r_19.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_160@224@01 $Perm)
(declare-const $t@225@01 $Snap)
(assert (= $t@225@01 ($Snap.combine ($Snap.first $t@225@01) ($Snap.second $t@225@01))))
(assert (= ($Snap.first $t@225@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second $t@225@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@225@01))
    ($Snap.second ($Snap.second $t@225@01)))))
(assert (= ($Snap.first ($Snap.second $t@225@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_160)
(assert (=
  ($Snap.second ($Snap.second $t@225@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@225@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@225@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@225@01))) $Snap.unit))
; [eval] _residue_160 <= _current_wait_level_160
(assert (<= _residue_163@210@01 _current_wait_level_160@224@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@225@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.D_val), int())
; [eval] typeof(self_2.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(self_2.D_val), 9)
; [eval] int___unbox__(self_2.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 9))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 9))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 9))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@225@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; _res := F_res
; [exec]
; label __end
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
; [eval] typeof(_res) == cls_2
; [eval] typeof(_res)
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(_res.D_val), 6)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 6))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 6))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 6)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@225@01)))))) 6))
; [eval] (forperm _r_30: Ref [MustInvokeBounded(_r_30)] :: false)
; [eval] (forperm _r_30: Ref [MustInvokeUnbounded(_r_30)] :: false)
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseBounded] :: false)
; [eval] (forperm _r_30: Ref [_r_30.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- F_construct_override_check ----------
(declare-const _cthread_161@226@01 $Ref)
(declare-const _caller_measures_161@227@01 Seq<Measure$>)
(declare-const _residue_161@228@01 $Perm)
(declare-const cls_0@229@01 PyType)
(declare-const _current_wait_level_161@230@01 $Perm)
(declare-const _res@231@01 $Ref)
(declare-const _cthread_161@232@01 $Ref)
(declare-const _caller_measures_161@233@01 Seq<Measure$>)
(declare-const _residue_161@234@01 $Perm)
(declare-const cls_0@235@01 PyType)
(declare-const _current_wait_level_161@236@01 $Perm)
(declare-const _res@237@01 $Ref)
(push) ; 1
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 ($Snap.combine ($Snap.first $t@238@01) ($Snap.second $t@238@01))))
(assert (= ($Snap.first $t@238@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@232@01 $Ref.null)))
(assert (=
  ($Snap.second $t@238@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@238@01))
    ($Snap.second ($Snap.second $t@238@01)))))
(assert (= ($Snap.first ($Snap.second $t@238@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@232@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@238@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@238@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@238@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@238@01))) $Snap.unit))
; [eval] issubtype(cls_0, D())
; [eval] D()
(assert (issubtype<Bool> cls_0@235@01 (as D<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@238@01))) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 ($Snap.combine ($Snap.first $t@239@01) ($Snap.second $t@239@01))))
(assert (= ($Snap.first $t@239@01) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseBounded] :: Level(_r_32) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@239@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@239@01))
    ($Snap.second ($Snap.second $t@239@01)))))
(assert (= ($Snap.first ($Snap.second $t@239@01)) $Snap.unit))
; [eval] (forperm _r_32: Ref [_r_32.MustReleaseUnbounded] :: Level(_r_32) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@239@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@239@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@239@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@234@01 _current_wait_level_161@236@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@239@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@237@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@237@01) cls_0@235@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))))
(assert (not (= _res@237@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))) 7))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01)))))))) 7))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@239@01))))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@240@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@241@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(cls_0, F())
(declare-const $t@242@01 $Snap)
(assert (= $t@242@01 $Snap.unit))
; [eval] issubtype(cls_0, F())
; [eval] F()
(assert (issubtype<Bool> cls_0@235@01 (as F<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_161, _res := F_construct(_cthread_161, _method_measures_161, _residue_161,
;   cls_0)
; [eval] _cthread_163 != null
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
; [eval] issubtype(cls_2, F())
; [eval] F()
; [eval] perm(MustTerminate(_cthread_163)) == none
; [eval] perm(MustTerminate(_cthread_163))
; [eval] (forperm _r_31: Ref [MustInvokeBounded(_r_31)] :: false)
; [eval] (forperm _r_31: Ref [MustInvokeUnbounded(_r_31)] :: false)
; [eval] (forperm _r_31: Ref [_r_31.MustReleaseBounded] :: false)
; [eval] (forperm _r_31: Ref [_r_31.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_163@243@01 $Perm)
(declare-const _res@244@01 $Ref)
(declare-const $t@245@01 $Snap)
(assert (= $t@245@01 ($Snap.combine ($Snap.first $t@245@01) ($Snap.second $t@245@01))))
(assert (= ($Snap.first $t@245@01) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseBounded] :: Level(_r_29) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@245@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@245@01))
    ($Snap.second ($Snap.second $t@245@01)))))
(assert (= ($Snap.first ($Snap.second $t@245@01)) $Snap.unit))
; [eval] (forperm _r_29: Ref [_r_29.MustReleaseUnbounded] :: Level(_r_29) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@245@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@245@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@245@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_161@234@01 _current_wait_level_163@243@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@245@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
  $Snap.unit))
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
(assert (issubtype<Bool> (typeof<PyType> _res@244@01) (as D<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))
  $Snap.unit))
; [eval] typeof(_res) == cls_2
; [eval] typeof(_res)
(assert (= (typeof<PyType> _res@244@01) cls_0@235@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))))
(assert (not (= _res@244@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) (as int<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))
  $Snap.unit))
; [eval] int___gt__(int___unbox__(_res.D_val), 6)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))))
(pop) ; 3
; Joined path conditions
(assert (int___unbox__%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))))
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 6))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 6))
(assert (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 6))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] issubtype(typeof(_res), D())
; [eval] typeof(_res)
; [eval] D()
; [eval] typeof(_res) == cls_0
; [eval] typeof(_res)
; [eval] issubtype(typeof(_res.D_val), int())
; [eval] typeof(_res.D_val)
; [eval] int()
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7))
(pop) ; 3
; Joined path conditions
(assert (int___gt__%precondition $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7))
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7)))
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
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7)))
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
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7)))
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
; [eval] int___gt__(int___unbox__(_res.D_val), 7)
; [eval] int___unbox__(_res.D_val)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(box), int())
; [eval] typeof(box)
; [eval] int()
(pop) ; 3
; Joined path conditions
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (int___gt__ $Snap.unit (int___unbox__ $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@245@01)))))))) 7)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_164@246@01 $Ref)
(declare-const _caller_measures_164@247@01 Seq<Measure$>)
(declare-const _residue_164@248@01 $Perm)
(declare-const _current_wait_level_164@249@01 $Perm)
(declare-const _cthread_164@250@01 $Ref)
(declare-const _caller_measures_164@251@01 Seq<Measure$>)
(declare-const _residue_164@252@01 $Perm)
(declare-const _current_wait_level_164@253@01 $Perm)
(push) ; 1
(declare-const $t@254@01 $Snap)
(assert (= $t@254@01 ($Snap.combine ($Snap.first $t@254@01) ($Snap.second $t@254@01))))
(assert (= ($Snap.first $t@254@01) $Snap.unit))
; [eval] _cthread_164 != null
(assert (not (= _cthread_164@250@01 $Ref.null)))
(assert (=
  ($Snap.second $t@254@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@254@01))
    ($Snap.second ($Snap.second $t@254@01)))))
(assert (= ($Snap.first ($Snap.second $t@254@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_164), Thread_0())
; [eval] typeof(_cthread_164)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_164@250@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@254@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@255@01 $Snap)
(assert (= $t@255@01 ($Snap.combine ($Snap.first $t@255@01) ($Snap.second $t@255@01))))
(assert (= ($Snap.first $t@255@01) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseBounded] :: Level(_r_35) <= _current_wait_level_164)
(assert (=
  ($Snap.second $t@255@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@255@01))
    ($Snap.second ($Snap.second $t@255@01)))))
(assert (= ($Snap.first ($Snap.second $t@255@01)) $Snap.unit))
; [eval] (forperm _r_35: Ref [_r_35.MustReleaseUnbounded] :: Level(_r_35) <= _current_wait_level_164)
(assert (=
  ($Snap.second ($Snap.second $t@255@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@255@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@255@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@255@01))) $Snap.unit))
; [eval] _residue_164 <= _current_wait_level_164
(assert (<= _residue_164@252@01 _current_wait_level_164@253@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@255@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@256@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@257@01 Set<_Name>)
; [exec]
; var _cwl_164: Perm
(declare-const _cwl_164@258@01 $Perm)
; [exec]
; var _method_measures_164: Seq[Measure$]
(declare-const _method_measures_164@259@01 Seq<Measure$>)
; [exec]
; _method_measures_164 := Seq[Measure$]()
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
(declare-const module_names_0@260@01 Set<_Name>)
(assert (=
  module_names_0@260@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@261@01 $Snap)
(assert (= $t@261@01 ($Snap.combine ($Snap.first $t@261@01) ($Snap.second $t@261@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@261@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@261@01))
    ($Snap.second ($Snap.second $t@261@01)))))
(assert (= ($Snap.first ($Snap.second $t@261@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@261@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@261@01)) $Snap.unit))
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
(declare-const module_names_0@262@01 Set<_Name>)
(assert (=
  module_names_0@262@01
  (Set_union module_names_0@260@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@263@01 $Snap)
(assert (= $t@263@01 ($Snap.combine ($Snap.first $t@263@01) ($Snap.second $t@263@01))))
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
  ($Snap.second $t@263@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@263@01))
    ($Snap.second ($Snap.second $t@263@01)))))
(assert (= ($Snap.first ($Snap.second $t@263@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@263@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@263@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@263@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@263@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@263@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@263@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@263@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@263@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@263@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@264@01 Set<_Name>)
(assert (=
  module_names_0@264@01
  (Set_union module_names_0@262@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2146989072776816389987)))
; [eval] (module_names_0 union Set(_single(2146989072776816389987)))
; [eval] Set(_single(2146989072776816389987))
; [eval] _single(2146989072776816389987)
(declare-const module_names_0@265@01 Set<_Name>)
(assert (=
  module_names_0@265@01
  (Set_union module_names_0@264@01 (Set_singleton (_single<_Name> 2146989072776816389987)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(65)))
; [eval] (module_names_0 union Set(_single(65)))
; [eval] Set(_single(65))
; [eval] _single(65)
(declare-const module_names_0@266@01 Set<_Name>)
(assert (=
  module_names_0@266@01
  (Set_union module_names_0@265@01 (Set_singleton (_single<_Name> 65)))))
; [exec]
; assert true && (_single(65) in module_names_0)
; [eval] (_single(65) in module_names_0)
; [eval] _single(65)
(set-option :timeout 0)
(push) ; 3
(assert (not (Set_in (_single<_Name> 65) module_names_0@266@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 65) module_names_0@266@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@267@01 Set<_Name>)
(assert (=
  module_names_0@267@01
  (Set_union module_names_0@266@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(66)))
; [eval] (module_names_0 union Set(_single(66)))
; [eval] Set(_single(66))
; [eval] _single(66)
(declare-const module_names_0@268@01 Set<_Name>)
(assert (=
  module_names_0@268@01
  (Set_union module_names_0@267@01 (Set_singleton (_single<_Name> 66)))))
; [exec]
; assert true && (_single(65) in module_names_0)
; [eval] (_single(65) in module_names_0)
; [eval] _single(65)
(push) ; 3
(assert (not (Set_in (_single<_Name> 65) module_names_0@268@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 65) module_names_0@268@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@269@01 Set<_Name>)
(assert (=
  module_names_0@269@01
  (Set_union module_names_0@268@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(67)))
; [eval] (module_names_0 union Set(_single(67)))
; [eval] Set(_single(67))
; [eval] _single(67)
(declare-const module_names_0@270@01 Set<_Name>)
(assert (=
  module_names_0@270@01
  (Set_union module_names_0@269@01 (Set_singleton (_single<_Name> 67)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@271@01 Set<_Name>)
(assert (=
  module_names_0@271@01
  (Set_union module_names_0@270@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2146989072776816389987)))
; [eval] (module_names_0 union Set(_single(2146989072776816389987)))
; [eval] Set(_single(2146989072776816389987))
; [eval] _single(2146989072776816389987)
(declare-const module_names_0@272@01 Set<_Name>)
(assert (=
  module_names_0@272@01
  (Set_union module_names_0@271@01 (Set_singleton (_single<_Name> 2146989072776816389987)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(68)))
; [eval] (module_names_0 union Set(_single(68)))
; [eval] Set(_single(68))
; [eval] _single(68)
(declare-const module_names_0@273@01 Set<_Name>)
(assert (=
  module_names_0@273@01
  (Set_union module_names_0@272@01 (Set_singleton (_single<_Name> 68)))))
; [exec]
; assert true && (_single(68) in module_names_0)
; [eval] (_single(68) in module_names_0)
; [eval] _single(68)
(push) ; 3
(assert (not (Set_in (_single<_Name> 68) module_names_0@273@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 68) module_names_0@273@01))
; [exec]
; assert true && (_single(68) in module_names_0)
; [eval] (_single(68) in module_names_0)
; [eval] _single(68)
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2146989072776816389987)))
; [eval] (module_names_0 union Set(_single(2146989072776816389987)))
; [eval] Set(_single(2146989072776816389987))
; [eval] _single(2146989072776816389987)
(declare-const module_names_0@274@01 Set<_Name>)
(assert (=
  module_names_0@274@01
  (Set_union module_names_0@273@01 (Set_singleton (_single<_Name> 2146989072776816389987)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(69)))
; [eval] (module_names_0 union Set(_single(69)))
; [eval] Set(_single(69))
; [eval] _single(69)
(declare-const module_names_0@275@01 Set<_Name>)
(assert (=
  module_names_0@275@01
  (Set_union module_names_0@274@01 (Set_singleton (_single<_Name> 69)))))
; [exec]
; assert true && (_single(68) in module_names_0)
; [eval] (_single(68) in module_names_0)
; [eval] _single(68)
(push) ; 3
(assert (not (Set_in (_single<_Name> 68) module_names_0@275@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 68) module_names_0@275@01))
; [exec]
; assert true && (_single(68) in module_names_0)
; [eval] (_single(68) in module_names_0)
; [eval] _single(68)
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(2146989072776816389987)))
; [eval] (module_names_0 union Set(_single(2146989072776816389987)))
; [eval] Set(_single(2146989072776816389987))
; [eval] _single(2146989072776816389987)
(declare-const module_names_0@276@01 Set<_Name>)
(assert (=
  module_names_0@276@01
  (Set_union module_names_0@275@01 (Set_singleton (_single<_Name> 2146989072776816389987)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(70)))
; [eval] (module_names_0 union Set(_single(70)))
; [eval] Set(_single(70))
; [eval] _single(70)
(declare-const module_names_0@277@01 Set<_Name>)
(assert (=
  module_names_0@277@01
  (Set_union module_names_0@276@01 (Set_singleton (_single<_Name> 70)))))
; [exec]
; label __end
; [eval] (forperm _r_36: Ref [MustInvokeBounded(_r_36)] :: false)
; [eval] (forperm _r_36: Ref [MustInvokeUnbounded(_r_36)] :: false)
; [eval] (forperm _r_36: Ref [_r_36.MustReleaseBounded] :: false)
; [eval] (forperm _r_36: Ref [_r_36.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
