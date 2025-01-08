(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:12:54
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
(declare-const Cell<PyType> PyType)
(declare-const ReCell<PyType> PyType)
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
(declare-fun ReCell_get_last ($Snap $Ref) $Ref)
(declare-fun ReCell_get_last%limited ($Snap $Ref) $Ref)
(declare-fun ReCell_get_last%stateless ($Ref) Bool)
(declare-fun ReCell_get_last%precondition ($Snap $Ref) Bool)
(declare-fun str___create__ ($Snap Int Int) $Ref)
(declare-fun str___create__%limited ($Snap Int Int) $Ref)
(declare-fun str___create__%stateless (Int Int) Bool)
(declare-fun str___create__%precondition ($Snap Int Int) Bool)
(declare-fun __file__ ($Snap) $Ref)
(declare-fun __file__%limited ($Snap) $Ref)
(declare-const __file__%stateless Bool)
(declare-fun __file__%precondition ($Snap) Bool)
(declare-fun str___eq__ ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%limited ($Snap $Ref $Ref) Bool)
(declare-fun str___eq__%stateless ($Ref $Ref) Bool)
(declare-fun str___eq__%precondition ($Snap $Ref $Ref) Bool)
(declare-fun __name__ ($Snap) $Ref)
(declare-fun __name__%limited ($Snap) $Ref)
(declare-const __name__%stateless Bool)
(declare-fun __name__%precondition ($Snap) Bool)
(declare-fun Cell_get_contents ($Snap $Ref) $Ref)
(declare-fun Cell_get_contents%limited ($Snap $Ref) $Ref)
(declare-fun Cell_get_contents%stateless ($Ref) Bool)
(declare-fun Cell_get_contents%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun MustTerminate%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeBounded%trigger ($Snap $Ref) Bool)
(declare-fun MustInvokeUnbounded%trigger ($Snap $Ref) Bool)
(declare-fun _MaySet%trigger ($Snap $Ref Int) Bool)
(declare-fun Cell_val%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert (distinct bool<PyType> float<PyType> bytes<PyType> Cell<PyType> slice<PyType> list_basic<PyType> set_basic<PyType> ConnectionRefusedError<PyType> PMultiset_basic<PyType> PSet_basic<PyType> Iterator_basic<PyType> ReCell<PyType> PSeq_basic<PyType> object<PyType> traceback<PyType> dict_basic<PyType> type<PyType> py_range<PyType> int<PyType> Exception<PyType> __prim__Seq_type<PyType> tuple_basic<PyType> str<PyType> Thread_0<PyType> Place<PyType> LevelType<PyType> NoneType<PyType>))
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
  (extends_<Bool> (as Cell<PyType>  PyType) (as object<PyType>  PyType))
  (= (get_basic<PyType> (as Cell<PyType>  PyType)) (as Cell<PyType>  PyType))))
(assert (and
  (extends_<Bool> (as ReCell<PyType>  PyType) (as Cell<PyType>  PyType))
  (= (get_basic<PyType> (as ReCell<PyType>  PyType)) (as ReCell<PyType>  PyType))))
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
(declare-fun joined_unfolding@23@00 ($Snap $Ref) $Ref)
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (= (str___val__%limited s@$ self@0@00) (str___val__ s@$ self@0@00))
  :pattern ((str___val__ s@$ self@0@00))
  :qid |quant-u-3121|)))
(assert (forall ((s@$ $Snap) (self@0@00 $Ref)) (!
  (str___val__%stateless self@0@00)
  :pattern ((str___val__%limited s@$ self@0@00))
  :qid |quant-u-3122|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (str___len__%limited s@$ self@2@00) (str___len__ s@$ self@2@00))
  :pattern ((str___len__ s@$ self@2@00))
  :qid |quant-u-3123|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (str___len__%stateless self@2@00)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3124|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) (=>
    (str___len__%precondition s@$ self@2@00)
    (>= result@3@00 0)))
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3139|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (let ((result@3@00 (str___len__%limited s@$ self@2@00))) true)
  :pattern ((str___len__%limited s@$ self@2@00))
  :qid |quant-u-3140|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (= (Level%limited s@$ r@4@00) (Level s@$ r@4@00))
  :pattern ((Level s@$ r@4@00))
  :qid |quant-u-3125|)))
(assert (forall ((s@$ $Snap) (r@4@00 $Ref)) (!
  (Level%stateless r@4@00)
  :pattern ((Level%limited s@$ r@4@00))
  :qid |quant-u-3126|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  (= (ReCell_get_last%limited s@$ self_3@6@00) (ReCell_get_last s@$ self_3@6@00))
  :pattern ((ReCell_get_last s@$ self_3@6@00))
  :qid |quant-u-3127|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  (ReCell_get_last%stateless self_3@6@00)
  :pattern ((ReCell_get_last%limited s@$ self_3@6@00))
  :qid |quant-u-3128|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  (let ((result@7@00 (ReCell_get_last%limited s@$ self_3@6@00))) (=>
    (ReCell_get_last%precondition s@$ self_3@6@00)
    (issubtype<Bool> (typeof<PyType> result@7@00) (as object<PyType>  PyType))))
  :pattern ((ReCell_get_last%limited s@$ self_3@6@00))
  :qid |quant-u-3141|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  (let ((result@7@00 (ReCell_get_last%limited s@$ self_3@6@00))) true)
  :pattern ((ReCell_get_last%limited s@$ self_3@6@00))
  :qid |quant-u-3142|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  (=>
    (ReCell_get_last%precondition s@$ self_3@6@00)
    (=
      (ReCell_get_last s@$ self_3@6@00)
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((ReCell_get_last s@$ self_3@6@00))
  :qid |quant-u-3143|)))
(assert (forall ((s@$ $Snap) (self_3@6@00 $Ref)) (!
  true
  :pattern ((ReCell_get_last s@$ self_3@6@00))
  :qid |quant-u-3144|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (=
    (str___create__%limited s@$ len@8@00 value@9@00)
    (str___create__ s@$ len@8@00 value@9@00))
  :pattern ((str___create__ s@$ len@8@00 value@9@00))
  :qid |quant-u-3129|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (str___create__%stateless len@8@00 value@9@00)
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3130|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (and
      (= (str___len__ $Snap.unit result@10@00) len@8@00)
      (= (str___val__ $Snap.unit result@10@00) value@9@00)
      (= (typeof<PyType> result@10@00) (as str<PyType>  PyType)))))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3145|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (str___len__%precondition $Snap.unit result@10@00)))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3146|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) (=>
    (str___create__%precondition s@$ len@8@00 value@9@00)
    (str___val__%precondition $Snap.unit result@10@00)))
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3147|)))
(assert (forall ((s@$ $Snap) (len@8@00 Int) (value@9@00 Int)) (!
  (let ((result@10@00 (str___create__%limited s@$ len@8@00 value@9@00))) true)
  :pattern ((str___create__%limited s@$ len@8@00 value@9@00))
  :qid |quant-u-3148|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__file__%limited s@$) (__file__ s@$))
  :pattern ((__file__ s@$))
  :qid |quant-u-3131|)))
(assert (forall ((s@$ $Snap)) (!
  (as __file__%stateless  Bool)
  :pattern ((__file__%limited s@$))
  :qid |quant-u-3132|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref) (other@13@00 $Ref)) (!
  (=
    (str___eq__%limited s@$ self@12@00 other@13@00)
    (str___eq__ s@$ self@12@00 other@13@00))
  :pattern ((str___eq__ s@$ self@12@00 other@13@00))
  :qid |quant-u-3133|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref) (other@13@00 $Ref)) (!
  (str___eq__%stateless self@12@00 other@13@00)
  :pattern ((str___eq__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-3134|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref) (other@13@00 $Ref)) (!
  (let ((result@14@00 (str___eq__%limited s@$ self@12@00 other@13@00))) (=>
    (str___eq__%precondition s@$ self@12@00 other@13@00)
    (and
      (=
        (=
          (str___val__ $Snap.unit self@12@00)
          (str___val__ $Snap.unit other@13@00))
        result@14@00)
      (=>
        result@14@00
        (=
          (str___len__ $Snap.unit self@12@00)
          (str___len__ $Snap.unit other@13@00))))))
  :pattern ((str___eq__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-3149|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref) (other@13@00 $Ref)) (!
  (let ((result@14@00 (str___eq__%limited s@$ self@12@00 other@13@00))) (=>
    (str___eq__%precondition s@$ self@12@00 other@13@00)
    (and
      (str___val__%precondition $Snap.unit self@12@00)
      (str___val__%precondition $Snap.unit other@13@00))))
  :pattern ((str___eq__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-3150|)))
(assert (forall ((s@$ $Snap) (self@12@00 $Ref) (other@13@00 $Ref)) (!
  (let ((result@14@00 (str___eq__%limited s@$ self@12@00 other@13@00))) (=>
    (and (str___eq__%precondition s@$ self@12@00 other@13@00) result@14@00)
    (and
      (str___len__%precondition $Snap.unit self@12@00)
      (str___len__%precondition $Snap.unit other@13@00))))
  :pattern ((str___eq__%limited s@$ self@12@00 other@13@00))
  :qid |quant-u-3151|)))
(assert (forall ((s@$ $Snap)) (!
  (= (__name__%limited s@$) (__name__ s@$))
  :pattern ((__name__ s@$))
  :qid |quant-u-3135|)))
(assert (forall ((s@$ $Snap)) (!
  (as __name__%stateless  Bool)
  :pattern ((__name__%limited s@$))
  :qid |quant-u-3136|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (=
    (Cell_get_contents%limited s@$ self@16@00)
    (Cell_get_contents s@$ self@16@00))
  :pattern ((Cell_get_contents s@$ self@16@00))
  :qid |quant-u-3137|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (Cell_get_contents%stateless self@16@00)
  :pattern ((Cell_get_contents%limited s@$ self@16@00))
  :qid |quant-u-3138|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (let ((result@17@00 (Cell_get_contents%limited s@$ self@16@00))) (=>
    (Cell_get_contents%precondition s@$ self@16@00)
    (issubtype<Bool> (typeof<PyType> result@17@00) (as object<PyType>  PyType))))
  :pattern ((Cell_get_contents%limited s@$ self@16@00))
  :qid |quant-u-3152|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (let ((result@17@00 (Cell_get_contents%limited s@$ self@16@00))) true)
  :pattern ((Cell_get_contents%limited s@$ self@16@00))
  :qid |quant-u-3153|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  (=>
    (Cell_get_contents%precondition s@$ self@16@00)
    (=
      (Cell_get_contents s@$ self@16@00)
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))
  :pattern ((Cell_get_contents s@$ self@16@00))
  :qid |quant-u-3154|)))
(assert (forall ((s@$ $Snap) (self@16@00 $Ref)) (!
  true
  :pattern ((Cell_get_contents s@$ self@16@00))
  :qid |quant-u-3155|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Cell___init__ ----------
(declare-const _cthread_157@0@01 $Ref)
(declare-const _caller_measures_157@1@01 Seq<Measure$>)
(declare-const _residue_157@2@01 $Perm)
(declare-const self_0@3@01 $Ref)
(declare-const n_0@4@01 $Ref)
(declare-const _current_wait_level_157@5@01 $Perm)
(declare-const _cthread_157@6@01 $Ref)
(declare-const _caller_measures_157@7@01 Seq<Measure$>)
(declare-const _residue_157@8@01 $Perm)
(declare-const self_0@9@01 $Ref)
(declare-const n_0@10@01 $Ref)
(declare-const _current_wait_level_157@11@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] _cthread_157 != null
(assert (not (= _cthread_157@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_157), Thread_0())
; [eval] typeof(_cthread_157)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_157@6@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] self_0 != null
(assert (not (= self_0@9@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(self_0), Cell())
; [eval] typeof(self_0)
; [eval] Cell()
(assert (issubtype<Bool> (typeof<PyType> self_0@9@01) (as Cell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(n_0), object())
; [eval] typeof(n_0)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> n_0@10@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  $Snap.unit))
; [eval] self_0 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
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
; [eval] (forperm _r: Ref [_r.MustReleaseBounded] :: Level(_r) <= _current_wait_level_157)
(assert (=
  ($Snap.second $t@13@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@01))
    ($Snap.second ($Snap.second $t@13@01)))))
(assert (= ($Snap.first ($Snap.second $t@13@01)) $Snap.unit))
; [eval] (forperm _r: Ref [_r.MustReleaseUnbounded] :: Level(_r) <= _current_wait_level_157)
(assert (=
  ($Snap.second ($Snap.second $t@13@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@13@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@13@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@13@01))) $Snap.unit))
; [eval] _residue_157 <= _current_wait_level_157
(assert (<= _residue_157@8@01 _current_wait_level_157@11@01))
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
; [eval] Cell_get_contents(self_0) == n_0
; [eval] Cell_get_contents(self_0)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))) self_0@9@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))) self_0@9@01))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))) self_0@9@01)
  n_0@10@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@13@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@14@01 $Ref)
; [exec]
; var self_8: Ref
(declare-const self_8@15@01 $Ref)
; [exec]
; var n_4: Ref
(declare-const n_4@16@01 $Ref)
; [exec]
; var _cwl_157: Perm
(declare-const _cwl_157@17@01 $Perm)
; [exec]
; var _method_measures_157: Seq[Measure$]
(declare-const _method_measures_157@18@01 Seq<Measure$>)
; [exec]
; _method_measures_157 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_0) == Cell()
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] typeof(self_0) == Cell()
; [eval] typeof(self_0)
; [eval] Cell()
(assert (= (typeof<PyType> self_0@9@01) (as Cell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_8 := self_0
; [exec]
; n_4 := n_0
; [eval] perm(_MaySet(self_8, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_8, 2129765320893928334659))
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
; exhale acc(_MaySet(self_8, 2129765320893928334659), write)
; [exec]
; inhale acc(self_8.Cell_cnts, write)
(declare-const $t@20@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_8.Cell_cnts := n_4
; [exec]
; fold acc(Cell_val(self_8), write)
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_0@9@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | issubtype[Bool](typeof[PyType](self_0@9@01), Cell[PyType]) | live]
; [else-branch: 1 | !(issubtype[Bool](typeof[PyType](self_0@9@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | issubtype[Bool](typeof[PyType](self_0@9@01), Cell[PyType])]
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 5
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_0@9@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | issubtype[Bool](typeof[PyType](self_0@9@01), ReCell[PyType]) | dead]
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](self_0@9@01), ReCell[PyType])) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 2 | !(issubtype[Bool](typeof[PyType](self_0@9@01), ReCell[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> self_0@9@01) (as ReCell<PyType>  PyType))))
(assert (Cell_val%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.combine ($SortWrappers.$RefTo$Snap n_0@10@01) $Snap.unit)
      $Snap.unit))) self_0@9@01))
; [exec]
; label __end
; [eval] Cell_get_contents(self_0) == n_0
; [eval] Cell_get_contents(self_0)
(push) ; 6
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_0@10@01) $Snap.unit)
          $Snap.unit))))) self_0@9@01))
(pop) ; 6
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_0@10@01) $Snap.unit)
          $Snap.unit))))) self_0@9@01))
(push) ; 6
(assert (not (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_0@10@01) $Snap.unit)
            $Snap.unit))))) self_0@9@01)
  n_0@10@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_0@10@01) $Snap.unit)
            $Snap.unit))))) self_0@9@01)
  n_0@10@01))
; [eval] (forperm _r_0: Ref [MustInvokeBounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [MustInvokeUnbounded(_r_0)] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseBounded] :: false)
; [eval] (forperm _r_0: Ref [_r_0.MustReleaseUnbounded] :: false)
(pop) ; 5
(pop) ; 4
(pop) ; 3
; [eval] !(perm(_MaySet(self_8, 2129765320893928334659)) > none)
; [eval] perm(_MaySet(self_8, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_8, 2129765320893928334659))
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 3
; [else-branch: 3 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Cell_set ----------
(declare-const _cthread_158@21@01 $Ref)
(declare-const _caller_measures_158@22@01 Seq<Measure$>)
(declare-const _residue_158@23@01 $Perm)
(declare-const self_1@24@01 $Ref)
(declare-const n_1@25@01 $Ref)
(declare-const _current_wait_level_158@26@01 $Perm)
(declare-const _cthread_158@27@01 $Ref)
(declare-const _caller_measures_158@28@01 Seq<Measure$>)
(declare-const _residue_158@29@01 $Perm)
(declare-const self_1@30@01 $Ref)
(declare-const n_1@31@01 $Ref)
(declare-const _current_wait_level_158@32@01 $Perm)
(push) ; 1
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(assert (= ($Snap.first $t@33@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@27@01 $Ref.null)))
(assert (=
  ($Snap.second $t@33@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@33@01))
    ($Snap.second ($Snap.second $t@33@01)))))
(assert (= ($Snap.first ($Snap.second $t@33@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@27@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@33@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@33@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@33@01))) $Snap.unit))
; [eval] issubtype(typeof(self_1), Cell())
; [eval] typeof(self_1)
; [eval] Cell()
(assert (issubtype<Bool> (typeof<PyType> self_1@30@01) (as Cell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@33@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
  $Snap.unit))
; [eval] issubtype(typeof(n_1), object())
; [eval] typeof(n_1)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> n_1@31@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
  $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@30@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseBounded] :: Level(_r_2) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(assert (= ($Snap.first ($Snap.second $t@34@01)) $Snap.unit))
; [eval] (forperm _r_2: Ref [_r_2.MustReleaseUnbounded] :: Level(_r_2) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@34@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@34@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@34@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@34@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@29@01 _current_wait_level_158@32@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@34@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))
  $Snap.unit))
; [eval] Cell_get_contents(self_1) == n_1
; [eval] Cell_get_contents(self_1)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))) self_1@30@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))) self_1@30@01))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))) self_1@30@01)
  n_1@31@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@35@01 $Ref)
; [exec]
; var self_9: Ref
(declare-const self_9@36@01 $Ref)
; [exec]
; var n_5: Ref
(declare-const n_5@37@01 $Ref)
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
; inhale typeof(self_1) == Cell()
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 $Snap.unit))
; [eval] typeof(self_1) == Cell()
; [eval] typeof(self_1)
; [eval] Cell()
(assert (= (typeof<PyType> self_1@30@01) (as Cell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_9 := self_1
; [exec]
; n_5 := n_1
; [exec]
; unfold acc(Cell_val(self_9), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))))))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_1@30@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType]) | live]
; [else-branch: 4 | !(issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 4 | issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType])]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))))) (as object<PyType>  PyType)))
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 4
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_1@30@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType]) | dead]
; [else-branch: 5 | !(issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType])) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 5 | !(issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType]))]
(assert (not (issubtype<Bool> (typeof<PyType> self_1@30@01) (as ReCell<PyType>  PyType))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))))))
  $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (Cell_val%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@33@01)))))) self_1@30@01))
; [eval] perm(_MaySet(self_9, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_9, 2129765320893928334659))
; [then-branch: 6 | False | dead]
; [else-branch: 6 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 6 | True]
(pop) ; 5
; [eval] !(perm(_MaySet(self_9, 2129765320893928334659)) > none)
; [eval] perm(_MaySet(self_9, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_9, 2129765320893928334659))
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | True | live]
; [else-branch: 7 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 7 | True]
; [exec]
; self_9.Cell_cnts := n_5
; [exec]
; fold acc(Cell_val(self_9), write)
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(push) ; 6
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_1@30@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType]) | live]
; [else-branch: 8 | !(issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 8 | issubtype[Bool](typeof[PyType](self_1@30@01), Cell[PyType])]
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
; [then-branch: 9 | issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType]) | dead]
; [else-branch: 9 | !(issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType])) | live]
(push) ; 7
; [else-branch: 9 | !(issubtype[Bool](typeof[PyType](self_1@30@01), ReCell[PyType]))]
(assert (Cell_val%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.combine ($SortWrappers.$RefTo$Snap n_1@31@01) $Snap.unit)
      $Snap.unit))) self_1@30@01))
; [exec]
; label __end
; [eval] Cell_get_contents(self_1) == n_1
; [eval] Cell_get_contents(self_1)
(push) ; 8
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_1@31@01) $Snap.unit)
          $Snap.unit))))) self_1@30@01))
(pop) ; 8
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_1@31@01) $Snap.unit)
          $Snap.unit))))) self_1@30@01))
(push) ; 8
(assert (not (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_1@31@01) $Snap.unit)
            $Snap.unit))))) self_1@30@01)
  n_1@31@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_1@31@01) $Snap.unit)
            $Snap.unit))))) self_1@30@01)
  n_1@31@01))
; [eval] (forperm _r_3: Ref [MustInvokeBounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [MustInvokeUnbounded(_r_3)] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseBounded] :: false)
; [eval] (forperm _r_3: Ref [_r_3.MustReleaseUnbounded] :: false)
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- ReCell___init__ ----------
(declare-const _cthread_161@41@01 $Ref)
(declare-const _caller_measures_161@42@01 Seq<Measure$>)
(declare-const _residue_161@43@01 $Perm)
(declare-const self_4@44@01 $Ref)
(declare-const n_2@45@01 $Ref)
(declare-const _current_wait_level_161@46@01 $Perm)
(declare-const _cthread_161@47@01 $Ref)
(declare-const _caller_measures_161@48@01 Seq<Measure$>)
(declare-const _residue_161@49@01 $Perm)
(declare-const self_4@50@01 $Ref)
(declare-const n_2@51@01 $Ref)
(declare-const _current_wait_level_161@52@01 $Perm)
(push) ; 1
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(assert (= ($Snap.first $t@53@01) $Snap.unit))
; [eval] _cthread_161 != null
(assert (not (= _cthread_161@47@01 $Ref.null)))
(assert (=
  ($Snap.second $t@53@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@01))
    ($Snap.second ($Snap.second $t@53@01)))))
(assert (= ($Snap.first ($Snap.second $t@53@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_161), Thread_0())
; [eval] typeof(_cthread_161)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_161@47@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@53@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@53@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@53@01))) $Snap.unit))
; [eval] self_4 != null
(assert (not (= self_4@50@01 $Ref.null)))
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
(push) ; 2
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_4), ReCell())
; [eval] typeof(self_4)
; [eval] ReCell()
(assert (issubtype<Bool> (typeof<PyType> self_4@50@01) (as ReCell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(n_2), object())
; [eval] typeof(n_2)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> n_2@51@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))))
  $Snap.unit))
; [eval] self_4 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@53@01))))))))
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
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseBounded] :: Level(_r_5) <= _current_wait_level_161)
(assert (=
  ($Snap.second $t@54@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@54@01))
    ($Snap.second ($Snap.second $t@54@01)))))
(assert (= ($Snap.first ($Snap.second $t@54@01)) $Snap.unit))
; [eval] (forperm _r_5: Ref [_r_5.MustReleaseUnbounded] :: Level(_r_5) <= _current_wait_level_161)
(assert (=
  ($Snap.second ($Snap.second $t@54@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@54@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@54@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@54@01))) $Snap.unit))
; [eval] _residue_161 <= _current_wait_level_161
(assert (<= _residue_161@49@01 _current_wait_level_161@52@01))
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
; [eval] Cell_get_contents(self_4) == n_2
; [eval] Cell_get_contents(self_4)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType)))
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) self_4@50@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType))
  (Cell_get_contents%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) self_4@50@01)))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))) self_4@50@01)
  n_2@51@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@54@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@55@01 $Ref)
; [exec]
; var self_10: Ref
(declare-const self_10@56@01 $Ref)
; [exec]
; var n_6: Ref
(declare-const n_6@57@01 $Ref)
; [exec]
; var arg: Ref
(declare-const arg@58@01 $Ref)
; [exec]
; var arg_13: Ref
(declare-const arg_13@59@01 $Ref)
; [exec]
; var error: Ref
(declare-const error@60@01 $Ref)
; [exec]
; var self_8_0: Ref
(declare-const self_8_0@61@01 $Ref)
; [exec]
; var n_4_0: Ref
(declare-const n_4_0@62@01 $Ref)
; [exec]
; var _cwl_161: Perm
(declare-const _cwl_161@63@01 $Perm)
; [exec]
; var _method_measures_161: Seq[Measure$]
(declare-const _method_measures_161@64@01 Seq<Measure$>)
; [exec]
; _method_measures_161 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_4) == ReCell()
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; [eval] typeof(self_4) == ReCell()
; [eval] typeof(self_4)
; [eval] ReCell()
(assert (= (typeof<PyType> self_4@50@01) (as ReCell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_10 := self_4
; [exec]
; n_6 := n_2
; [eval] perm(_MaySet(self_10, 507089636345753180005714)) > none
; [eval] perm(_MaySet(self_10, 507089636345753180005714))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | True | live]
; [else-branch: 10 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 10 | True]
; [exec]
; exhale acc(_MaySet(self_10, 507089636345753180005714), write)
; [exec]
; inhale acc(self_10.ReCell_bak, write)
(declare-const $t@66@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; self_10.ReCell_bak := null
; [exec]
; arg := self_4
; [exec]
; arg_13 := n_6
; [eval] perm(_MaySet(arg, 2129765320893928334659)) > none
; [eval] perm(_MaySet(arg, 2129765320893928334659))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | True | live]
; [else-branch: 11 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | True]
; [exec]
; exhale acc(_MaySet(arg, 2129765320893928334659), write)
; [exec]
; inhale acc(arg.Cell_cnts, write)
(declare-const $t@67@01 $Ref)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; arg.Cell_cnts := arg_13
; [exec]
; label __end_0
; [exec]
; fold acc(Cell_val(self_10), write)
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(set-option :timeout 0)
(push) ; 5
(assert (not (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType)))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(push) ; 5
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_4@50@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | issubtype[Bool](typeof[PyType](self_4@50@01), Cell[PyType]) | live]
; [else-branch: 12 | !(issubtype[Bool](typeof[PyType](self_4@50@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 12 | issubtype[Bool](typeof[PyType](self_4@50@01), Cell[PyType])]
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 6
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_4@50@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | issubtype[Bool](typeof[PyType](self_4@50@01), ReCell[PyType]) | live]
; [else-branch: 13 | !(issubtype[Bool](typeof[PyType](self_4@50@01), ReCell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 13 | issubtype[Bool](typeof[PyType](self_4@50@01), ReCell[PyType])]
; [eval] issubtype(typeof(self_2.ReCell_bak), object())
; [eval] typeof(self_2.ReCell_bak)
; [eval] object()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> $Ref.null) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> $Ref.null) (as object<PyType>  PyType)))
(assert (Cell_val%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.combine ($SortWrappers.$RefTo$Snap n_2@51@01) $Snap.unit)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) self_4@50@01))
; [exec]
; label __end
; [eval] Cell_get_contents(self_4) == n_2
; [eval] Cell_get_contents(self_4)
(push) ; 7
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_2@51@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))) self_4@50@01))
(pop) ; 7
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_2@51@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))) self_4@50@01))
(push) ; 7
(assert (not (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_2@51@01) $Snap.unit)
            ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))) self_4@50@01)
  n_2@51@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_2@51@01) $Snap.unit)
            ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))) self_4@50@01)
  n_2@51@01))
; [eval] (forperm _r_6: Ref [MustInvokeBounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [MustInvokeUnbounded(_r_6)] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseBounded] :: false)
; [eval] (forperm _r_6: Ref [_r_6.MustReleaseUnbounded] :: false)
(pop) ; 6
(pop) ; 5
(pop) ; 4
; [eval] !(perm(_MaySet(arg, 2129765320893928334659)) > none)
; [eval] perm(_MaySet(arg, 2129765320893928334659)) > none
; [eval] perm(_MaySet(arg, 2129765320893928334659))
; [then-branch: 14 | False | dead]
; [else-branch: 14 | True | live]
(push) ; 4
; [else-branch: 14 | True]
(pop) ; 4
(pop) ; 3
; [eval] !(perm(_MaySet(self_10, 507089636345753180005714)) > none)
; [eval] perm(_MaySet(self_10, 507089636345753180005714)) > none
; [eval] perm(_MaySet(self_10, 507089636345753180005714))
; [then-branch: 15 | False | dead]
; [else-branch: 15 | True | live]
(push) ; 3
; [else-branch: 15 | True]
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- ReCell_set ----------
(declare-const _cthread_162@68@01 $Ref)
(declare-const _caller_measures_162@69@01 Seq<Measure$>)
(declare-const _residue_162@70@01 $Perm)
(declare-const self_5@71@01 $Ref)
(declare-const n_3@72@01 $Ref)
(declare-const _current_wait_level_162@73@01 $Perm)
(declare-const _cthread_162@74@01 $Ref)
(declare-const _caller_measures_162@75@01 Seq<Measure$>)
(declare-const _residue_162@76@01 $Perm)
(declare-const self_5@77@01 $Ref)
(declare-const n_3@78@01 $Ref)
(declare-const _current_wait_level_162@79@01 $Perm)
(push) ; 1
(declare-const $t@80@01 $Snap)
(assert (= $t@80@01 ($Snap.combine ($Snap.first $t@80@01) ($Snap.second $t@80@01))))
(assert (= ($Snap.first $t@80@01) $Snap.unit))
; [eval] _cthread_162 != null
(assert (not (= _cthread_162@74@01 $Ref.null)))
(assert (=
  ($Snap.second $t@80@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@80@01))
    ($Snap.second ($Snap.second $t@80@01)))))
(assert (= ($Snap.first ($Snap.second $t@80@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_162@74@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@80@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@80@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@80@01))) $Snap.unit))
; [eval] issubtype(typeof(self_5), ReCell())
; [eval] typeof(self_5)
; [eval] ReCell()
(assert (issubtype<Bool> (typeof<PyType> self_5@77@01) (as ReCell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@80@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@80@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@80@01))))
  $Snap.unit))
; [eval] issubtype(typeof(n_3), object())
; [eval] typeof(n_3)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> n_3@78@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))
  $Snap.unit))
; [eval] self_5 != null
(assert (not (= self_5@77@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(assert (= ($Snap.first $t@81@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@81@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@81@01))
    ($Snap.second ($Snap.second $t@81@01)))))
(assert (= ($Snap.first ($Snap.second $t@81@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@81@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@81@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@81@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_162@76@01 _current_wait_level_162@79@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@81@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
  $Snap.unit))
; [eval] Cell_get_contents(self_5) == n_3
; [eval] Cell_get_contents(self_5)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType)))
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType))
  (Cell_get_contents%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01)))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01)
  n_3@78@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
  $Snap.unit))
; [eval] ReCell_get_last(self_5) == old(Cell_get_contents(self_5))
; [eval] ReCell_get_last(self_5)
(push) ; 3
; [eval] issubtype(typeof(self_3), ReCell())
; [eval] typeof(self_3)
; [eval] ReCell()
; [eval] self_3 != null
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01))
(pop) ; 3
; Joined path conditions
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01))
; [eval] old(Cell_get_contents(self_5))
; [eval] Cell_get_contents(self_5)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01))
(assert (=
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@01)))))) self_5@77@01)
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@01))))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@82@01 $Ref)
; [exec]
; var self_11: Ref
(declare-const self_11@83@01 $Ref)
; [exec]
; var n_7: Ref
(declare-const n_7@84@01 $Ref)
; [exec]
; var _cwl_162: Perm
(declare-const _cwl_162@85@01 $Perm)
; [exec]
; var _method_measures_162: Seq[Measure$]
(declare-const _method_measures_162@86@01 Seq<Measure$>)
; [exec]
; _method_measures_162 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_5) == ReCell()
(declare-const $t@87@01 $Snap)
(assert (= $t@87@01 $Snap.unit))
; [eval] typeof(self_5) == ReCell()
; [eval] typeof(self_5)
; [eval] ReCell()
(assert (= (typeof<PyType> self_5@77@01) (as ReCell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_11 := self_5
; [exec]
; n_7 := n_3
; [exec]
; unfold acc(Cell_val(self_11), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(assert (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType]) | live]
; [else-branch: 16 | !(issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 16 | issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType])]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))) (as object<PyType>  PyType)))
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 4
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_5@77@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType]) | live]
; [else-branch: 17 | !(issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType])]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01))))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.ReCell_bak), object())
; [eval] typeof(self_2.ReCell_bak)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))) (as object<PyType>  PyType)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (Cell_val%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))) self_5@77@01))
; [eval] perm(_MaySet(self_11, 507089636345753180005714)) > none
; [eval] perm(_MaySet(self_11, 507089636345753180005714))
; [then-branch: 18 | False | dead]
; [else-branch: 18 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 18 | True]
(pop) ; 5
; [eval] !(perm(_MaySet(self_11, 507089636345753180005714)) > none)
; [eval] perm(_MaySet(self_11, 507089636345753180005714)) > none
; [eval] perm(_MaySet(self_11, 507089636345753180005714))
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | True | live]
; [else-branch: 19 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 19 | True]
; [exec]
; self_11.ReCell_bak := self_11.Cell_cnts
(declare-const ReCell_bak@88@01 $Ref)
(assert (=
  ReCell_bak@88@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))))))))
; [eval] perm(_MaySet(self_11, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_11, 2129765320893928334659))
; [then-branch: 20 | False | dead]
; [else-branch: 20 | True | live]
(push) ; 6
; [else-branch: 20 | True]
(pop) ; 6
; [eval] !(perm(_MaySet(self_11, 2129765320893928334659)) > none)
; [eval] perm(_MaySet(self_11, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_11, 2129765320893928334659))
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | True | live]
; [else-branch: 21 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 21 | True]
; [exec]
; self_11.Cell_cnts := n_7
; [exec]
; fold acc(Cell_val(self_11), write)
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(push) ; 7
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_5@77@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType]) | live]
; [else-branch: 22 | !(issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 22 | issubtype[Bool](typeof[PyType](self_5@77@01), Cell[PyType])]
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 8
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_5@77@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType]) | live]
; [else-branch: 23 | !(issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 23 | issubtype[Bool](typeof[PyType](self_5@77@01), ReCell[PyType])]
; [eval] issubtype(typeof(self_2.ReCell_bak), object())
; [eval] typeof(self_2.ReCell_bak)
; [eval] object()
(push) ; 9
(assert (not (issubtype<Bool> (typeof<PyType> ReCell_bak@88@01) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> ReCell_bak@88@01) (as object<PyType>  PyType)))
(assert (Cell_val%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
      ($Snap.combine ($SortWrappers.$RefTo$Snap ReCell_bak@88@01) $Snap.unit)))) self_5@77@01))
; [exec]
; label __end
; [eval] Cell_get_contents(self_5) == n_3
; [eval] Cell_get_contents(self_5)
(push) ; 9
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap ReCell_bak@88@01) $Snap.unit)))))) self_5@77@01))
(pop) ; 9
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap ReCell_bak@88@01) $Snap.unit)))))) self_5@77@01))
(push) ; 9
(assert (not (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ReCell_bak@88@01)
              $Snap.unit)))))) self_5@77@01)
  n_3@78@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ReCell_bak@88@01)
              $Snap.unit)))))) self_5@77@01)
  n_3@78@01))
; [eval] ReCell_get_last(self_5) == old(Cell_get_contents(self_5))
; [eval] ReCell_get_last(self_5)
(push) ; 9
; [eval] issubtype(typeof(self_3), ReCell())
; [eval] typeof(self_3)
; [eval] ReCell()
; [eval] self_3 != null
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap ReCell_bak@88@01) $Snap.unit)))))) self_5@77@01))
(pop) ; 9
; Joined path conditions
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
          ($Snap.combine ($SortWrappers.$RefTo$Snap ReCell_bak@88@01) $Snap.unit)))))) self_5@77@01))
; [eval] old(Cell_get_contents(self_5))
; [eval] Cell_get_contents(self_5)
(push) ; 9
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01))
(pop) ; 9
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01))
(push) ; 9
(assert (not (=
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ReCell_bak@88@01)
              $Snap.unit)))))) self_5@77@01)
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (=
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine ($SortWrappers.$RefTo$Snap n_3@78@01) $Snap.unit)
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ReCell_bak@88@01)
              $Snap.unit)))))) self_5@77@01)
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@80@01)))))))) self_5@77@01)))
; [eval] (forperm _r_9: Ref [MustInvokeBounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [MustInvokeUnbounded(_r_9)] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseBounded] :: false)
; [eval] (forperm _r_9: Ref [_r_9.MustReleaseUnbounded] :: false)
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- ReCell_set_override_check ----------
(declare-const _cthread_158@89@01 $Ref)
(declare-const _caller_measures_158@90@01 Seq<Measure$>)
(declare-const _residue_158@91@01 $Perm)
(declare-const self_1@92@01 $Ref)
(declare-const n_1@93@01 $Ref)
(declare-const _current_wait_level_158@94@01 $Perm)
(declare-const _cthread_158@95@01 $Ref)
(declare-const _caller_measures_158@96@01 Seq<Measure$>)
(declare-const _residue_158@97@01 $Perm)
(declare-const self_1@98@01 $Ref)
(declare-const n_1@99@01 $Ref)
(declare-const _current_wait_level_158@100@01 $Perm)
(push) ; 1
(declare-const $t@101@01 $Snap)
(assert (= $t@101@01 ($Snap.combine ($Snap.first $t@101@01) ($Snap.second $t@101@01))))
(assert (= ($Snap.first $t@101@01) $Snap.unit))
; [eval] _cthread_158 != null
(assert (not (= _cthread_158@95@01 $Ref.null)))
(assert (=
  ($Snap.second $t@101@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@101@01))
    ($Snap.second ($Snap.second $t@101@01)))))
(assert (= ($Snap.first ($Snap.second $t@101@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_158), Thread_0())
; [eval] typeof(_cthread_158)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_158@95@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@101@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@101@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@101@01))) $Snap.unit))
; [eval] self_1 != null
(assert (not (= self_1@98@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@101@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@101@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@101@01))))
  $Snap.unit))
; [eval] issubtype(typeof(self_1), Cell())
; [eval] typeof(self_1)
; [eval] Cell()
(assert (issubtype<Bool> (typeof<PyType> self_1@98@01) (as Cell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))
  $Snap.unit))
; [eval] issubtype(typeof(n_1), object())
; [eval] typeof(n_1)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> n_1@99@01) (as object<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))
  $Snap.unit))
; [eval] self_1 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01)))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@102@01 $Snap)
(assert (= $t@102@01 ($Snap.combine ($Snap.first $t@102@01) ($Snap.second $t@102@01))))
(assert (= ($Snap.first $t@102@01) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseBounded] :: Level(_r_11) <= _current_wait_level_158)
(assert (=
  ($Snap.second $t@102@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@102@01))
    ($Snap.second ($Snap.second $t@102@01)))))
(assert (= ($Snap.first ($Snap.second $t@102@01)) $Snap.unit))
; [eval] (forperm _r_11: Ref [_r_11.MustReleaseUnbounded] :: Level(_r_11) <= _current_wait_level_158)
(assert (=
  ($Snap.second ($Snap.second $t@102@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@102@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@102@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@102@01))) $Snap.unit))
; [eval] _residue_158 <= _current_wait_level_158
(assert (<= _residue_158@97@01 _current_wait_level_158@100@01))
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
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
  $Snap.unit))
; [eval] Cell_get_contents(self_1) == n_1
; [eval] Cell_get_contents(self_1)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) self_1@98@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) self_1@98@01))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))) self_1@98@01)
  n_1@99@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@102@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _cwl_158: Perm
(declare-const _cwl_158@103@01 $Perm)
; [exec]
; var _method_measures_158: Seq[Measure$]
(declare-const _method_measures_158@104@01 Seq<Measure$>)
; [exec]
; _method_measures_158 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale issubtype(typeof(self_1), ReCell())
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 $Snap.unit))
; [eval] issubtype(typeof(self_1), ReCell())
; [eval] typeof(self_1)
; [eval] ReCell()
(assert (issubtype<Bool> (typeof<PyType> self_1@98@01) (as ReCell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _cwl_158 := ReCell_set(_cthread_158, _method_measures_158, _residue_158, self_1,
;   n_1)
; [eval] _cthread_162 != null
; [eval] issubtype(typeof(_cthread_162), Thread_0())
; [eval] typeof(_cthread_162)
; [eval] Thread_0()
; [eval] issubtype(typeof(self_5), ReCell())
; [eval] typeof(self_5)
; [eval] ReCell()
; [eval] issubtype(typeof(n_3), object())
; [eval] typeof(n_3)
; [eval] object()
; [eval] self_5 != null
; [eval] perm(MustTerminate(_cthread_162)) == none
; [eval] perm(MustTerminate(_cthread_162))
; [eval] (forperm _r_10: Ref [MustInvokeBounded(_r_10)] :: false)
; [eval] (forperm _r_10: Ref [MustInvokeUnbounded(_r_10)] :: false)
; [eval] (forperm _r_10: Ref [_r_10.MustReleaseBounded] :: false)
; [eval] (forperm _r_10: Ref [_r_10.MustReleaseUnbounded] :: false)
(declare-const _current_wait_level_162@106@01 $Perm)
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseBounded] :: Level(_r_8) <= _current_wait_level_162)
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] (forperm _r_8: Ref [_r_8.MustReleaseUnbounded] :: Level(_r_8) <= _current_wait_level_162)
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] _residue_162 <= _current_wait_level_162
(assert (<= _residue_158@97@01 _current_wait_level_162@106@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  $Snap.unit))
; [eval] Cell_get_contents(self_5) == n_3
; [eval] Cell_get_contents(self_5)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01)
  n_1@99@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
; [eval] ReCell_get_last(self_5) == old(Cell_get_contents(self_5))
; [eval] ReCell_get_last(self_5)
(push) ; 3
; [eval] issubtype(typeof(self_3), ReCell())
; [eval] typeof(self_3)
; [eval] ReCell()
; [eval] self_3 != null
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01))
(pop) ; 3
; Joined path conditions
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01))
; [eval] old(Cell_get_contents(self_5))
; [eval] Cell_get_contents(self_5)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))))) self_1@98@01))
(pop) ; 3
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))))) self_1@98@01))
(assert (=
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))) self_1@98@01)
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@101@01))))))))) self_1@98@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] Cell_get_contents(self_1) == n_1
; [eval] Cell_get_contents(self_1)
(set-option :timeout 0)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(pop) ; 3
; Joined path conditions
; [eval] (forperm _r_12: Ref [MustInvokeBounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [MustInvokeUnbounded(_r_12)] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseBounded] :: false)
; [eval] (forperm _r_12: Ref [_r_12.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
; ---------- ReCell_undo ----------
(declare-const _cthread_163@108@01 $Ref)
(declare-const _caller_measures_163@109@01 Seq<Measure$>)
(declare-const _residue_163@110@01 $Perm)
(declare-const self_6@111@01 $Ref)
(declare-const _current_wait_level_163@112@01 $Perm)
(declare-const _cthread_163@113@01 $Ref)
(declare-const _caller_measures_163@114@01 Seq<Measure$>)
(declare-const _residue_163@115@01 $Perm)
(declare-const self_6@116@01 $Ref)
(declare-const _current_wait_level_163@117@01 $Perm)
(push) ; 1
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] _cthread_163 != null
(assert (not (= _cthread_163@113@01 $Ref.null)))
(assert (=
  ($Snap.second $t@118@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@118@01))
    ($Snap.second ($Snap.second $t@118@01)))))
(assert (= ($Snap.first ($Snap.second $t@118@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_163), Thread_0())
; [eval] typeof(_cthread_163)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_163@113@01) (as Thread_0<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@118@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@118@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@118@01))) $Snap.unit))
; [eval] issubtype(typeof(self_6), ReCell())
; [eval] typeof(self_6)
; [eval] ReCell()
(assert (issubtype<Bool> (typeof<PyType> self_6@116@01) (as ReCell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@118@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@118@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@118@01))))
  $Snap.unit))
; [eval] self_6 != null
(assert (not (= self_6@116@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseBounded] :: Level(_r_14) <= _current_wait_level_163)
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
; [eval] (forperm _r_14: Ref [_r_14.MustReleaseUnbounded] :: Level(_r_14) <= _current_wait_level_163)
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@119@01))) $Snap.unit))
; [eval] _residue_163 <= _current_wait_level_163
(assert (<= _residue_163@115@01 _current_wait_level_163@117@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@119@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  $Snap.unit))
; [eval] Cell_get_contents(self_6) == old(ReCell_get_last(self_6))
; [eval] Cell_get_contents(self_6)
(push) ; 3
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
(push) ; 4
(assert (not (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType)))
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) self_6@116@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType))
  (Cell_get_contents%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) self_6@116@01)))
; [eval] old(ReCell_get_last(self_6))
; [eval] ReCell_get_last(self_6)
(push) ; 3
; [eval] issubtype(typeof(self_3), ReCell())
; [eval] typeof(self_3)
; [eval] ReCell()
; [eval] self_3 != null
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01))
(pop) ; 3
; Joined path conditions
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01))
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) self_6@116@01)
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var _err: Ref
(declare-const _err@120@01 $Ref)
; [exec]
; var self_12: Ref
(declare-const self_12@121@01 $Ref)
; [exec]
; var _cwl_163: Perm
(declare-const _cwl_163@122@01 $Perm)
; [exec]
; var _method_measures_163: Seq[Measure$]
(declare-const _method_measures_163@123@01 Seq<Measure$>)
; [exec]
; _method_measures_163 := Seq[Measure$]()
; [eval] Seq[Measure$]()
; [exec]
; inhale typeof(self_6) == ReCell()
(declare-const $t@124@01 $Snap)
(assert (= $t@124@01 $Snap.unit))
; [eval] typeof(self_6) == ReCell()
; [eval] typeof(self_6)
; [eval] ReCell()
(assert (= (typeof<PyType> self_6@116@01) (as ReCell<PyType>  PyType)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; _err := null
; [exec]
; self_12 := self_6
; [exec]
; unfold acc(Cell_val(self_12), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(assert (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))))
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType]) | live]
; [else-branch: 24 | !(issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 24 | issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType])]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))) (as object<PyType>  PyType)))
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_6@116@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType]) | live]
; [else-branch: 25 | !(issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType])]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
  $Snap.unit))
; [eval] issubtype(typeof(self_2.ReCell_bak), object())
; [eval] typeof(self_2.ReCell_bak)
; [eval] object()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))) (as object<PyType>  PyType)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (Cell_val%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))) self_6@116@01))
; [eval] perm(_MaySet(self_12, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_12, 2129765320893928334659))
; [then-branch: 26 | False | dead]
; [else-branch: 26 | True | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 26 | True]
(pop) ; 5
; [eval] !(perm(_MaySet(self_12, 2129765320893928334659)) > none)
; [eval] perm(_MaySet(self_12, 2129765320893928334659)) > none
; [eval] perm(_MaySet(self_12, 2129765320893928334659))
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | True | live]
; [else-branch: 27 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 27 | True]
; [exec]
; self_12.Cell_cnts := self_12.ReCell_bak
(declare-const Cell_cnts@125@01 $Ref)
(assert (=
  Cell_cnts@125@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))))
; [exec]
; fold acc(Cell_val(self_12), write)
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
; [eval] issubtype(typeof(self_2), Cell())
; [eval] typeof(self_2)
; [eval] Cell()
(push) ; 6
(set-option :timeout 10)
(assert (not (not (issubtype<Bool> (typeof<PyType> self_6@116@01) (as Cell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType]) | live]
; [else-branch: 28 | !(issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 28 | issubtype[Bool](typeof[PyType](self_6@116@01), Cell[PyType])]
; [eval] issubtype(typeof(self_2.Cell_cnts), object())
; [eval] typeof(self_2.Cell_cnts)
; [eval] object()
(push) ; 7
(assert (not (issubtype<Bool> (typeof<PyType> Cell_cnts@125@01) (as object<PyType>  PyType))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (issubtype<Bool> (typeof<PyType> Cell_cnts@125@01) (as object<PyType>  PyType)))
; [eval] issubtype(typeof(self_2), ReCell())
; [eval] typeof(self_2)
; [eval] ReCell()
(push) ; 7
(set-option :timeout 10)
(assert (not (not
  (issubtype<Bool> (typeof<PyType> self_6@116@01) (as ReCell<PyType>  PyType)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType]) | live]
; [else-branch: 29 | !(issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType])) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 29 | issubtype[Bool](typeof[PyType](self_6@116@01), ReCell[PyType])]
; [eval] issubtype(typeof(self_2.ReCell_bak), object())
; [eval] typeof(self_2.ReCell_bak)
; [eval] object()
(assert (Cell_val%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.combine ($SortWrappers.$RefTo$Snap Cell_cnts@125@01) $Snap.unit)
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
        $Snap.unit)))) self_6@116@01))
; [exec]
; label __end
; [eval] Cell_get_contents(self_6) == old(ReCell_get_last(self_6))
; [eval] Cell_get_contents(self_6)
(push) ; 8
; [eval] issubtype(typeof(self), Cell())
; [eval] typeof(self)
; [eval] Cell()
; [eval] self != null
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap Cell_cnts@125@01) $Snap.unit)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
            $Snap.unit)))))) self_6@116@01))
(pop) ; 8
; Joined path conditions
(assert (Cell_get_contents%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.combine ($SortWrappers.$RefTo$Snap Cell_cnts@125@01) $Snap.unit)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
            $Snap.unit)))))) self_6@116@01))
; [eval] old(ReCell_get_last(self_6))
; [eval] ReCell_get_last(self_6)
(push) ; 8
; [eval] issubtype(typeof(self_3), ReCell())
; [eval] typeof(self_3)
; [eval] ReCell()
; [eval] self_3 != null
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01))
(pop) ; 8
; Joined path conditions
(assert (ReCell_get_last%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01))
(push) ; 8
(assert (not (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap Cell_cnts@125@01)
              $Snap.unit)
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
              $Snap.unit)))))) self_6@116@01)
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  (Cell_get_contents ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap Cell_cnts@125@01)
              $Snap.unit)
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
              $Snap.unit)))))) self_6@116@01)
  (ReCell_get_last ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))) self_6@116@01)))
; [eval] (forperm _r_15: Ref [MustInvokeBounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [MustInvokeUnbounded(_r_15)] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseBounded] :: false)
; [eval] (forperm _r_15: Ref [_r_15.MustReleaseUnbounded] :: false)
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- main ----------
(declare-const _cthread_165@126@01 $Ref)
(declare-const _caller_measures_165@127@01 Seq<Measure$>)
(declare-const _residue_165@128@01 $Perm)
(declare-const _current_wait_level_165@129@01 $Perm)
(declare-const _cthread_165@130@01 $Ref)
(declare-const _caller_measures_165@131@01 Seq<Measure$>)
(declare-const _residue_165@132@01 $Perm)
(declare-const _current_wait_level_165@133@01 $Perm)
(push) ; 1
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] _cthread_165 != null
(assert (not (= _cthread_165@130@01 $Ref.null)))
(assert (=
  ($Snap.second $t@134@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@134@01))
    ($Snap.second ($Snap.second $t@134@01)))))
(assert (= ($Snap.first ($Snap.second $t@134@01)) $Snap.unit))
; [eval] issubtype(typeof(_cthread_165), Thread_0())
; [eval] typeof(_cthread_165)
; [eval] Thread_0()
(assert (issubtype<Bool> (typeof<PyType> _cthread_165@130@01) (as Thread_0<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@134@01)) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@135@01 $Snap)
(assert (= $t@135@01 ($Snap.combine ($Snap.first $t@135@01) ($Snap.second $t@135@01))))
(assert (= ($Snap.first $t@135@01) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseBounded] :: Level(_r_17) <= _current_wait_level_165)
(assert (=
  ($Snap.second $t@135@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@135@01))
    ($Snap.second ($Snap.second $t@135@01)))))
(assert (= ($Snap.first ($Snap.second $t@135@01)) $Snap.unit))
; [eval] (forperm _r_17: Ref [_r_17.MustReleaseUnbounded] :: Level(_r_17) <= _current_wait_level_165)
(assert (=
  ($Snap.second ($Snap.second $t@135@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@135@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@135@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@135@01))) $Snap.unit))
; [eval] _residue_165 <= _current_wait_level_165
(assert (<= _residue_165@132@01 _current_wait_level_165@133@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@135@01))) $Snap.unit))
(pop) ; 2
(push) ; 2
; [exec]
; var module_defined_0: Bool
(declare-const module_defined_0@136@01 Bool)
; [exec]
; var module_names_0: Set[_Name]
(declare-const module_names_0@137@01 Set<_Name>)
; [exec]
; var _cwl_165: Perm
(declare-const _cwl_165@138@01 $Perm)
; [exec]
; var _method_measures_165: Seq[Measure$]
(declare-const _method_measures_165@139@01 Seq<Measure$>)
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
(declare-const module_names_0@140@01 Set<_Name>)
(assert (=
  module_names_0@140@01
  (Set_union (as Set_empty  Set<_Name>) (Set_singleton (_single<_Name> 6872323072689856351)))))
; [exec]
; inhale acc(__file__()._val, 99 / 100) &&
;   (issubtype(typeof(__file__()._val), str()) &&
;   issubtype(typeof(__file__()._val), str()))
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 ($Snap.combine ($Snap.first $t@141@01) ($Snap.second $t@141@01))))
; [eval] __file__()
(push) ; 3
(assert (__file__%precondition $Snap.unit))
(pop) ; 3
; Joined path conditions
(assert (__file__%precondition $Snap.unit))
(assert (not (= (__file__ $Snap.unit) $Ref.null)))
(assert (=
  ($Snap.second $t@141@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@141@01))
    ($Snap.second ($Snap.second $t@141@01)))))
(assert (= ($Snap.first ($Snap.second $t@141@01)) $Snap.unit))
; [eval] issubtype(typeof(__file__()._val), str())
; [eval] typeof(__file__()._val)
; [eval] __file__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@141@01))) (as str<PyType>  PyType)))
(assert (= ($Snap.second ($Snap.second $t@141@01)) $Snap.unit))
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
(declare-const module_names_0@142@01 Set<_Name>)
(assert (=
  module_names_0@142@01
  (Set_union module_names_0@140@01 (Set_singleton (_single<_Name> 6872323076851130207)))))
; [exec]
; inhale acc(__name__()._val, 99 / 100) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   (issubtype(typeof(__name__()._val), str()) &&
;   str___eq__(str___create__(8, 6872332955275845471), __name__()._val)))
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 ($Snap.combine ($Snap.first $t@143@01) ($Snap.second $t@143@01))))
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
  ($Snap.second $t@143@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@143@01))
    ($Snap.second ($Snap.second $t@143@01)))))
(assert (= ($Snap.first ($Snap.second $t@143@01)) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (issubtype<Bool> (typeof<PyType> ($SortWrappers.$SnapTo$Ref ($Snap.first $t@143@01))) (as str<PyType>  PyType)))
(assert (=
  ($Snap.second ($Snap.second $t@143@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@143@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@143@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@143@01))) $Snap.unit))
; [eval] issubtype(typeof(__name__()._val), str())
; [eval] typeof(__name__()._val)
; [eval] __name__()
(push) ; 3
(pop) ; 3
; Joined path conditions
; [eval] str()
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@143@01))) $Snap.unit))
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
(assert (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@143@01))))
(pop) ; 3
; Joined path conditions
(assert (and
  (issubtype<Bool> (typeof<PyType> (str___create__ $Snap.unit 8 6872332955275845471)) (as str<PyType>  PyType))
  (str___eq__%precondition $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@143@01)))))
(assert (str___eq__ $Snap.unit (str___create__ $Snap.unit 8 6872332955275845471) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@143@01))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@144@01 Set<_Name>)
(assert (=
  module_names_0@144@01
  (Set_union module_names_0@142@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union
;   Set(_single(35731532856354012621685679463)))
; [eval] (module_names_0 union Set(_single(35731532856354012621685679463)))
; [eval] Set(_single(35731532856354012621685679463))
; [eval] _single(35731532856354012621685679463)
(declare-const module_names_0@145@01 Set<_Name>)
(assert (=
  module_names_0@145@01
  (Set_union module_names_0@144@01 (Set_singleton (_single<_Name> 35731532856354012621685679463)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7628147)))
; [eval] (module_names_0 union Set(_single(7628147)))
; [eval] Set(_single(7628147))
; [eval] _single(7628147)
(declare-const module_names_0@146@01 Set<_Name>)
(assert (=
  module_names_0@146@01
  (Set_union module_names_0@145@01 (Set_singleton (_single<_Name> 7628147)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1819043139)))
; [eval] (module_names_0 union Set(_single(1819043139)))
; [eval] Set(_single(1819043139))
; [eval] _single(1819043139)
(declare-const module_names_0@147@01 Set<_Name>)
(assert (=
  module_names_0@147@01
  (Set_union module_names_0@146@01 (Set_singleton (_single<_Name> 1819043139)))))
; [exec]
; assert true && (_single(1819043139) in module_names_0)
; [eval] (_single(1819043139) in module_names_0)
; [eval] _single(1819043139)
(set-option :timeout 0)
(push) ; 3
(assert (not (Set_in (_single<_Name> 1819043139) module_names_0@147@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Set_in (_single<_Name> 1819043139) module_names_0@147@01))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(6872339552563453791)))
; [eval] (module_names_0 union Set(_single(6872339552563453791)))
; [eval] Set(_single(6872339552563453791))
; [eval] _single(6872339552563453791)
(declare-const module_names_0@148@01 Set<_Name>)
(assert (=
  module_names_0@148@01
  (Set_union module_names_0@147@01 (Set_singleton (_single<_Name> 6872339552563453791)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(8391157648807191911)))
; [eval] (module_names_0 union Set(_single(8391157648807191911)))
; [eval] Set(_single(8391157648807191911))
; [eval] _single(8391157648807191911)
(declare-const module_names_0@149@01 Set<_Name>)
(assert (=
  module_names_0@149@01
  (Set_union module_names_0@148@01 (Set_singleton (_single<_Name> 8391157648807191911)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(7628147)))
; [eval] (module_names_0 union Set(_single(7628147)))
; [eval] Set(_single(7628147))
; [eval] _single(7628147)
(declare-const module_names_0@150@01 Set<_Name>)
(assert (=
  module_names_0@150@01
  (Set_union module_names_0@149@01 (Set_singleton (_single<_Name> 7628147)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(1868852853)))
; [eval] (module_names_0 union Set(_single(1868852853)))
; [eval] Set(_single(1868852853))
; [eval] _single(1868852853)
(declare-const module_names_0@151@01 Set<_Name>)
(assert (=
  module_names_0@151@01
  (Set_union module_names_0@150@01 (Set_singleton (_single<_Name> 1868852853)))))
; [exec]
; module_names_0 := (module_names_0 union Set(_single(119212811183442)))
; [eval] (module_names_0 union Set(_single(119212811183442)))
; [eval] Set(_single(119212811183442))
; [eval] _single(119212811183442)
(declare-const module_names_0@152@01 Set<_Name>)
(assert (=
  module_names_0@152@01
  (Set_union module_names_0@151@01 (Set_singleton (_single<_Name> 119212811183442)))))
; [exec]
; label __end
; [eval] (forperm _r_18: Ref [MustInvokeBounded(_r_18)] :: false)
; [eval] (forperm _r_18: Ref [MustInvokeUnbounded(_r_18)] :: false)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseBounded] :: false)
; [eval] (forperm _r_18: Ref [_r_18.MustReleaseUnbounded] :: false)
(pop) ; 2
(pop) ; 1
